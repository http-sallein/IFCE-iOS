//for in

let list = [0, 1, 2, 3, 4]

for number in list {
  print(number)
}

for number in 0...10 {
  print(number)
}

for number in 0..<10 {
  print(number)
}

let range = 0..<10

print(type(of: range))
// while

var num = 0

while num < 10 {

  print(num)
  num += 1
}

// repeat while

var num2 = 0

repeat {

  print(num2)
  num2 += 1
} while num2 < 10
