// Created by Jessica Joseph on 4/12/18

int firstUniqChar(string s) {
	map<char, int> container;
        
	for (auto element: s) {
		if (container.find(element) != container.end()) {
			container[element] += 1;
		} else {
			container[element] = 1;
		}
	}
        
	for (int i = 0; i < s.length(); i++) {
		if (container[s[i]] == 1) return i;
	}
        
	return -1;
}
