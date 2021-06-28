// #include "pch.h"
/**/
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <stdio.h>

#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

#include "ros/ros.h"

using namespace std;
 
typedef struct tagPOINT_3D
{
	double x;  //mm world coordinate x
	double y;  //mm world coordinate y
	double z;  //mm world coordinate z
	double i;
}POINT_WORLD;

vector<tagPOINT_3D> my_csvPoints;
tagPOINT_3D csvPoint;
int frameid = 2400;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_trans"); //初始化ros，并命令节点名，必须。
    ros::NodeHandle n; //初始化节点，调用ros api接口句柄，这里非必须
	
    vector<string> file_path;
    
    //string inPath = "/home/xiaochen/data/hesai_slam/pcd_data/*.pcd"; // 遍历文件夹下的所有.pcd文件
    
	string folderPath = "/home/xiaochen/data/hesai_slam/csv_data/2021-06-21-09-51-46_Hesai-Lidar-Data\ \(Frame\ "; // 找到文件路径
	//string folderPath = "/home/xiaochen/data/hesai_slam/pcd_data/2021-06-21-09-51-46_Hesai-Lidar-Data (Frame ";
	string tempath;
	for (int i=2400; i<=2500; ++i)
	{
		if (i<10 && i >= 0)
		{
			tempath = folderPath + to_string(0) + to_string(0) + to_string(0) +to_string(i) + "\).csv";
			file_path.push_back(tempath);
		}
		else if (i<100 && i >= 10)
		{
			tempath = folderPath + to_string(0) + to_string(0) +to_string(i) + "\).csv";
			file_path.push_back(tempath);
		}
		else if (i<1000 && i >= 100)
		{
			tempath = folderPath + to_string(0) +to_string(i) + "\).csv";
			file_path.push_back(tempath);
		}
		else
		{
			tempath = folderPath +to_string(i) + "\).csv";
			file_path.push_back(tempath);
		}
		//cout << tempath << endl;
	}

    for(auto iter=file_path.begin(); iter!=file_path.end(); ++iter)
	{
		cout << *iter << endl;
		ifstream inFile(*iter, ios::in);

		string line;
		//getline(inFile, line);
		int i = 0;
		while (getline(inFile, line))
		{
			istringstream sin(line);
			vector<string> fields;
			string field;
			while (getline(sin, field, ','))
			{
				fields.push_back(field);
			}
			if(i != 0) // 跳过第一行数据
			{
				csvPoint.x  = atof(fields[9].c_str());
				csvPoint.y  = atof(fields[10].c_str());
				csvPoint.z  = atof(fields[11].c_str());
				csvPoint.i  = atof(fields[0].c_str());
				my_csvPoints.push_back(csvPoint);
			}
			else
			{
				i++;
			}
		}
		int number_Txt= my_csvPoints.size();
		pcl::PointCloud<pcl::PointXYZI> cloud;
		// Fill in the cloud data
		cloud.width = number_Txt;
		cloud.height = 1;
		cloud.is_dense = false;
		cloud.points.resize(cloud.width * cloud.height);

		for (size_t i = 0; i < cloud.points.size(); ++i)
		{
			cloud.points[i].x = my_csvPoints[i].x;
			cloud.points[i].y = my_csvPoints[i].y;
			cloud.points[i].z = my_csvPoints[i].z;
			cloud.points[i].intensity = my_csvPoints[i].i;
		}
		string pcdfile_path = "/home/xiaochen/data/hesai_slam/pcd_data/" + to_string(frameid) + ".pcd";
		pcl::io::savePCDFileASCII(pcdfile_path, cloud);
		//std::cerr << "Saved " << cloud.points.size() << " data points to txt2pcd.pcd." << std::endl;
		my_csvPoints.clear();
		frameid++;
	}
	cout << "Finnish!" << endl;
	return 0;
}