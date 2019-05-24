#include <stdio.h>
#include <ctype.h>
#include <strings.h>
#include <unistd.h>
#include <fcntl.h>

int	ft_isalpha(char c);
int	ft_isdigit(int c);
int	ft_isalnum(int c);
int	ft_isascii(int c);
int	ft_isprint(int c);
int	ft_toupper(int c);
int	ft_tolower(int c);
char	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
size_t	ft_strlen(const char *s);
void	*ft_memset(void *src, int c, size_t len);
void	*ft_memcpy(void	*dst, const void *src, size_t n);
char	*ft_strdup(const char *s);
void	ft_cat(int fd);
int		ft_puts(const char *s);

int	ft_bzero_test()
{
	char test1[] = "Ceci est mon test";
	char test2[] = "Ceci est mon test";

	ft_bzero(test1, 0);
	bzero(test2, 0);
	if (strncmp(test1, test2, 13))
	{
		printf("Erreur avec ft_bzero test 1\n");
		return (1);
	}
	ft_bzero(test1, 6);
	bzero(test2, 6);
	if (strncmp(test1, test2, 13))
	{
		printf("Erreur avec ft_bzero test 2\n");
		return (1);
	}
	ft_bzero(test1, 13);
	bzero(test2, 13);
	if (strncmp(test1, test2, 13))
	{
		printf("Erreur avec ft_bzero test 3\n");
		return (1);
	}
	return (0);
}

int	ft_strcat_test()
{
	char tab_ft1[40] = "TESTE";
	char tab_ft2[10] = "Suite de";
	char tab1[40] = "TESTE";
	char tab2[10] = "Suite de";
	char tab_ft3[40] = "TESTE";
	char tab_ft4[10] = "";
	char tab3[40] = "TESTE";
	char tab4[10] = "";
	char tab_ft5[40] = "";
	char tab_ft6[10] = "SUITE";
	char tab5[40] = "";
	char tab6[10] = "SUITE";

	ft_strcat(tab_ft1, tab_ft2);
	strcat(tab1, tab2);
	if (strcmp(tab1, tab_ft1))
	{
		printf("Erreur avec ft_strcat test 1\n");
		return (1);
	}
	ft_strcat(tab_ft3, tab_ft4);
	strcat(tab3, tab4);
	if (strcmp(tab3, tab_ft3))
	{
		printf("Erreur avec ft_strcat test 1\n");
		return (1);
	}
	ft_strcat(tab_ft5, tab_ft6);
	strcat(tab5, tab6);
	if (strcmp(tab5, tab_ft5))
	{
		printf("Erreur avec ft_strcat test 1\n");
		return (1);
	}
	return (0);
}

int	ft_strlen_test()
{
	if (strlen("CECI EST MON TEST") != ft_strlen("CECI EST MON TEST"))
	{
		printf("Erreur avec ft_strlen test 1\n");
		return (1);
	}
	if (strlen("") != ft_strlen(""))
	{
		printf("Erreur avec ft_strlen test 2\n");
		return (1);
	}
	return (0);
}

int	ft_memset_test()
{
	char	string[] = "Ceci est une string";
	char	string2[] = "Ceci est une string";

	memset(string, 'o', 0);
	ft_memset(string2, 'o', 0);
	if (strcmp(string, string2) != 0)
	{
		printf("Erreur avec ft_memset test 1\n");
		return (1);
	}
	memset(string, 'o', 7);
	ft_memset(string2, 'o', 7);
	if (strcmp(string, string2) != 0)
	{
		printf("Erreur avec ft_memset test 2\n");
		return (1);
	}
	memset(string, 'o', strlen(string));
	ft_memset(string2, 'o', strlen(string2));
	if (strcmp(string, string2) != 0)
	{
		printf("Erreur avec ft_memset test 3\n");
		return (1);
	}
	return (0);
}

int	ft_memcpy_test()
{
	char	string[] = "Ceci est mon test";
	char	string2[] = "Remplacement";
	char	string_test[] = "Ceci est mon test";
	char	string_test2[] = "Remplacement";

	memcpy(string, string2, 0);
	ft_memcpy(string_test, string_test2, 0);
	if (strcmp(string, string_test) != 0)
	{
		printf("Erreur avec ft_memcpy test 1\n");
		return (1);
	}
	memcpy(string, string2, 5);
	ft_memcpy(string_test, string_test2, 5);
	if (strcmp(string, string_test) != 0)
	{
		printf("Erreur avec ft_memcpy test 2\n");
		return (1);
	}
	return (0);
}

int	ft_strdup_test()
{
	char	string1[] = "Es ce que ca fonctionne";
	char	string2[] = "";

	if (strcmp(ft_strdup(string1), strdup(string1)))
		return (1);
	if (strcmp(ft_strdup(string2), strdup(string2)))
		return (1);
	return (0);
}

void	ft_cattest()
{
	int	fd;

	fd = open("srcs/ft_cat.s", O_RDONLY);
	printf("Ft_cat sur ft_cat.s\n");
	ft_cat(fd);
	close(fd);
	printf("ft_cat sur 0\n");
	ft_cat(0);
	printf("Test fail fd\n");
	ft_cat(-1);
}

int		ft_isalpha_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_isalpha(i) != isalpha(i))
		{
			printf("Erreur ft_isalpha i = %d\n", i);
			return (0);
		}
	if (i == 256)
		printf("Ft_isalpha OK\n");
	return (1);
}

int		ft_isdigit_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_isdigit(i) != isdigit(i))
		{
			printf("Erreur ft_isdigit i = %d\n", i);
			return (0);
		}
	if (i == 256)
		printf("Ft_isdigit OK\n");
	return (1);
}

int		ft_isalnum_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_isalnum(i) != isalnum(i))
		{
			printf("Erreur ft_isalnum i = %d\n", i);
			return (0);
		}
	if (i == 256)
		printf("Ft_isalnum OK\n");
	return (1);
}

int		ft_isascii_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_isascii(i) != isascii(i))
		{
			printf("Erreur ft_isascii i = %d\n", i);
			return(0);
		}
	if (i == 256)
		printf("Ft_isascii OK\n");
	return(1);
}

int		ft_isprint_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_isprint(i) != isprint(i))
		{
			printf("Erreur ft_isprint i = %d\n", i);
			return(0);
		}
	if (i == 256)
		printf("Ft_isprint OK\n");
	return (1);
}

int		ft_istoupper_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_toupper(i) != toupper(i))
		{
			printf("Erreur ft_toupper i = %d\n", i);
			return (0);
		}
	if (i == 256)
		printf("Ft_toupper OK\n");
	return (1);
}

int		ft_istolower_test(void)
{
	int	i;

	for (i = 0; i <= 255; i++)
		if (ft_tolower(i) != tolower(i))
		{
			printf("Erreur ft_tolower i = %d\n", i);
			return (0);
		}
	if (i == 256)
		printf("Ft_tolower OK\n");
	return (1);
}

int		ft_puts_test(void)
{
	ft_puts("");
	puts("");
	ft_puts("a");
	puts("a");
	ft_puts(NULL);
	puts(NULL);
	return (1);
}

int	main(void)
{
	//ft_istolower_test();
	//ft_istoupper_test();
	//ft_isprint_test();
	//ft_isascii_test();
	//ft_isdigit_test();
	//ft_isalpha_test();
	//ft_isalnum_test();
	//if (ft_bzero_test())
	//	printf("Erreur ft_bzero\n");
	//else
	//	printf("Ft_bzero OK\n");
	//if (ft_strcat_test())
	//	printf("Erreur ft_strcat\n");
	//else
	//	printf("Ft_strcat OK\n");
	//if (ft_strlen_test())
	//	printf("Erreur ft_strlen\n");
	//else
	//	printf("Ft_strlen OK\n");
	//if (ft_memset_test())
	//	printf("Erreur ft_memset\n");
	//else
	//	printf("Ft_memset OK\n");
	if (ft_memcpy_test())
		printf("Erreur ft_memcpy\n");
	else
		printf("Ft_memcpy OK\n");
	//if (ft_strdup_test())
	//	printf("Erreur ft_strdup\n");
	//else
	//	printf("Ft_strdup OK\n");
	//ft_cattest();
	//ft_puts_test();
	return (0);
}
