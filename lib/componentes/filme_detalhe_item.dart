import 'package:cinemeu/componentes/sessoes_view.dart';
import 'package:cinemeu/entidade/filme.dart';
import 'package:cinemeu/vm/sessao_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmeDetalheItem extends StatelessWidget {
  final Filme filme;

  const FilmeDetalheItem({super.key, required this.filme});
  @override
  Widget build(BuildContext context) {
    final sessaoVM = Provider.of<SessaoViewModel>(context, listen: false);
    final sessoes = sessaoVM.groupedByDate();

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
              Column(
                children: [SessoesView(sessoes: sessoes)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
