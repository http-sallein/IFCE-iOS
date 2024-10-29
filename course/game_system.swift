View.main();

class UserModel {

  let name: String = "";
  let favoritesGames: [GameModel] = [];
}

class GameModel {

  let name: String = "";
  let description: String = "";

  init(_ name: String, _ description: String) {

    self.name = name;
    self.description = description;
  }
}

enum Route {

  case  
    home, 
    options, 
    gameList, 
    addGame, 
    gameSelect, 
    deleteGameSelected, 
    editGameSelected
  ;
}

class View {
  
  let viewModel: ViewModel = .init(); 

  func main() {
    while true {

      print("Início");
      
    }
  }
}

class ViewModel {

  let route: Route = .home;
  
  let player: UserModel = .init();
  
  let gameSelected: GameModel?;
  let gameSelectedIndex: Int?;
}