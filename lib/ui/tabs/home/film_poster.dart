import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/data/models/film_details/results.dart';
import 'package:movies/ui/filmdetails/film_details.dart';

class FilmPoster extends StatelessWidget {
  FilmPoster({super.key, required this.film});

  Result film;

  @override
  Widget build(BuildContext context) {
    String posterPath = "https://image.tmdb.org/t/p/w500${film.posterPath}";
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FilmDetails.route, arguments: film);
      },
      child: Container(
          alignment: AlignmentDirectional.topStart,
          width: 97,
          height: 128,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: CachedNetworkImageProvider(posterPath))),
          child: Image.asset("assets/images/add_icon.png")),
    );
  }
}
