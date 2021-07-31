import 'package:breakingbad/data/web_services/web_services.dart';

import '../models/characters.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Characters>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) => Characters.fromJson(character)).toList();
  }


}