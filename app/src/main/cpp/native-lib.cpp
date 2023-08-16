#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_assembledemo_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}

/**
 *  字符串指针数组
 */
const int MAX = 4;

int testA() {
    const char *names[] = {
            "Zara Ali",
            "Hina Ali",
            "Nuha Ali",
            "Sara Ali",
    };
    int i = 0;

    for (i = 0; i < MAX; i++) {
        printf("Value of names[%d] = %s\n", i, names[i]);
    }
    return 0;
}

extern "C"
JNIEXPORT void JNICALL
Java_com_assembledemo_MainActivity_bindStringPointerArray(JNIEnv *env, jobject thiz) {
    testA();
}