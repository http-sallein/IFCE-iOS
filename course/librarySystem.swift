import Foundation

struct Livro {
    var id: Int
    var titulo: String
    var autor: String
    var categoria: String
}

var livros = [Livro]()
var nextID = 1

func adicionarLivro() {
    print("Digite o título do livro:")
    guard let titulo = readLine() else { return }

    print("Digite o autor do livro:")
    guard let autor = readLine() else { return }

    print("Digite a categoria do livro:")
    guard let categoria = readLine() else { return }

    let novoLivro = Livro(id: nextID, titulo: titulo, autor: autor, categoria: categoria)
    livros.append(novoLivro)
    nextID += 1

    print("Livro adicionado com sucesso!")
}

// Função para listar todos os livros
func listarLivros() {
    print("\n--- Lista de Livros ---")
    for livro in livros {
        print("ID: \(livro.id), Título: \(livro.titulo), Autor: \(livro.autor), Categoria: \(livro.categoria)")
    }
    print("-----------------------\n")
}

// Função para atualizar um livro
func atualizarLivro() {
    print("Digite o ID do livro que deseja atualizar:")
    guard let entradaID = readLine(), let id = Int(entradaID) else {
        print("ID inválido.")
        return
    }

    if let index = livros.firstIndex(where: { $0.id == id }) {
        print("Digite o novo título do livro:")
        guard let novoTitulo = readLine() else { return }

        print("Digite o novo autor do livro:")
        guard let novoAutor = readLine() else { return }

        print("Digite a nova categoria do livro:")
        guard let novaCategoria = readLine() else { return }

        livros[index].titulo = novoTitulo
        livros[index].autor = novoAutor
        livros[index].categoria = novaCategoria

        print("Livro atualizado com sucesso!")
    } else {
        print("Livro com ID \(id) não encontrado.")
    }
}

// Função para deletar um livro
func deletarLivro() {
    print("Digite o ID do livro que deseja deletar:")
    guard let entradaID = readLine(), let id = Int(entradaID) else {
        print("ID inválido.")
        return
    }

    if let index = livros.firstIndex(where: { $0.id == id }) {
        livros.remove(at: index)
        print("Livro deletado com sucesso!")
    } else {
        print("Livro com ID \(id) não encontrado.")
    }
}

func mostrarMenu() {
    print("""
    \n--- Sistema de Gerenciamento de Biblioteca ---
    1. Adicionar Livro
    2. Listar Livros
    3. Atualizar Livro
    4. Deletar Livro
    5. Sair
    Escolha uma opção:
    """)
}

func executarSistema() {
    var executando = true
    while executando {
        mostrarMenu()
        guard let opcao = readLine(), let escolha = Int(opcao) else {
            print("Opção inválida.")
            continue
        }

        switch escolha {
        case 1:
            adicionarLivro()
        case 2:
            listarLivros()
        case 3:
            atualizarLivro()
        case 4:
            deletarLivro()
        case 5:
            executando = false
            print("Saindo do sistema...")
        default:
            print("Opção inválida.")
        }
    }
}

executarSistema()
