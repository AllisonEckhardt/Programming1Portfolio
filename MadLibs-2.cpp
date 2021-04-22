
#include <iostream> 
#include <string>
#include <bits/stdc++.h>
#include <unistd.h>
using namespace std;
int main() {
 string temp;
 char y;
 cout << "Mustafar Duel Madlib\n";
 sleep(2);
 cout << "Made By William Crawford, Abram Torres, and Allison Eckhardt\n";
 sleep(3);
 cout << "Script from the The Revenge of the Sith\n";
 sleep(2);
 cout << "Enter s to start\n";
 cin >> y;
 if (y=='s'){
 vector<string> vect;
 cout <<endl;
  cout << "Give me a name.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a verb.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a plural noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me an adjective.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a participle.\n";
 cin >> temp;
 vect.push_back(temp); 
 cout << "Give me a singular noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a noun.\n";
 cin >> temp;
 vect.push_back(temp);
 cout << "Give me a noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a singular noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a singular noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a noun.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me a transitive verb.\n";
 cin >> temp;
 vect.push_back(temp);
 cout << "Give me a past tense transitive verb.\n";
 cin >> temp;
 vect.push_back(temp);
  cout << "Give me an exclamation.\n";
 cin >> temp;
 vect.push_back(temp);
 sleep(1);
 cout <<endl;
 cout <<"I have failed you " << vect.at(0) << ". I was never able to teach you to " << vect.at(1) <<".\n";
 sleep(1);
 cout <<"I should have known the " << vect.at(2) << " were plotting to take over.\n";
 sleep(1);
 cout << "From the Sith! " << vect.at(0)<<", Chancellor Palpatine is evil.\n";
 sleep(1);
 cout <<"From the "<< vect.at(2)<<"' point of view! From my point of view, the "<<vect.at(2)<<" are "<<vect.at(3)<<".\n";
 sleep(1);
 cout << "Well, then you are " << vect.at(4) << ".\n";
 sleep(1);
 cout <<"This is the end for you, my "<<vect.at(5)<<". I wish it were otherwise.\n";
 sleep(1);
 cout <<"It's over, "<< vect.at(0)<<". I have the "<<vect.at(6)<<".\n";
 sleep(1);
 cout <<"You underestimate my "<<vect.at(7)<<".\n";
 sleep(1);
 cout <<"Don't try it.\n";
 sleep(1);
 cout<<"(Fancy lightsaber dismemberment sounds)\n";
 sleep(1);
 cout <<"You were the "<<vect.at(8)<<"! It was said that you would destroy the Sith, not join them. It was you who would bring "<<vect.at(9)<<" to the "<<vect.at(10)<<", not leave it in "<<vect.at(11)<<".\n";
 sleep(1);
 cout <<"I "<<vect.at(12)<<" you!\n";
 sleep(1);
 cout <<"You were my brother "<<vect.at(0)<<". I "<<vect.at(13)<<" you!\n";
 sleep(1);
 cout <<vect.at(14)<<"!\n";
return 0;
 }
}