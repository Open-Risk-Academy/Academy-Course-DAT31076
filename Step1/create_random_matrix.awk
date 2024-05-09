BEGIN {
    n = 5;
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n-1; j++) {
            printf("%s\t", rand())
        }
        printf("%s\n", rand())
    }
}