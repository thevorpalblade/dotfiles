#include <sys/types.h>;

void *memcpy(void *dst, const void *src, size_t n)
{
    unsigned char *p;
    const unsigned char *q;

    for (p = dst, q = src; n; n--)
        *p++ = *q++;

    return dst;
}

