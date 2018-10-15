// Created by Jessica Joseph on 10/15/18

#include <algorithm>
#include <iostream>
#include <map>
#include <string>

using namespace std;

bool isUnique(string input) {
	// an algorithm to determine if a string has all unique characters
	
	map<char, int> table;

	for (auto &ch: input) {
		if (table.find(ch) != table.end()) {
			return false;
		} else {
			table[ch] = 1;
		}
	}

	return true;
}

bool isUniqueNoDS(string input) {
	// an algorithm to determine if a string has all unqiue characters 
	// w/o additional data structures
	
	sort(input.begin(), input.end());

	for (int i = 1; i < input.length(); i++ ) {
		if (input[i] == input[i-1]) {
			return false;
		}	
	}

	return true;
}

int main() {

	cout << "Is BLAH unique? -> " << isUnique("BLAH") << endl;
	cout << "Is JESSICA unique? -> " << isUnique("JESSICA") << endl;
	cout << "Is '' unique? -> " << isUnique("") << endl << endl;

	cout << "-----------------WITHOUT ADDITIONAL DATA STRUCTURES-----------------" << endl;

	cout << "Is BLAH unique? -> " << isUniqueNoDS("BLAH") << endl;
	cout << "Is JESSICA unique? -> " << isUniqueNoDS("JESSICA") << endl;
	cout << "Is '' unique? -> " << isUniqueNoDS("") << endl << endl;


}
