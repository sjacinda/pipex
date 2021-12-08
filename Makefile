NAME	=	pipex.a

SRCS	=

HEADER	=	pipex.h

OBJ	=	$(patsubst %.c, %.o. $(SRCS))	# узнать что такое $(SRCS) для функции putsubst

CC	=	gcc

CFLAGS	=	-Wall -Wextra -Werror

.PHONY	=	all clean fclean re

$(NAME)	:	$(OBJ) $(HEADER)
	ar rcs $(NAME) $?

all	:	$(NAME)

%.o	:	%.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean	:
	rm -rf $(OBJ)

fclean	:	clean
	rm -rf $(NAME)

re	:	fclean all
