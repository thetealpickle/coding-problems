// Created by Jessica Joseph on 4/12/18

#include <iostream>
#include <map>
#include <vector>

vector<int> anagramMapping(vector<int> &A, vector<int> &B) {
	vector<int> mappingVector;
	map<int, int> hashTable;

	for (auto i=0; i < B.size(); i++) {
		hashTable[B[i]] = i;
	}

	for (auto i=0; i < A.size(); i++) {
		mappingVector.oush_back(hashTable[A[i]]);
	}

	return mappingVector;
}
