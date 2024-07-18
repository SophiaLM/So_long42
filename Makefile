NAME = so_long.a

LIB = ar rcs

CFLAGS = -Wall -Wextra -Werror

CC = gcc

RM = rm -f

SRC = ft_ \

OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(LIB) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	$(CC) $(CFLAGS) -c $^ -o $@

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all bonus clean fclean re
