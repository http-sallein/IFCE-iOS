// Create a operator

prefix operator √
prefix func √(_ x: Double) -> Double {

  return  x.squareRoot();
}

print(√9)