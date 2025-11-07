#!/usr/bin/awk -f
# Copyright (c) 2024 - 2025 Open Risk
# All rights reserved.

{
    for (j = 1; j <= NF; j++) {
        a[NR, j] = $j
    }
}
END {
    for (i = 1; i <= NR; i++) {
        for (j = 1; j < NF; j++) {
            printf("%s\t", a[j, i])
        }
        printf("%s\n", a[j, i])
    }
}