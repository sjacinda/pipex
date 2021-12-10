# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjacinda <sjacinda@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 05:08:52 by sjacinda          #+#    #+#              #
#    Updated: 2021/12/10 21:56:51 by sjacinda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= pipex
HEADER	= pipex.h
SRCS	= pipex.c
OBJS	= $(SRCS:.c=.o)
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -rf
LIBFT	= ./libf


RED		= \033[31;1m
GREEN	= \033[32;1m
YELLOW	= \033[33;1m


.PHONY: all clean fclean re libft

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $?

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $<

clean:
# $(MAKE) -C $(LIBFT) clean
	$(RM) $(OBJS)

fclean: clean
# $(MAKE) -C $(LIBFT) fclean
	$(RM) $(NAME)

re: fclean all





libf:
	$(MAKE) -C $(LIBFT)




# @echo "$(GREEN)< Complited $(YELLOW)$(NAME) >"
# @echo "$(GREEN)< Object files created >"
# @echo "$(GREEN)< Cleaning succeed >"
# @echo "$(GREEN)< All created files were deleted >"
# @echo "$(GREEN)< Remaking succeed >"

# @echo "$(GREEN)< Complited $(YELLOW)libf.a >"