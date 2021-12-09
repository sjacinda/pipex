# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjacinda <sjacinda@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 05:08:52 by sjacinda          #+#    #+#              #
#    Updated: 2021/12/09 05:14:53 by sjacinda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

SRCS = pipex.c

HEADER = pipex.h

OBJ = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re

$(NAME): $(OBJ) $(HEADER)
	ar rcs $(NAME) $?

%.o: %.c $(HEADER)

all: $(NAME)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
