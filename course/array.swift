var list: [Int] = [1, 2, 3, 4, 5]

list += [6, 7, 8, 10]
list.append(contentsOf: [11, 12, 13, 14, 15])

//list.removeAll()

list.remove(at: 3)

list.insert(100, at: 3);

print(list)