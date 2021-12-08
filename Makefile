# cсылки с заменой более простой способ чем функция patsubst. Например ссылка с заменой: $(SRCS:%.c=%.o) == $(patsubst %.c, %.o, $(SRCS))
# ещё одно сокращение - замена суффикса в конце именем файлов(изменение расщирения файла), упрощает жизнь по сравнению с использованием функции patsubst. Такая ссылка с заменой: $(SRCS:.c=.o) == $(patsubst %.c, %.o, $(SRCS))

NAME = pipex

SRCS = pipex.c

HEADER = pipex.h

OBJ = $(patsubst %.c, %.o, $(SRCS))
OBJ = $(SRCS:%.c=%.o)
OBJ = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re

$(NAME): $(OBJ) $(HEADER)
	ar rcs $(NAME) $?

%.o: %.c $(HEADER)

all: (NAME)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
