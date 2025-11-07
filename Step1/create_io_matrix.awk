#!/usr/bin/awk -f
# Copyright (c) 2024 - 2025 Open Risk
# All rights reserved.

function random_matrix(a, n)
{
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            val = rand()
            a[i, j] = val
        }
    }
}

function row_sums(rs, a, n){
    for (i = 1; i <= n; i++) {
        rs[i] = 0.0
        for (j = 1; j <= n; j++) {
            rs[i] += a[i, j]
        }
    }
}

function col_sums(cs, a, n){
    for (j = 1; j <= n; j++) {
        cs[j] = 0.0
        for (i = 1; i <= n; i++) {
            cs[j] += a[i, j]
        }
    }
}

function print_matrix(a, n) {
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n - 1; j++) {
            printf("%s\t", a[i, j])
        }
        printf("%s\n", a[i, n])
    }
}

function print_full_matrix(a, rs, cs, n) {
    total = 0
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            printf("%s\t", a[i, j])
        }
        printf("%s\n", rs[i])
    }
    for (j = 1; j <= n; j++) {
        total += cs[j]
        printf("%s\t", cs[j])
    }
    printf("%s\n", total)
}

BEGIN {
    n = 100
    total = 0.0

    # generate initial set of matrix values
    random_matrix(a, n)
    row_sums(rs, a, n)
    col_sums(cs, a, n)

    # adjust last row
    for (j=1; j<= n; j++) {
            a[n, j] = a[n, j] + rs[j] - cs[j]
    }
    row_sums(rs, a, n)
    col_sums(cs, a, n)
    print_full_matrix(a, rs, cs, n)
}