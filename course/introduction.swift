print("Bem vindos a aula de Swift");

let nome: String = "Isaac";

// print(nome);

class Person {

  let name: String;
  let age: Int;

  init(name: String, age: Int) {

    self.name = name;
    self.age = age;
  }

  func sayHello() {

    print("Hi, my name is \(self.name) and I'm \(self.age) years old");
  }
}

let person = Person(name: "Isaac", age: 18);

person.sayHello();

class Student: Person {

  let matricula: String;
  let curso: String

  init(name: String, age: Int, matricula: String, curso: String) {

    self.matricula = matricula;
    self.curso = curso;
    super.init(name: name, age: age);
  }
  
  override func sayHello() {
      print("Olá, me chamo \(self.name) e faço \(self.curso)");
  }
}

let varNull: Int? = nil
