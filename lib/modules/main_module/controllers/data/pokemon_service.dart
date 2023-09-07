import 'package:dio/dio.dart';
import 'package:pokedex_dvd/core/utils/api/api_url.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_gen.dart';
import 'dart:developer' as d;

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
        return pokemon;
      } else {
        throw Exception('Erro na busca');
      }
    } catch (e) {
      throw Exception('Exceção: $e');
    }
  }
}
