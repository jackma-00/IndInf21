#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int next_state(int current_state, char input);

int main () {

    char s[10];
    int state;
    int err_flag;

    fprintf(stdout, "The grammar of the sequences should be an even sequence of a (even empty),followed by one, or more, or no, b, ended by c\n\n");

    do {
        state = 0;
        err_flag = 0;
        printf("Insert a sequence or the world 'quit' to close the program: ");
        fgets(s, 10, stdin); // the sequence must be of 8 characters at maxim considering the '\0' and '\n' characters ...
        fflush(stdin); // we should find a method to clean the stdin avoiding situations like: aaaaaaaaaaaaaaaaaaabc ... more letters than the allowed amount!
        for (int i = 0; i < strlen(s)-1; i++){
            state = next_state(state, s[i]);
            if (3 == state) break; // when we get a 'c' as input the state will become 3 and the process for current string will end up
            else if(-1 == state) err_flag = 1;
        }
        fprintf(stdout, "\nlast state: S%i\n", state);
        if (1 == err_flag || 3 != state) fprintf(stderr, "\n%s not allowed\n", s); // all the allowed strings must terminate in the state 3!
    } while (0 != strncmp(s, "quit", 4)); // comparison just on the firsts four bytes, otherwise the program doesn't work

    fprintf(stdout, "\nProgram ended\n");

    return 0;
    }

    int next_state(int current_state, char input){
        switch (current_state) {
            case 0:
                fprintf(stdout, "0/%c; ", input);
                if ('c' == input) return 3;
                else if ('a' == input) return 2;
                else if ('b' == input) return 1;
                else return -1;
            case 1:
                fprintf(stdout, "1/%c; ", input);
                if ('c' == input) return 3;
                else if('b' == input) return current_state;
                else return -1;
            case 2:
                fprintf(stdout, "2/%c; ", input);
                if ('a' == input) return 0;
                else return -1;
            default:
                return -1;
        }
    }
