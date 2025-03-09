#include <stdio.h>
#include "version.h"

void print_version() {
    printf("Version: %s\n", VERSION);
    printf("Build Date: %s\n", BUILD_DATE);
}