// Created by Jessica Joseph on 04/25/18

#include <iostream>
#include <map>
#include <string>
#include <stack>

using namespace std;

bool isValid(string s){
	stack<char> main;
	map<char, char> ref;
        
	// create hashtable reference
	ref[']'] = '[';
	ref['}'] = '{';
	ref[')'] = '(';
        
	for (auto c : s) {
		if (ref.find(c) == ref.end()) {
			main.push(c);
		} else {
			if (!main.empty()){
				char topChar = main.top();
				auto it = ref.find(c);
 				if (topChar == it->second) {
					main.pop();
				} else {
					return false;
				}
			} else {
				return false;
			}
		}
	}
        
	if (!main.empty()) {
		return false;
	}
        
	return true;
}
