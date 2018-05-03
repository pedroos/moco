#ifndef UTIL_H
#define UTIL_H

typedef enum {
    LOG_LEVEL_INFO, 
    LOG_LEVEL_WARN, 
    LOG_LEVEL_ERROR
} LOG_LEVEL;

/**
 * Expects the last parameter to be NULL (or a crash otherwise should ensue).
 */
void loggy(LOG_LEVEL level, ...);

#define LOG(level, ...) loggy(level, __VA_ARGS__)

#endif /* UTIL_H */
