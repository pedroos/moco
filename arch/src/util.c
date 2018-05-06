#include <stdio.h>
#include <stdarg.h>
#include "util.h" 

void loggy(LOG_LEVEL level, ...) {
    va_list ap;
    va_start(ap, level);
    const char *text;
    while ((text = (const char *)va_arg(ap, const char *)) != NULL) {
        printf("%s: %s", 
                level == LOG_LEVEL_INFO ? "INFO" : 
                level == LOG_LEVEL_WARN ? "WARN" : 
                level == LOG_LEVEL_ERROR ? "ERROR" : "", 
                text);
    }
    va_end(ap);
}
