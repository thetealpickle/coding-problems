// Created by Jessica Joseph on 04/16/18

#include <iostream>
#include <sort>
#include <string>

using namespace std;

bool isAnagram(string s, string t) {
	sort(t.begin(), t.end());
	sort(s.begin(), s.end());

	if (t == s) return true;

	return false;
}
