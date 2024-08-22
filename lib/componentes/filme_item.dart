import 'package:cinemeu/entidade/filme.dart';
import 'package:flutter/material.dart';

class FilmeItem extends StatelessWidget {
  final Filme filme;

  const FilmeItem({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    final screenSize = MediaQuery.of(context).size;
    final listHeight = screenSize.height * 0.35;
    return Container(
      margin: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 4,
      ),
      child: Material(
        elevation: 5,
        child: SizedBox(
          width: screenSize.width,
          height: listHeight,
          child: Row(
            children: [
              SizedBox(
                  width: screenSize.width / 4,
                  child: Image.network(filme.poster)),
              Column(
                children: [
                  Text(
                    filme.titulo,
                    style: tema.textTheme.titleLarge,
                  ),
                  SizedBox(
                    width: screenSize.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Duração: ${filme.duracao}",
                          style: tema.textTheme.bodySmall,
                        ),
                        Text(
                          "Classificação: ${filme.classificacao}",
                          style: tema.textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 2,
                    child: Text(
                      "Sinopse: ${filme.sinopse}",
                      style: tema.textTheme.bodyMedium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
