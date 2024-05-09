#
# awk -v cols=5 -f flat2matrix.awk flat.tsv
#
BEGIN {
    i = 0
}
{
    a[++i] = $1
}
END {
    for (i=1; i<=cols*cols; i++) {
        if (i % cols == 0) {
            printf("%s\n", a[i])
        }
        else {
            printf("%s\t", a[i])
        }
    }
    printf("\n")
}