#include <stdio.h>

#define BUFFSIZE 100001 

main () {
	int N,D;
 	int i,j,num,next;	
	char buff[BUFFSIZE],dstr[2];
	int nums[BUFFSIZE];
	dstr[1] = '\0';
	while(1) {
		scanf("%d %d\n%s",&N,&D,buff);
		if (N == 0 && D == 0) {
			return 0;
		}
		for(i = 0;i <= (N - 1);i++) {
			dstr[0] = buff[i];
			nums[i] = atoi(dstr);
		}

		redo:
		for(i = 0;i <= (N - 1);i++) {
			if (nums[i] != -1) {
				
				// Pega o próximo número para comparar
				for(j = (i+1);j <= (N - 1);j++) {
					if(nums[j] != -1) {
						next = nums[j];
						break;
					}
				}
				// Verifica se o próximo número é maior que o atual
				if(next > nums[i]) {
					nums[i] = -1;
					D--;
					if (D == 0) {
						goto exgohorse;
					} else {
						goto redo;
					}
				}
			}
		}
		exgohorse:
		for(i = 0;i <= (N - 1 - D);i++) {
			if(nums[i] != -1) {
				printf("%d",nums[i]);
			}
		}
		printf("\n");
	}
}
