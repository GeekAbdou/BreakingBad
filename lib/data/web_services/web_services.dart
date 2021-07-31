import 'package:breakingbad/helper/constants.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiURLs.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, 
      receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
    
  }

   Future<List<dynamic>> getCharacterQuotes(String charName) async {
    try {
      Response response = await dio.get('quote' , queryParameters: {'author' : charName});
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }



}