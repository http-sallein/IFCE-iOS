var view: View = View();
view.main();

class UserModel {

  var name: String = "";
  var favoritesGames: [GameModel] = [];
}

class GameModel {

  var name: String;

  init(_ name: String) { self.name = name }
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
  
  var viewModel: ViewModel = .init(); 

  func main() {
    while true {

      switch viewModel.route {

        case .home: homeView();

        case .options: optionsView();

        case .gameList: gameListView();

        case .addGame: addGameView();

        case .gameSelect: gameSelectView();

        case .deleteGameSelected: deleteGameSelectedView();

        case .editGameSelected: editGameSelectedView();
      }
    }
  }

  func homeView() {

    print("Para começar, informe o seu nome");
    
    if !viewModel.setName() { print("Informe um nome válido") }
  }

  func optionsView() {
    print("Seja bem-vindo(a) \(viewModel.player.name)! O que você deseja fazer?");

    print("A: Ver meus jogos");
    print("B: Adicionar um jogo");

    if !viewModel.setOptions() { print("Informe um valor válido") }
  }

  func gameListView() {

    if(viewModel.player.favoritesGames.isEmpty) {

      print("Você não possui nenhum jogo cadastrado");
    }

    else {

      print("Seus jogos favoritos são:");

      for (index, game) in viewModel.player.favoritesGames.enumerated() {
        print("\(index + 1): \(game.name)")
      }
    }

    print("Você deseja selecionar um jogo? (S/N)")

    if(viewModel.isGameSelected()) { viewModel.route = .gameSelect } 

    else { viewModel.route = .options }
  }

  func addGameView() {

    print("Nome do jogo:");

    if(viewModel.setGame()) { print("Jogo adicionado com sucesso") } 
    else { print("Coloque um nome válido") }
  }

  func gameSelectView() {

    print("Escolha o jogo");

    if(viewModel.setGameSelect()) { 

      if let game = viewModel.gameSelected {

        print("O que você deseja fazer com o jogo \(game.name)?");      

        print("A: Editar");
        print("B: Deletar");
        print("C: Sair");

        if(!viewModel.selectOption()) {
          
          print("Faça uma seleção válida");
        }
      }
      
    } else { print("Selecione um jogo válido") }
  }

  func deleteGameSelectedView() {

    print("Jogo deletado com sucesso");

    viewModel.deleteGameSelected();
  }

  func editGameSelectedView() {

    print("Digite o novo nome do jogo \(viewModel.gameSelected!.name)");

    if viewModel.editGameSelected() { print("Jogo editado com sucesso") } else { print("Deu error") }
  }
}

class ViewModel {

  var route: Route = .home;
  
  var player: UserModel = .init();
  
  var gameSelected: GameModel?;
  var gameSelectedIndex: Int?;

  func setName() -> Bool {

    let value = readLine();

    if let name = value {

      player.name = name;
      route = .options;
      
      return true;   
    } else { return false }
  }

  func setOptions() -> Bool {

    let value = readLine();

    if let option = value {

      if(option.uppercased() == "A") { route = .gameList }
      if(option.uppercased() == "B") { route = .addGame }

      return false;
    } else { return false }
  }

  func setGameSelect() -> Bool {

    let value = readLine();

    guard let IndexGameSelected = value else { return false }
    guard let index = Int(IndexGameSelected) else { return false }

    if(index > 0 && index < player.favoritesGames.count + 1) {

      gameSelectedIndex = index - 1;
      gameSelected = player.favoritesGames[index - 1];

      return true;
    }

    return false;
  }

  func setGame() -> Bool {

    let value = readLine();

    if let game = value {

      player.favoritesGames.append(GameModel(game));
      route = .options;

      return true
    } else { return false }    
  }

  func selectOption() -> Bool {

    let value = readLine();

    guard let select = value else { return false }

    if select.uppercased() == "A" {

      route = .editGameSelected;
    }

    if select.uppercased() == "B" {

      route = .deleteGameSelected;
    }

    if select.uppercased() == "C" {

      route = .options;
      return true;
    }

    return false;
  }

  func isGameSelected() -> Bool {

    let value = readLine();

    if let option = value {

      if(option.uppercased() == "S") { return true } 
    }
    
    return false;
  }

  func deleteGameSelected() {

    player.favoritesGames.remove(at: gameSelectedIndex!);

    route = .options;
  }

  func editGameSelected() -> Bool{

    let value = readLine();

    if let newNameGame = value {

      player.favoritesGames[gameSelectedIndex!].name = newNameGame

      route = .options;

      return true;
    }

    return false;
  }
}