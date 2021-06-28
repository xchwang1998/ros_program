#include <ndt_matcher_d2d.h>
#include <pointcloud_utils.h>

int main() {
    double __res[] = {0.5, 1, 2, 4};
    std::vector<double> resolutions (__res, __res+sizeof(__res)/sizeof(double));
    lslgeneric::NDTMatcherD2D <pcl::PointXYZ,pcl::PointXYZ> matcherD2D (false,false,resolutions);
    Eigen::Transform<double,3,Eigen::Affine,Eigen::ColMajor> T;
    pcl::PointCloud<pcl::PointXYZ> cloud1,cloud2;
    //... load information into cloud1 and cloud2 ...
    bool ret = matcherD2D.match2D(cloud1,cloud2,T);
    //we now have T, which minimizes |cloud1 - cloud2*T| 
    lslgeneric::transformPointCloudInPlace<pcl::PointXYZ>(T,cloud2);
}