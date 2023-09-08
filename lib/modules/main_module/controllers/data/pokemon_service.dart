import 'package:dio/dio.dart';
import 'package:pokedex_dvd/core/utils/api/api_url.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_gen.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';

class PokemonService {
  final Dio _dio = Dio();
  //fetch pokemon list
  Future<List<PokemonGen>> fetchPokemonGen() async {
    try {
      final response = await _dio.get('${Api.urlbase}generation/1');
      if (response.statusCode == 200) {
        final list = response.data['pokemon_species'] as List;
        final listPokemon = list.map((e) => PokemonGen.fromJson(e)).toList();
        return listPokemon;
      } else {
        throw Exception('Erro na busca');
      }
    } catch (e) {
      throw Exception('Exceção: $e');
    }
  }

  //fetch single Info
  Future<PokemonInfo> fetchPokemonGenInfo(String index) async {
    try {
      final response = await _dio.get('${Api.urlbase}pokemon/$index/');
      if (response.statusCode == 200) {
        final pokemon = PokemonInfo.fromJson(response.data);
        //add to pokemonInfo the evolution from fetchPokemonEvolution
        return pokemon;
      } else {
        throw Exception('Erro na busca');
      }
    } catch (e) {
      throw Exception('Exceção: $e');
    }
  }

  /* Desativei este método pq o [endpoint] da api esta retornando o index 
    incorreto do pokemón, de forma que por exemplo o Charmander esta retornando
    evolução na sequencia como metaphod, mas na verdade é o charmeleon.
    A documentação da api esta errada, e o endpoint não retorna o index correto
    fiz diversos testes e não obtive sucesso usando essa api por isso desativei
    Contornei colocando ele no finder e notificando com erro ao carregar os dados
    do pokemon
    */

  //get evolve chain
  // Future<String> fetchPokemonEvolutionChain(String index) async {
  //   try {
  //     final response = await _dio.get('${Api.urlbase}evolution-chain/$index/');
  //     if (response.statusCode == 200) {
  //       final pokemon = EvolutionChain.fromJson(response.data);
  //       return pokemon.evolvesTo[0].species.name;
  //     } else {
  //       throw Exception('Erro na busca');
  //     }
  //   } catch (e) {
  //     throw Exception('Exceção: $e');
  //   }
  // }
}
