# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpark-ki <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/08 20:20:34 by mpark-ki          #+#    #+#              #
#    Updated: 2019/11/10 19:33:09 by mpark-ki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
SRC_DIR = ./src/
OBJS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c \
	   ft_isascii.c ft_isdigit.c ft_isprint.c ft_isspace.c \
	   ft_memccpy.c ft_memcpy.c ft_memmove.c ft_memset.c \
	   ft_strlcpy.c ft_strlen.c ft_tolower.c ft_toupper.c ft_memchr.c \

HEADER = libft.h
FILES = $(patsubst %, $(SRC_DIR)%, $(OBJS))


all: $(NAME)

$(NAME): 
	$(CC) $(CFLAGS) -c $(FILES)
	ar rc $(NAME) *.o
	$(CC) main.c -L. $(NAME)

.PHONY: clean
clean:
	/bin/rm -f *.o

.PHONY: fclean
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all