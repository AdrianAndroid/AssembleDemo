# 资料
//
// Created by zhaojian on 2023/8/14.
//
// Mac上用 clang 简单交叉编译arm架构的文件
// http://ourui.github.io/2014/09/12/2014-09-12-clang-compile-arm-file/
// 使用Clang作为编译器 —— 使用 Clang 交叉编译
// https://blog.csdn.net/qq_23599965/article/details/90901235
// xcrun -sdk iphoneos clang -arch armv7 -S  -o hello test.cpp
// 使用LLVM/Clang编译嵌入式项目
// https://zhuanlan.zhihu.com/p/519092048
// mac上将c语言文件编译成arm64架构文件
// https://blog.csdn.net/u013018704/article/details/118787900
// clang 跨平台编译 iOS/macOS arm64/x86_64
// https://lvv.me/posts/2021/05/19_clang_cross_build/
03.ARM - 两种指令运行模式（ARM/THUMB）
https://www.jianshu.com/p/1c7681a26d6a



c判断
https://www.runoob.com/cprogramming/c-operators.html

# 编译的命令
```sh
pathName=$1
filename=$(basename "$pathName")
filename_no_ext=${filename%.*}
runFileName_no_ext=$filename_no_ext
filepath=$(dirname "$pathName")
echo "filename=$filename"
echo "filename_no_ext=$filename_no_ext"
echo "runFileName_no_ext=$runFileName_no_ext"
echo "filepath=$filepath"

cd "$filepath"
//-mthumb
compileName=$filename-thumb
xcrun -sdk iphoneos clang -arch armv7 -mthumb -S  -o $compileName.S $filename
xcrun -sdk iphoneos clang -arch armv7 -mthumb -E  -o $compileName.E $filename
xcrun -sdk iphoneos clang -arch arm64 -mthumb -S  -o $compileName.64.S $filename
xcrun -sdk iphoneos clang -arch arm64 -mthumb -E  -o $compileName.64.E $filename
//-mno-thumb arm指令集
compileName=$filename-arm
xcrun -sdk iphoneos clang -arch armv7 -mno-thumb -S  -o $compileName.S $filename
xcrun -sdk iphoneos clang -arch armv7 -mno-thumb -E  -o $compileName.E $filename
xcrun -sdk iphoneos clang -arch arm64 -mno-thumb -S  -o $compileName.64.S $filename
xcrun -sdk iphoneos clang -arch arm64 -mno-thumb -E  -o $compileName.64.E $filename


# 可执行文件
clang++ -std=c++11 $filename -o $runFileName_no_ext
chmod +x $runFileName_no_ext # 可执行文件
./$runFileName_no_ext

# xcrun -sdk iphoneos clang -arch armv7 -S  -o $1.S $1
# xcrun -sdk iphoneos clang -arch armv7 -E  -o $1.E $1
# xcrun -sdk iphoneos clang -arch arm64 -S  -o $1.64.S $1
# xcrun -sdk iphoneos clang -arch arm64 -E  -o $1.64.E $1

# filepath=$1
# filename=$(basename "$filepath")
# filename_no_ext=$(basename "$filename")
# filepath=$(dirname "$filepath")
# runFilePathName="$filepath/run$filename_no_ext"
# xcrun -sdk iphoneos clang -arch arm64 -o $runFilePathName $1
# chmod +x $runFilePathName

cd -
```
