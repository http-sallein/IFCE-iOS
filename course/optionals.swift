var age: Int = 10
var maybeAge: Int?

var dict: [String: Int] = [:]

dict["ovos"] = 12

// Safes
if let ovos = dict[ovos] { print(ovos) }

guard let ovosVar = dict[ovos] else { print("sem ovos") }
print(ovosVar)

// Unsafe
print(dict["ovos"])


print(dict["ovos"] ?? 0))