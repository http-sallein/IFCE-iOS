var dict: Dictionary<String, Int> = [:]
var dictRecommend: [String: Int] = [:]

dictRecommend["a"] = 10

print(dictRecommend)

print(dictRecommend.keys)
print(dictRecommend.values)

dictRecommend["a"] = nil

dictRecommend["a"] = 10
dictRecommend.removeValue(forKey: "a")
