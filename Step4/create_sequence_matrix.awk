BEGIN {
    n = 10;
    c = 1;
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n-1; j++) {
            printf("%s\t", c)
            c++
        }
        printf("%s\n", c)
    }
}