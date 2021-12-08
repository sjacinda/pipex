NAME = pipex

SRCS = pipex.c

HEADER = pipex.h

OBJ = $(patsubst %.c, %.o, $(SRCS))	# $(SRCS) это текст в котором произойдёт замена == $(SRCS:%.c=%.o)

CC = gcc	# переменная компилятора

CFLAGS = -Wall -Wextra -Werror	# флаги компиляции

.PHONY = all clean fclean re	# исключаемые файлы, если такие есть

$(NAME): $(OBJ) $(HEADER)
	ar rcs $(NAME) $?

all: (NAME)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
