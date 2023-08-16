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

# 调试
以下是使用 Clang 编译器和调试器（例如 GDB）进行调试的一般步骤：

编译时加入调试信息：在使用 Clang 编译源代码时，可以添加 -g 标志来生成调试信息。这将允许调试器在运行时分析源代码和变量信息。
bash

clang -g source.c -o output
启动调试器：使用适当的调试器（例如 GDB）来启动可执行文件，开始调试过程。
bash

gdb ./output
设置断点：在调试器中，你可以设置断点，即指定程序暂停执行的位置。这样，你就可以在特定位置检查变量值等。
bash

break main   # 在 main 函数设置断点
运行程序：运行程序，调试器会在断点处停止执行，然后你可以开始进行调试。
bash

run
查看变量值：在断点停止的位置，你可以使用调试器的命令来查看变量的当前值。
bash

print variable_name
单步执行：你可以逐行地执行程序，检查变量的值和程序流程。
bash

step   # 单步执行
继续执行：继续执行程序，直到下一个断点或程序结束。
bash

continue   # 继续执行
退出调试器：退出调试器会终止调试会话。
bash

quit
这只是调试的基本步骤。调试器通常提供丰富的功能，可以帮助你分析代码、识别问题并进行修复。调试是编程过程中非常重要的一部分，可以帮助你理解程序的运行情况并找到错误。


# lldb
https://www.bilibili.com/video/BV1At411E7LB/?spm_id_from=333.337.search-card.all.click



C 头文件
https://www.runoob.com/cprogramming/c-header-files.html