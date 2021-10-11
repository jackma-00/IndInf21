#include <stdio.h>
#include <string.h>
#include <malloc.h>

int check_state(int current_state, char input, char *output);

int main () {

    char s[10];
    char *output = malloc(3);
    output[1] = '/';


    while(1){
        int state = 0;
        printf("Insert a sequence:");
        fgets(s, 10, stdin);
        for (int i = 0; i < strlen(s) - 1; i++) {
            state = check_state(state, s[i], output);
            printf("the output is: %s\n", output);
            if(-1 == state) goto err;
            else if (3 == state || (i == strlen(s)-2)) {
                fprintf(stdout, "state: S%i\n\n", state);
                state = 0;
            }
        }
    }

    err: fprintf(stderr, "%s not allowed\n", s);

}

int check_state(int current_state, char input, char *output){
    switch (current_state) {
        case 0:
            //fprintf(stdout, "0/%c; ", input);
            if ('c' == input){
                output[0] = input;
                output[2] = '9';
                return 3;
            }
            else if ('a' == input){
                output[0] = input;
                output[2] = '4';
                return 2;
            }
            else if ('b' == input){
                output[0] = input;
                output[2] = '2';
                return 1;
            }
            else{
                output[0] = 'n';
                output[2] = 'o';
                return -1;
            }
        case 1:
            //fprintf(stdout, "1/%c; ", input);
            if ('c' == input){
                output[0] = input;
                output[2] = '6';
                return 3;
            }
            else if('b' == input){
                output[0] = input;
                output[2] = '1';
                return current_state;
            }
            else{
                output[0] = 'n';
                output[2] = 'o';
                return -1;
            }
        case 2:
            //fprintf(stdout, "2/%c; ", input);
            if ('a' == input){
                output[0] = input;
                output[2] = '5';
                return 0;
            }
            else{
                output[0] = 'n';
                output[2] = 'o';
                return -1;
            }
        case 3:
            return 0;
        default:
            output[0] = 'n';
            output[2] = 'o';
            return -1;
    }
}

