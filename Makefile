# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbopp <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/22 09:45:26 by lbopp             #+#    #+#              #
#    Updated: 2019/05/24 11:36:01 by lbopp            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NAME_TEST = run_test
SRC_NAME = ft_bzero.s\
		   ft_strcat.s\
		   ft_isalpha.s\
		   ft_isdigit.s\
		   ft_isalnum.s\
		   ft_isascii.s\
		   ft_isprint.s\
		   ft_toupper.s\
		   ft_tolower.s\
		   ft_puts.s\
		   ft_strlen.s\
		   ft_memset.s\
		   ft_memcpy.s\
		   ft_strdup.s\
		   ft_cat.s
SRC_PATH = srcs
SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(SRC:.s=.o)
CFLAGS = -Wall -Werror -Wextra
CC = gcc
RM = rm -f

.PHONY: all, clean, fclean, re

all: $(NAME_TEST)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(NAME_TEST): $(NAME)
	gcc $(SRC_PATH)/main.c -lfts -L . -o $(NAME_TEST)

%.o: %.s
	nasm -f macho64 $^ -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(NAME_TEST)

re: fclean all
