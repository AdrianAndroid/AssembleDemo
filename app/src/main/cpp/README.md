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