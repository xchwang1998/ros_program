//#include "ndt_map/NDTCellMsg.h"
//#include "ndt_map/NDTMapMsg.h"
#include <iostream>
#include "string.h"

#include "ros/ros.h"
#include <pcl/io/pcd_io.h>
#include "ndt_registration/ndt_matcher_d2d.h"
#include "ndt_registration/ndt_matcher_p2d.h"
#include "ndt_map/pointcloud_utils.h"


using namespace lslgeneric;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_ndt"); //初始化ros，并命令节点名，必须。
    ros::NodeHandle n; //初始化节点，调用ros api接口句柄，这里非必须
    // ROS_INFO("hello world"); //打印语句
    
    double __res[] = {0.5}; //0.5, 1, 2, 4
    // 变换数组_res为vector，__res为数组开始的地址，__res+sizeof(__res)/sizeof(double)为__res+4
    std::vector<double> resolutions (__res, __res+sizeof(__res)/sizeof(double)); // 格网分辨率

    lslgeneric::NDTMatcherD2D matcherD2D (false,false,resolutions); // 初始化D2D
    lslgeneric::NDTMatcherP2D matcherP2D (resolutions); // 初始化P2D

    Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> T_d2d; // D2D变换矩阵
    Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> T_p2d; // P2D变换矩阵
    
    std::string file_path1 = "/home/xiaochen/data/hesai_slam/frames/1360.pcd";
    std::string file_path2 = "/home/xiaochen/data/hesai_slam/frames/1380.pcd";

    std::string file_path3 = "/home/xiaochen/data/hesai_slam/frames/60-1380_trans_d2d.pcd";
    std::string file_path4 = "/home/xiaochen/data/hesai_slam/frames/60-1380_trans_p2d.pcd";

    pcl::PointCloud<pcl::PointXYZ> cloud1,cloud2, cloud_trans_d2d, cloud_trans_p2d;

    pcl::io::loadPCDFile<pcl::PointXYZ> (file_path1, cloud1);
    pcl::io::loadPCDFile<pcl::PointXYZ> (file_path2, cloud2);
    pcl::io::loadPCDFile<pcl::PointXYZ> (file_path2, cloud_trans_d2d);
    pcl::io::loadPCDFile<pcl::PointXYZ> (file_path2, cloud_trans_p2d);
    
    std::cout << "----NDT D2D Registration Start----" << std::endl; // 打印语句 
    ros::Time begin_time = ros::Time::now();
    
    bool ret = matcherD2D.match(cloud1,cloud2,T_d2d); // 获取变换矩阵T
    lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T_d2d,cloud_trans_d2d); // 进行变换
    pcl::io::savePCDFileASCII(file_path3, cloud_trans_d2d); // 保存为pcd点云文件

    ros::Time end_time = ros::Time::now();

    std::cout << (end_time - begin_time) << std::endl;
    std::cout << "D2D end, " << "convergence:" << ret << std::endl; // 打印语句 
    std::cout << "----NDT D2D Registration End----" << std::endl << std::endl; // 打印语句 
    //ROS_INFO("end"); //打印语句

    /*------------------NDT-P2D-------------------*/
    std::cout << "----NDT P2D Registration Start----" << std::endl; // 打印语句 
    ros::Time begin_time_p2d = ros::Time::now();
    
    bool ret_p2d = matcherP2D.match(cloud1, cloud2, T_p2d); // P2D方法获取变换矩阵T
    lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T_p2d,cloud_trans_p2d); // 进行变换
    pcl::io::savePCDFileASCII(file_path4, cloud_trans_p2d); // 保存为pcd点云文件

    ros::Time end_time_p2d = ros::Time::now();
    std::cout << (end_time_p2d - begin_time_p2d) << std::endl;
    std::cout << "P2D end, " << "convergence:" << ret_p2d << std::endl; // 打印语句 
    std::cout << "----NDT P2D Registration End----" << std::endl; // 打印语句 
    /*------------------NDT-P2D-------------------*/
    return 0;
}
