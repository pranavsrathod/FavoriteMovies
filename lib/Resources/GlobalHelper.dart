
// ignore_for_file: file_names, unused_import
import 'package:url_launcher/url_launcher.dart';

/*
 * Create this provider so other dart files can access it
 */
class GlobalHelper{

  List<String> images = [
    "assets/images/Movie1.jpeg", "assets/images/movie2.jpeg", "assets/images/movie3.jpg", "assets/images/movie4.jpeg",
    "assets/images/movie5.jpg", "assets/images/movie6.png",
  ];
  // List<String> images = [
  //   "https://media.comicbook.com/2019/04/avengers-endgame-dolby-1165441.jpeg",
  //   "http://walyou.com/wp-content/uploads//2012/06/Dark-Knight-Trilogy-Poster-e1339628703850.jpg",
  //   "https://media-cache.cinematerial.com/p/500x/1sjmqekh/jojo-rabbit-french-movie-poster.jpg?v=1577777296",
  //   "https://media-cache.cinematerial.com/p/500x/cm7hiczc/interstellar-movie-cover.jpg?v=1463600357",
  //   "https://ih1.redbubble.net/image.960133654.8317/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg",
  //   "https://i.pinimg.com/originals/ef/3a/01/ef3a0166bbcd6abb1678f787193cc66c.png",
  // ];

  List<String> names = [
    "Avengers : Endgame", "The Dark Knight Rises", "Jojo Rabbit", "Interstellar", "Before Sunrise", "Lady Bird"
  ];

  List<String> description = [
    "Genre : Action/Sci-fi\nDirector : Anthony Russo; Joe Russo; \nReleased : 2019",
    "Genre : Action/Thriller\nDirector : Christopher Nolan\nReleased : 2012 ",
    "Genre : War/Comedy\nDirector : Taika Waititi\nReleased :  2019",
    "Genre : Sci-fi/Adventure\nDirector : Christopher Nolan\nReleased : 2014",
    "Genre : Romance/Drama\nDirector : Richard Linklater\nReleased : 1995",
    "Genre : Drama/Comedy\nDirector : Greta Gerwig\nReleased : 2017",
  ];

  final List <String> imdb = <String>[
    'https://www.imdb.com/title/tt4154796/',
    "https://www.imdb.com/title/tt1345836/",
    "https://www.imdb.com/title/tt2584384/",
    "https://www.imdb.com/title/tt0816692/",
    "https://www.imdb.com/title/tt0112471/",
    "https://www.imdb.com/title/tt4925292/"
  ];

  List <String> cast = [
    "Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, Josh Brolin",
    "Christian Bale, Michael Caine, Gary Oldman, Anne Hathaway, Tom Hardy, Marion Cotillard, Joseph Gordon-Levitt, Morgan Freeman",
    "Roman Griffin Davis, Thomasin McKenzie, Taika Waititi, Rebel Wilson, Stephen Merchant, Alfie Allen, Sam Rockwell, Scarlett Johansson",
    "Matthew McConaughey, Anne Hathaway, Jessica Chastain, Bill Irwin, Ellen Burstyn, Michael Caine",
    "Ethan Hawke, Julie Delpy",
    "Saoirse Ronan, Laurie Metcalf, Tracy Letts, Lucas Hedges, Timothée Chalamet, Beanie Feldstein, Stephen McKinley Henderson, Lois Smith",

  ];

  final List <String> directors = [
    "Anthony Russo, Joe Russo",
    "Christopher Nolan",
    "Taika Waititi",
    "Christopher Nolan",
    "Richard Linklater",
    "Greta Gerwig"
  ];

  List <String> runtime = [
    "3 hours 2 minutes",
    "2 hours 45 minutes",
    "1 hour 48 minutes",
    "2 hours 49 minutes",
    "1 hour 45 minutes",
    "1 hour 33 minutes"

  ];

  List <String> imdbRating = [
    "8.4 / 10",
    "8.4 / 10",
    "7.9 / 10",
    "8.6 / 10",
    "8.1 / 10",
    "7.4 / 10"

  ];

  List <String> rottenTomatoesRating = [
    "94 %",
    "87 %",
    "80 %",
    "72 %",
    "100 %",
    "99 %"
  ];

  final List <String> wikipedia = <String> [
    'https://en.m.wikipedia.org/wiki/Avengers:_Endgame',
    'https://en.m.wikipedia.org/wiki/The_Dark_Knight_Rises',
    'https://en.m.wikipedia.org/wiki/Jojo_Rabbit',
    'https://en.m.wikipedia.org/wiki/Interstellar_(film)',
    'https://en.m.wikipedia.org/wiki/Before_Sunrise',
    'https://en.m.wikipedia.org/wiki/Lady_Bird_(film)',
];

  List<String> getImages(){
    return images;
  }
  List<String> getNames() {
    return names;
  }
  List<String> getDescription() {
    return description;
  }
  List<String> getImdb() {
    return imdb;
  }
  List<String> getWiki() {
    return wikipedia;
  }
  List<String> getCast() {
    return cast;
  }
  List<String> getDirectors() {
    return directors;
  }
  List<String> getRuntime() {
    return runtime;
  }
  List<String> getimdbRating() {
    return imdbRating;
  }
  List<String> getRTRating() {
    return rottenTomatoesRating;
  }

}