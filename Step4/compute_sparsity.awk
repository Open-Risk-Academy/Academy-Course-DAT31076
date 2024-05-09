#
#
BEGIN {
    sparse_count = 0
}
{
    for(i=1; i<=NF; i++) {
        if($i == 0.0) {
            sparse_count++
        }
    }
}
END {
    print(sparse_count)
    print(NR*NF)
    print(sparse_count/NR/NF)
}