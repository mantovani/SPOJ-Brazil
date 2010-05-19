#include <cstdio>

void calc(int *j, int N) {
    long int tmp = 0;
    if (N == 1) {
        printf("%s\n\n", (j[0] == 0) ? "0" : "nao achei");
        return;
    }
    tmp += j[0];
    for (int i = 1; i < N; ++i) {
    	if (tmp == j[i]) {
    		printf("%ld\n\n", tmp);
    		return;
    	}
		tmp += j[i];
    }
    printf("nao achei\n\n");
}


int main(int argc, char *argv[]) {
    int N, i;
	i = 0;
    while (scanf("%d", &N) == 1) {
        int j[N];
        for (int k = 0; k < N; ++k){
            scanf("%d", &j[k]);
        }
        printf("Instancia %d\n", ++i);
        calc(j, N);
    }
    return 0;
}
