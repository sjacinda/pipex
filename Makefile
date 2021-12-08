;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   Makefile                                           :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: sjacinda <sjacinda@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2021/12/08 15:56:47 by sjacinda          #+#    #+#             ;;
;;   Updated: 2021/12/08 15:58:11 by sjacinda         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

NAME	=	pipex.a

SRCS	=

HEADER	=	pipex.h

OBJ		=	$(patsubst %.c, %.o. $(SRCS))	# узнать что такое $(SRCS) для функции putsubst

CC		=	gcc

CFLAGS	=	-Wall -Wextra -Werror

.PHONY	=	all clean fclean re

$(NAME)	:	$(OBJ) $(HEADER)
	ar rcs $(NAME) $?

all		:	$(NAME)

%.o		:	%.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean	:
	rm -rf $(OBJ)

fclean	:	clean
	rm -rf $(NAME)

re		:	fclean all
