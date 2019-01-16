evaluate fddb on Windows
====================================

### 环境

1.需要安装opencv3.1

2.vs2013 or later

3.安装 root/FDDB软件

#introduction

1.evaluation是对人脸检测算法得到的bbox.txt（按照fddb的bbox标准）文件生成DiscROC和ContROC

2.runEvaluate-Windows.pl文件中修改文件路径，运行RunEvaluation.bat会生成DiscROC和ContROC

3.root/compareROC 文件中修改discROC.p和contROC.p，将evaluation生成的DiscROC和ContROC中生成的文件拷贝到rocCurves中，运行plotall.bat

