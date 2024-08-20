#include <stdio.h>

int main(void);

int main(void){
	int m, n;
	int r = 1;
	scanf("%d", &m);
	scanf("%d", &n);
	if (m < n) {
		m = m - n;
		n = m + n;
		m = n - m;
	}
	r = m % n;
	while (r != 0){
		r = m % n;
		m = n;
		n = r;
	}
	printf("%d", n);
	return 0;
}
