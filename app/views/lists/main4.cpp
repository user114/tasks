#include <iostream>
#include <algorithm>

using namespace std;

int main(int c, char ** a)
{
	for(int number = 500; number <= 10000; number++)
	{
		int count = number/3;
		for (int i = 0; i < count; ++i)
		{
			if(i*i*i == number)
			{
				cout << number << "\r\n";
			}
		}
	}
	return 0;
}