#!/usr/bin/awk -f
# Copyright (c) 2024 - 2025 Open Risk
# All rights reserved.

BEGIN {
    n = 1000;
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n-1; j++) {
            if (rand() < 0.5) {
                printf("%s\t", rand())
            }
            else {
                printf("%s\t", 0.0)
            }
        }
        printf("%s\n", rand())
    }
}