#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void	ft_cat(int fd)
{
	char	buffer[5000000];
	int		i;

	printf("GOOD LAUNCH\n");
	bzero(buffer, 5000000);
	while (read(fd, buffer, 4999999) > 0)
	{
		i = 0;
		printf("%s", buffer);
		bzero(buffer, 4999999);
	}
}
