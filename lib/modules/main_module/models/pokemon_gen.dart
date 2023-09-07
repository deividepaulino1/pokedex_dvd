class PokemonGen {
  String? name;
  String? url;

  PokemonGen({
    this.name,
    this.url,
  });

  PokemonGen.fromJson(Map<String, dynamic> json) {
    name = json['name'];

    url = json['url'];
  }
}
