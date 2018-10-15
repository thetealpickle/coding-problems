// Created by Jessica Joseph on 4/12/18

#include <iostream>
#include <map>
#include <string>

int numJewelsInStones(string J, string S){
	map<char, int> container;
	int jewelCount = 0;

	for (char element: S) {
		if (container.find(element) != container.end()) {
			container[element] += 1;
		} else {
			container.insert(make_pair(element, 1));
		}
	}

	for (char element: J) {
		if (container.find(element) != container.end()) {
			jewelCount += container[element];
		}
	}

	return jewelCount;
}
