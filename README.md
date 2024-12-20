# Gmsh网格源文件解析程序

## 由于MATLAB性能受限，因此后续三维网格提取以及其他功能将在新仓库中更新，详见：[斗沙片刻/ShowMesh](https://gitee.com/YoHen-Fu/show-mesh)

## 介绍

MeshInf可一键提取Gmsh网格源文件中的信息，并生成`MeshInf.mat`数据文件，方便利用Gmsh划分好的网格进行后续处理。

## 当前功能

当前支持解析二维三角形网格信息。

## 使用说明

软件运行界面如下：

<img title="" src="./doc/figure/APP1.png" alt="" width="379" data-align="center">

<img title="" src="./doc/figure/APP2.png" alt="" data-align="center" width="379">

<img title="" src="./doc/figure/APP3.png" alt="" data-align="center" width="380">

## 输出数据说明

`MeshInf.mat`数据文件包含五个矩阵：

`coord`：包含结点坐标信息，矩阵一共4列，第一列为结点全局编号，后3列分别为对应结点的x，y，z坐标。

`element_P`：包含点单元信息，矩阵一共3列，第1列为点单元所属实体编号，第2列为点单元编号，后1列为点单元结点局部编号对应的全局编号。

`element_L`：包含线单元信息，矩阵一共3列，第1列为线单元所属实体编号，第2列为线单元编号，后2列为线单元2个结点局部编号对应的全局编号。

`element_S`：包含面单元信息，矩阵一共4列，第1列为面单元所属实体编号，第2列为面单元编号，后3列为面单元3个结点局部编号对应的全局编号。

`element_V`：包含线单元信息，矩阵一共5列，第1列为体单元所属实体编号，第2列为体单元编号，后4列为体单元4个结点局部编号对应的全局编号。

特别说明：一维网格，不存在面单元以及体单元，element_S与element_V两个矩阵为空，同理二维网格，不存在体单元，element_V矩阵为空。

**如果本项目有帮到你，不妨请我喝杯奶茶**

<p align="center">
<img src="https://gitee.com/YoHen-Fu/ip-matrix/raw/master/figures/%E6%88%91%E7%9A%84%E6%94%B6%E6%AC%BE%E7%A0%81-%E5%BE%AE%E4%BF%A1.png" width="35%">
</p>

**欢迎关注我的公众号**

<p align="center">
<img src="https://gitee.com/YoHen-Fu/ip-matrix/raw/master/figures/%E6%88%91%E7%9A%84%E5%85%AC%E4%BC%97%E5%8F%B7.png" width="50%">
</p>

