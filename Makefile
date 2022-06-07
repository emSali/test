# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esali <esali@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/20 13:12:29 by esali             #+#    #+#              #
#    Updated: 2022/06/07 17:36:43 by esali            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
			ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
			ft_memset.c ft_strchr.c ft_strlcat.c ft_strlcpy.c \
			ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c \
			ft_tolower.c ft_toupper.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
			ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c


BONUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c 

OBJS		= $(SRCS:c=o)
BONUS_OBJS	= $(BONUS:.c=.o)
NAME		= libft.a
CC			= gcc
CFLAGS		= -Wall -Werror -Wextra
RM			= rm -f

.c.o:
			$(CC) $(CGLAGS) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS)
				ar rc $(NAME) $(OBJS)
				ranlib $(NAME)

all:		$(NAME)

clean:
			$(RM) $(OBJS) $(BONUS_OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

bonus:		$(OBJS) $(BONUS_OBJS)
				ar rc $(NAME) $(OBJS) $(BONUS_OBJS)