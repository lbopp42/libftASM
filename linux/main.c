#include <stdio.h>
#include <stdint.h>

void	ft_swap(uint64_t *a, uint64_t *b);
int main(void)
{
	uint64_t c = 10;
	uint64_t d = 5;

	ft_swap(&c, &d);
	printf("a = %lu, b = %lu\n", c, d);
}
