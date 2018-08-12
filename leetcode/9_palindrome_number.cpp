// Created by Jessica Joseph on 08/12/18

#include <iostream>
#include <string>

using namspace std;

bool isPalindrome(int x) {
	string input = to_string(x);
	string rightInput = "";

	if (input.length() == 1) return true;
	for (int i = input.length()-1; i >= 0; i--) rightInput += input[i];
	
	if (rightInput == input) return true;

	return false;
}
