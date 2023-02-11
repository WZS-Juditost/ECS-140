def add_char():
    if lex_len <= 98:
        lexeme[lex_len] = next_char
        lex_len += 1
        lexeme[lex_len] = 0
    else:
        print("Error - lexeme is too long")

def get_char():
    global next_char, char_class
    next_char = in_fp.read(1)
    if next_char:
        if next_char.isalpha():
            char_class = LETTER
        elif next_char.isdigit():
            char_class = DIGIT
        else:
            char_class = UNKNOWN
    else:
        char_class = EOF

def get_non_blank():
    global next_char, char_class
    while next_char.isspace():
        get_char()

def lex():
    global lex_len, next_token, lexeme
    lex_len = 0
    get_non_blank()
    if char_class == LETTER:
        add_char()
        get_char()
        while char_class == LETTER or char_class == DIGIT:
            add_char()
            get_char()
        next_token = IDENT
    elif char_class == DIGIT:
        add_char()
        get_char()
        while char_class == DIGIT:
            add_char()
            get_char()
        next_token = INT_LIT
    elif char_class == UNKNOWN:
        next_token = lookup(next_char)
        get_char()
    elif char_class == EOF:
        next_token = EOF
        lexeme = "EOF"
    print("Next token is: {} Next lexeme is {}".format(next_token, lexeme))
    return next_token

def lookup(ch):
    if ch == '(':
        add_char()
        return LEFT_PAREN
    elif ch == ')':
        add_char()
        return RIGHT_PAREN
    elif ch == '+':
        add_char()
        return ADD_OP
    elif ch == '-':
        add_char()
        return SUB_OP
    elif ch == '*':
        add_char()
        return MULT_OP
    elif ch == '/':
        add_char()
        return DIV_OP
    else:
        add_char()
        return EOF

# Global declarations
char_class = 0
lexeme = [0] * 100
next_char = ""
lex_len = 0
token = 0
next_token = 0

# Open the input data file and process its contents
in_fp = open("front.in", "r")
get_char()
while next_token != EOF:
    lex()