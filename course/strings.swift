// var name: String = "Isaac"
// var test = String()
// var txt = ""

// var longText: String = "text text \n text text"

// var label = """
//   text text text
//   text text text /
//   text text texts 
// """

// var text = #" text \n text "#

// print(text)

// Manipulation

var nameManipulation = "Isaac Lima"
for letter in nameManipulation { print(letter) }

if let index = nameManipulation.firstIndex(of: " ") {
  
  let after = nameManipulation.index(after: index)
  
  let firstName = String(nameManipulation[...index])
  let lastName = String(nameManipulation[after...])

  print(firstName + lastName)
}

// challenge

let urls = [ "http", "https", "http", "http" ]
