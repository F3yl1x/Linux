RM = rm -f

NAME = hallo

SRC = hallo.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
		cc $(OBJ) -o $(NAME)

clean:
		$(RM) $(OBJ)