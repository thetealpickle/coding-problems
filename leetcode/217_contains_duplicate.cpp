// Created by Jessica Joseph on 4/12/18

#include <iostream>
#include <map>
#include <vector>

bool containsDuplicate(vector<int> &nums) {
	unordered_set<int> hashTable;

	for (auto element: nums) {
		if (hashTable.find(element) != hashTable.end()){
			return true;
		} else {
			hashTable.insert(element) = 1;
		}
	}

	return false;
}
