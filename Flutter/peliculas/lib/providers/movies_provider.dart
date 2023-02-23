import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/helpers/debouncer.dart';
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {

  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '94c7f7c28b61365403c7e0b64ed89291';
  final String _languaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  final debouncer = Debouncer(
    duration: const Duration(milliseconds: 500)
  );

  final StreamController<List<Movie>> _suggestionStreamController = new StreamController.broadcast();

  Stream<List<Movie>> get suggestionStream => this._suggestionStreamController.stream;

  MoviesProvider(){

    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String segment, [int page = 1]  ) async{

      final url = Uri.https(_baseUrl, segment, {
      'api_key': _apiKey,
      'languaje': _languaje,
      'page': '$page'
    });


    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies()async {
    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
    // final Map<String, dynamic> decodeData = json.decode(response.body);
    // print(nowPlayingResponse.results[0].title);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }


  getPopularMovies() async {

    _popularPage++;

    final jsonData = await _getJsonData('3/movie/popular', _popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];

    notifyListeners();


  }

  Future<List<Cast>> getMovieCast(int movieId) async{

    if(moviesCast.containsKey(movieId)) return moviesCast[movieId]!;

    print('Pidiendo info al servidor de actores');

    final jsonData = await _getJsonData('3/movie/$movieId/credits');
    final creditsResponse = CreditsResponse.fromJson(jsonData);

    moviesCast[movieId] = creditsResponse.cast;

    return creditsResponse.cast;


  }


  Future<List<Movie>> searchMovie(String query ) async {

    final url = Uri.https(_baseUrl, '3/search/movie',{

      'api_key': _apiKey,
      'languaje': _languaje,
      'query': query
    });

    final response = await http.get(url);

    final searchResponse = SearchResponse.fromJson(response.body);
    
    return searchResponse.results;

  }

  void getSuggestionByQuery(String searchTerm){

    debouncer.value = '';
    debouncer.onValue = (value) async {

      // print('Tenemos valor a buscar: $value');

      final results = await searchMovie(value);
      _suggestionStreamController.add(results);

    };

    final timer = Timer.periodic(const Duration(milliseconds: 300), ( _ ) {

      debouncer.value = searchTerm;

    });

    Future.delayed(const Duration(milliseconds: 301)).then(( _ ) => timer.cancel());

  }



}