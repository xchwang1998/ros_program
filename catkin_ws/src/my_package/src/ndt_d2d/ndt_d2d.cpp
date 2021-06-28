#include <iostream>
#include "string.h"

#include "ros/ros.h"
#include <pcl/io/pcd_io.h> // 读取点云数据
#include <opencv2/opencv.hpp> // 画轨迹
#include "ndt_registration/ndt_matcher_d2d.h" // d2d方法
#include "ndt_registration/ndt_matcher_p2d.h" // p2d方法
#include "ndt_map/pointcloud_utils.h" // 建立ndt地图
#include <sys/time.h> // 时间

#include <pcl/registration/ndt.h> //pcl中配准

using namespace lslgeneric;
using namespace std;
using namespace cv;

typedef struct myPOINT_3D
{
	double x;  //mm world coordinate x
	double y;  //mm world coordinate y
	double z;  //mm world coordinate z
}POINT_WORLD;


int main(int argc, char **argv)
{
    ros::init(argc, argv, "ndt_d2d"); //初始化ros，并命令节点名，必须。
    ros::NodeHandle n; //初始化节点，调用ros api接口句柄，这里非必须
    // ROS_INFO("hello world"); //打印语句
    struct timeval tv_start, tv_end; // 定义时间
    double time_overall;

    //vector<cv::viz::WLine> lines; // 存放 轨迹线
    Point3d point_begin(0.0, 0.0, 0.0), point_end; // 线的起点和终点
    
    double __res[] = {1}; //0.5, 1, 2, 4
    // 变换数组_res为vector，__res为数组开始的地址，__res+sizeof(__res)/sizeof(double)为__res+4
    std::vector<double> resolutions (__res, __res+sizeof(__res)/sizeof(double)); // 初始化分辨率

    lslgeneric::NDTMatcherD2D matcherD2D (false,false,resolutions); // 初始化NDT变换

    vector<Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor>> T_d2d; // 存储变换参数
    Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> T; // 相邻点云变换参数
    
    vector<string> file_path;
    string folderPath = "/home/xiaochen/data/hesai_slam/pcd_data/"; // 找到文件夹路径
    string save_folderPath = "/home/xiaochen/data/hesai_slam/d2d_data/"; // 找到文件夹路径
    ofstream out_file("/home/xiaochen/data/hesai_slam/d2d_data/transform_d2d.txt"); // 保存变换矩阵路径
    ofstream out_file_traj("/home/xiaochen/data/hesai_slam/d2d_data/1300-1400_traj_d2d.txt"); // 保存轨迹点路径
    string tempath, save_tempath;
    int frameid = 1301;

    
    for (int i=1300; i<=1400; ++i)
    {
        tempath = folderPath + to_string(i) +".pcd";
        file_path.push_back(tempath); // 存储所有的点云文件
    }

    pcl::PointCloud<pcl::PointXYZ> cloud1,cloud2; // 定义参考和待配准点云
    pcl::PointCloud<pcl::PointXYZ> temp_traj; // 临时轨迹点
    temp_traj.width = 1; // 获取所有帧的个数，每一个帧一个位置file_path.size()
	temp_traj.height = 1;
	temp_traj.is_dense = false;
	temp_traj.points.resize(temp_traj.width * temp_traj.height); // 初始化
    temp_traj.points[0].x = 0; temp_traj.points[0].y = 0; temp_traj.points[0].z = 0; // 起始位置为(0, 0, 0)

    gettimeofday(&tv_start,NULL); //总体执行时间起点
    pcl::io::loadPCDFile<pcl::PointXYZ> (*(file_path.begin()), cloud1); // 读取第一帧点云，作为初始的参考点云
    // Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> Temp; // 存放变换矩阵的 逆
    
    out_file_traj << 0 << "," << 0 << "," << 0 << endl; // 初始化，第一帧的位置默认为(0,0,0)
    for (auto iter=file_path.begin(); (iter+1)!=file_path.end(); ++iter)
    {
        pcl::io::loadPCDFile<pcl::PointXYZ> (*(iter+1), cloud2);
        bool ret = matcherD2D.match(cloud1,cloud2,T); // 获取变换矩阵T
        lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T,cloud2); // 进行变换
        save_tempath = save_folderPath + to_string(frameid) + "_trans.pcd";
        pcl::io::savePCDFileASCII(save_tempath, cloud2); // 保存为pcd点云文件
        T_d2d.push_back(T); // 存储变换参数
        
        out_file << ("frame" + to_string(frameid-1) + "--" + to_string(frameid)) << endl; // 变换的两帧图像，写出id到文件
        out_file << T.matrix() << endl; // 写出变换矩阵到文件
        Eigen::Vector3d eulerAngle = T.rotation().eulerAngles(2, 1, 0); //Z Y X顺序变换 即yaw,pitch,roll
        
        out_file_traj << -T.translation()(0,0) << "," << -T.translation()(1,0) << "," << -T.translation()(2,0) << ",";
        out_file_traj << eulerAngle[2] << "," << eulerAngle[1] << "," << eulerAngle[0] << endl;
        // if (ret)// 如果匹配成功，则变换后的点云 作为 参考点云
        // {
        //     cloud1 = cloud2;
        // }
        cloud1 = cloud2; // 变换后的点云 作为 参考点云
        frameid++;
    }
    gettimeofday(&tv_end, NULL); //总体执行时间终点
    out_file.close(); // 关闭文件
    out_file_traj.close();

    time_overall = (tv_end.tv_sec-tv_start.tv_sec)*1000.+(tv_end.tv_usec-tv_start.tv_usec)/1000.;
    
    cout <<"Overall execution time: "<<time_overall << endl;
    cout << "Finnish!" << endl;
    return 0;
}


    // myPOINT_3D traj_point;
    // traj_point.x = 0; traj_point.y = 0; traj_point.z = 0;

        // point_end = Point3d( // 更新终点
        //     T.translation()(0, 0),
        //     T.translation()(1, 0),
        //     T.translation()(2, 0)
        //     );
        
        //viz::WLine line(point_begin, point_end, cv::viz::Color::green());
        //lines.push_back(line);
        // point_begin = point_end;
        //  cv::Affine3d M(
        //     cv::Affine3d::Mat3(
        //         T(0, 0), T(0, 1), T(0, 2),
        //         T(1, 0), T(1, 1), T(1, 2),
        //         T(2, 0), T(2, 1), T(2, 2)
        //     ),
        //     cv::Affine3d::Vec3(
        //         T.translation()(0, 0), 
        //         T.translation()(1, 0),
        //         T.translation()(2, 0)
        //     )
        // );

        // cv::viz::Viz3d vis("Visual Odometry");
        // cv::viz::WCoordinateSystem world_coor(1.0), camera_coor(0.5);
        // vis.setBackgroundColor(cv::viz::Color::black());
        
        // int my_id = 0;
        // for (auto iter = lines.begin(); iter != lines.end(); iter++)
        // {
        //     string id = to_string(my_id);
        //     vis.showWidget(id, *iter);
        //     my_id++;
        // }
        // vis.setWidgetPose("Camera", M);
        // vis.spinOnce(1, false);

        // traj_point.x = traj_point.x + T.translation()(0,0);
        // traj_point.y = traj_point.y + T.translation()(1,0);
        // traj_point.z = traj_point.z + T.translation()(2,0); // 累计偏移量
        
        // cout << T.matrix() << endl << endl << T.matrix().inverse() << endl;
        // Temp.matrix() = T.matrix().inverse();
        // out_file_traj << temp_traj.points[0].x << "," << temp_traj.points[0].y << "," << temp_traj.points[0].z << endl; // 写出轨迹点
        // lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T,temp_traj); // 变换轨迹点

        // traj_location.push_back(temp_traj); // 存储每帧的轨迹点
        // pcl::transformPointCloud