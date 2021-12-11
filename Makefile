# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjacinda <sjacinda@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 05:08:52 by sjacinda          #+#    #+#              #
#    Updated: 2021/12/11 19:54:12 by sjacinda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= pipex
HEADER	= pipex.h
SRCS	= pipex.c pipex_utils.c
OBJS	= $(SRCS:.c=.o)
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -rf


.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $?

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $<

clean:
	@$(RM) $(OBJS)

fclean: clean
	@$(RM) $(NAME)

re: fclean all
