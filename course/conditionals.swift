//if else

var isOne = false

if isOne { print("ligado") }
else { print("desligado") }

// switch

var number = 1

switch number {

  case 0...10:
    print("number between 0 and 10")

  case 11...20:
    print("number between 11 and 20")
    fallthrough
  
  case 21:
    print("number 21")

  default
    print("number out of range")")
}