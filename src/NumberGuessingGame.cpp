#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main ()
{
        int iSecret, iGuess;


        srand (time(NULL));

        iSecret = rand() % 100 + 1;
        
        do {
                printf ("Guess the number (1-100): ");
                scanf ("%d" ,&iGuess);
                if (iSecret>iGuess) puts ("The number is too low. Try again");
                else if (iSecret<iGuess) puts ("The number is too high. Try again");
        } while (iSecret!=iGuess);
        

        std::cout << ("Congrats, you have guessed the number!");
        return 0;


        


}