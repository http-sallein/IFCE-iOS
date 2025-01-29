var A: Set<Int> = [1, 1, 2, 4]
var B: Set<Int> = [6, 7, 8, 11]

A.insert(10);

print(A)

print(A.unions(B))

print(A.intersection(B))

print(A.symetricDifference(B))

print(A.isDijoint(with: B))

print(A.subtracting(B))

print(A.isSubset(of: B))

print(A.isSupeset(of: B))