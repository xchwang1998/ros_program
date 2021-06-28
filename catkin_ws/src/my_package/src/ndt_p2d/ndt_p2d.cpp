#include <iostream>
#include "string.h"

#include "ros/ros.h"
#include <pcl/io/pcd_io.h>
#include "ndt_registration/ndt_matcher_d2d.h"
#include "ndt_registration/ndt_matcher_p2d.h"
#include "ndt_map/pointcloud_utils.h"
#include <sys/time.h>

using namespace lslgeneric;
using namespace std;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ndt_p2d"); //初始化ros，并命令节点名，必须。
    ros::NodeHandle n; //初始化节点，调用ros api接口句柄，这里非必须
    // ROS_INFO("hello world"); //打印语句
    struct timeval tv_start, tv_end; // 定义时间
    double time_overall;
    
    double __res[] = {1}; //0.5, 1, 2, 4
    // 变换数组_res为vector，__res为数组开始的地址，__res+sizeof(__res)/sizeof(double)为__res+4
    std::vector<double> resolutions (__res, __res+sizeof(__res)/sizeof(double)); // 初始化分辨率

    lslgeneric::NDTMatcherP2D matcherP2D (resolutions); // 初始化NDT p2d

    vector<Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor>> T_p2d; // 存储变换参数
    Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> T; // 相邻点云变换参数
    
    vector<string> file_path;
    string folderPath = "/home/xiaochen/data/hesai_slam/pcd_data/"; // 找到文件夹路径
    string save_folderPath = "/home/xiaochen/data/hesai_slam/p2d_data/"; // 找到文件夹路径
    ofstream out_file("/home/xiaochen/data/hesai_slam/p2d_data/transform_p2d.txt"); // 保存变换矩阵路径
    string tempath, save_tempath;
    int frameid = 1301;

    
    for (int i=1300; i<=1500; ++i)
    {
        tempath = folderPath + to_string(i) +".pcd";
        file_path.push_back(tempath); // 存储所有的点云文件
    }

    pcl::PointCloud<pcl::PointXYZ> cloud1,cloud2;
    
    gettimeofday(&tv_start,NULL); //总体执行时间起点
    pcl::io::loadPCDFile<pcl::PointXYZ> (*(file_path.begin()), cloud1); // 读取第一帧点云，作为初始的参考点云
    for (auto iter=file_path.begin(); (iter+1)!=file_path.end(); ++iter)
    {
        pcl::io::loadPCDFile<pcl::PointXYZ> (*(iter+1), cloud2);
        bool ret_p2d = matcherP2D.match(cloud1,cloud2,T); // 获取变换矩阵T
        lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T,cloud2); // 进行变换
        save_tempath = save_folderPath + to_string(frameid) + ".pcd";
        pcl::io::savePCDFileASCII(save_tempath, cloud2); // 保存为pcd点云文件
        T_p2d.push_back(T); // 存储变换参数
        out_file << ("frame" + to_string(frameid-1) + "--" + to_string(frameid)) << endl;
        out_file << T.matrix() << endl;
        
        if (ret_p2d)// 如果匹配成功，则变换后的点云 作为 参考点云
        {
            cloud1 = cloud2;
        }
        // cloud1 = cloud2; // 变换后的点云 作为 参考点云
        frameid++;
    }
    gettimeofday(&tv_end, NULL); //总体执行时间终点
    out_file.close(); // 关闭文件
    time_overall = (tv_end.tv_sec-tv_start.tv_sec)*1000.+(tv_end.tv_usec-tv_start.tv_usec)/1000.;
    
    cout <<"Overall execution time: "<<time_overall << endl;
    cout << "Finnish!" << endl;
    return 0;
}
