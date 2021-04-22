#include<iostream>
#include<algorithm>
#include<string>
#include<stdio.h>

using namespace std;

void firstLetter(string);
void translateWord(string);

int main ()
{
  string wordInput="";
  char runSentinel = 'y';
  cout << "            Pig Latin Translator" << endl;
  cout << "Welcome to the Pig Latin Translator. Would you like to translate a word? (y/n)";
  
  do
  {
    if (runSentinel == 'y')
    {
      cout << "enter the SINGLE word you would like to translate. Only lowercase letters" << endl;
      cin >> wordInput;
    }
  }while (runSentinel != 'n');
  return 0;
}
void firstLetter(string wordInput);
{

  char firstLetter;
  firstLetter = wordInput.at(0);
  if (firstLetter == 'a' || firstLetter == 'e' || firstLetter == 'i' || firstLetter == 'o' || firstLetter == 'u')
  {
    cout << "Pig Latin= " << wordInput << "way" << endl;
  }
  else
  {
    translateWord(wordInput);
  }
}
void translateWord(string wordInput);

{
  char firstLetter;
  lastLetter = wordInput.length();

  firstLetter = wordInput.at(0);
  string otherLetters = wordInput.substr((1), (lastLetter-1));
  cout << "Pig Latin= " << otherLetters << firstLetter << "ay" << endl;
  return 0;
}



  








