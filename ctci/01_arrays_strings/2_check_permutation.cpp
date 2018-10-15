// Created by Jessica Joseph on 10/15/18

#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

bool checkPermutation(string input1, string input2) {
	// an algorithm to decide if one string is a permutation of the other
	
	sort(input1.begin(), input1.end());
	sort(input2.begin(), input2.end());

	if (input1 != input2) {
		return false;
	}

	return true;
}

int main() {
	cout << "Is 'jessica' a permutation of 'ssjciea'? -> " << checkPermutation("jessica", "ssjciea") << endl;
	cout << "Is 'dog' a permutation of 'cat'? -> " << checkPermutation("dog", "cat") << endl;
}
