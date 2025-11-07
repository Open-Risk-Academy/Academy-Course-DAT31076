#!/usr/bin/awk -f
# Copyright (c) 2024 - 2025 Open Risk
# All rights reserved.

BEGIN {
    max_val = 0.0
    min_val = 0.0
}
{
    for (j = 1; j <= NF; j++) {
        if ($j < min_val) { min_val = $j};
        if ($j > max_val) { max_val = $j};
    }
}
END {
    print(min_val)
    print(max_val)
}