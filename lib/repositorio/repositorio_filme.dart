import 'package:cinemeu/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select(String id) {
    if (id == "1") {
      return <Filme>[
        Filme(
          id: "1",
          titulo: "Demon Slayer Mugen Train",
          poster: "https://m.media-amazon.com/images/M/MV5BODI2NjdlYWItMTE1ZC00YzI2LTlhZGQtNzE3NzA4MWM0ODYzXkEyXkFqcGdeQXVyNjU1OTg4OTM@._V1_.jpg",
          sinopse:
              "Em Demon Slayer - Mugen Train, durante o período Taisho no Japão, o jovem Tanjiro volta para casa depois de um dia de trabalho e encontra sua família brutalmente assassinada por um demônio. Para pior a situação, sua irmã mais jovem, Nezuko, foi transformada em uma criatura demoníaca. Agora ele precisará lutar para vingar sua família e recuperar a irmã.",
          duracao: 117,
          classificacao: "+14",
        ),
        Filme(
          id: "2",
          titulo: "Deu a Louca na Chapeuzinho",
          poster: "https://upload.wikimedia.org/wikipedia/pt/2/24/Hoodwinked.jpg",
          sinopse:
              "A tranquilidade da vida na floresta é alterada quando um livro de receitas é roubado. Os suspeitos do crime são Chapeuzinho Vermelho, o Lobo Mau, o Lenhador e a Vovó, mas cada um deles conta uma história diferente sobre o ocorrido. Cabe então ao inspetor Nick Pirueta investigar o caso e descobrir a verdade.",
          duracao: 80,
          classificacao: "Livre",
        ),
      ];
    }

    return <Filme>[
      Filme(
        id: "1",
        titulo: "Demon Slayer Mugen Train",
        poster: "https://m.media-amazon.com/images/M/MV5BODI2NjdlYWItMTE1ZC00YzI2LTlhZGQtNzE3NzA4MWM0ODYzXkEyXkFqcGdeQXVyNjU1OTg4OTM@._V1_.jpg",
        sinopse:
            "Em Demon Slayer - Mugen Train, durante o período Taisho no Japão, o jovem Tanjiro volta para casa depois de um dia de trabalho e encontra sua família brutalmente assassinada por um demônio. Para pior a situação, sua irmã mais jovem, Nezuko, foi transformada em uma criatura demoníaca. Agora ele precisará lutar para vingar sua família e recuperar a irmã.",
        duracao: 117,
        classificacao: "+14",
      ),
    ];
  }
}
