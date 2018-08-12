// Created by Jessica Joseph on 08/12/18

#include <iostream>
#include <map>
#include <string>

using namespace std;

int romanToInt(string s) {
	int result = 0;
	unordered_map<char, int> hash = {
		{'I', 1},
		{'V', 5},
		{'X', 10},
		{'L', 50},
		{'C', 100},
		{'D', 500},
		{'M', 1000}
	};
	
	for (int i = 0; i < s.length(); i++) {
		if (s[i] == 'I') {
			if (s[i+1] == 'V' || s[i+1] == 'X') result -= hash[s[i]];
			else { result += hash[s[i]]; }
		} else if (s[i] == 'X') {
			if (s[i+1] == 'L' || s[i+1] == 'C') result -= hash[s[i]];
			else { result += hash[s[i]]; }
		} else if (s[i] == 'C') {
			if (s[i+1] == 'D' || s[i+1] == 'M') result -= hash[s[i]];
			else { result += hash[s[i]]; }
		} else {
			result += hash[s[i]];
		}
	}

	return result;
}
