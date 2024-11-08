var arrayNumbers:[Int] = [1, 2, 3, 4, 5];

arrayNumbers.count;

print(arrayNumbers.first);
print(arrayNumbers.last);

arrayNumbers += [6, 7, 8, 9];
arraNumbers.append(10);
arrayNumbers.append(contentOf: [11, 12, 13, 14, 15]);

arrayNumbers.remove(at: 0);
arrayNumbers.removeFirst();
arrayNumbers.removeLast();

//arrayNumbers.removeAll();

arrayNumbers.insert(0, at: 0);