#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int	main(int ac, char **av)
{
	char	buffer[100];
	int		i;

	bzero(buffer, 100);
	while (read(atoi(av[1]), buffer, 99) > 0)
	{
		i = 0;
		puts(buffer);
		bzero(buffer, 100);
	}
}
