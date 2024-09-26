import 'package:cinemeu/entidade/filme.dart';
import 'package:flutter/material.dart';

class FilmeDetalheItem extends StatelessWidget {
  final Filme filme;

  const FilmeDetalheItem({super.key, required this.filme});
  @override
  Widget build(BuildContext context) {

    final tema = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 4,
      ),
      child: Material(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Image.network(
                filme.poster,
                width: 200,
                fit: BoxFit.fitHeight,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filme.titulo,
                        style: tema.textTheme.titleLarge,
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Sinopse: ${filme.sinopse}",
                          style: tema.textTheme.bodyMedium,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Duração: ${filme.duracao}",
                        style: tema.textTheme.bodySmall,
                      ),
                      Text(
                        "Classificação: ${filme.classificacao}",
                        style: tema.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
