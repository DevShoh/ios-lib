#ifndef ZIRH_IOS_H
#define ZIRH_IOS_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void zirh_ios_boshlash(const char* keyPath, const char* dataPath);

char* ios_malumot_olish(const char* path);

void ios_xotirani_tozalash(void* ptr);

char* ios_malumot_almashish(
    const char* url,
    const char* method,
    const char* body,
    const char* headers,
    const char* filePath,
    const uint8_t* fileBytes,
    int32_t bytesCount,
    const char* fileName,
    const char* fileField
);

#ifdef __cplusplus
}
#endif

#endif
