#include <stdio.h>

main () {
	int num[4];
	while (1) {
		scanf("%d %d %d %d",&num[0],&num[1],&num[2],&num[3]);
		if (num[0] == 0 && num[1] == 0 && num[2] == 0 && num[3] == 0) {
			return (0);
		}
		num[0] *= 60;
		num[0] += num[1];
		num[2] *= 60;
		num[2] += num[3];
		if (num[0] < num[2]) {
			printf("%d\n",num[2] - num[0]);
		} else {
			printf("%d\n", 1440 - (num[0] - num[2]));
		}
	}
}
