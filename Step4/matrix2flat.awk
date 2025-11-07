#!/usr/bin/awk -f
# Copyright (c) 2024 - 2025 Open Risk
# All rights reserved.

{
    for(i=1; i<=NF; i++) {
        printf("%s\n", $i)
    }
}