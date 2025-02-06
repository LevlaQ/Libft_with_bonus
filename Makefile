# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gyildiz <gyildiz@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/28 13:21:49 by gyildiz           #+#    #+#              #
#    Updated: 2025/02/05 15:41:10 by gyildiz          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =			libft.a

SRCS =			ft_memset.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c\
				ft_isprint.c ft_strlen.c ft_bzero.c ft_memcpy.c ft_memmove.c\
				ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c\
				ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c\
				ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c\
				ft_itoa.c ft_strtrim.c ft_split.c ft_strmapi.c ft_striteri.c\
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c


OBJS =			$(SRCS:.c=.o)

BONUS_SRCS =	ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c\
				ft_lstiter.c ft_lstlast.c ft_lstnew.c ft_lstsize.c

BONUS_OBJS = 	$(BONUS_SRCS:.c=.o)

CC =			cc

CFLAGS =		-Wall -Wextra -Werror

all:			$(NAME)

$(NAME):		$(OBJS)

				ar -rc $(NAME) $(OBJS)
				
bonus: 			$(OBJS) $(BONUS_OBJS)

				ar -rc $(NAME) $(OBJS) $(BONUS_OBJS)

fclean:			clean
				rm -rf $(NAME)

clean:
				rm -rf $(OBJS) $(BONUS_OBJS)

re : fclean all

.PHONY: all fclean clean re bonus
