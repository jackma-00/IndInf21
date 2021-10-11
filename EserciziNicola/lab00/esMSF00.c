#include <stdio.h>
#include <string.h>


int check_state(int current_state, char input);

int main () {

    char s[10];

    while(1) {
        int state = 0;
        printf("Insert a sequence:");
        fgets(s, 10, stdin);
        fflush(stdin);
        for (int i = 0; i < strlen(s)-1; i++){
            state = check_state(state, s[i]);
            if (3 == state) break;
            else if(-1 == state) goto err;
        }
        fprintf(stdout, "last state: S%i\n\n", state);
    }

    err: fprintf(stderr, "\n%snot allowed\n", s);

}

int check_state(int current_state, char input){
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
