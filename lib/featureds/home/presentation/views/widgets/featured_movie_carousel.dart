import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/cubit/newest_movie_cubit.dart';
import 'carouse_buttom.dart';

class FeaturedMovieCarousel extends StatelessWidget {
  const FeaturedMovieCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestMovieCubit, NewestMovieState>(
      builder: (context, state) {
        if (state is NewestMovieLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is NewestMovieFailuar) {
          return Center(
            child: Text(state.failure.message),
          );
        }

        if (state is NewestMovieSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: PageView.builder(
                    itemCount: state.movies.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 380,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500${state.movies[index].posterPath}',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -25,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouseButtom(
                        onTap: () {},
                        backGroundColor: Colors.white,
                        color: Colors.black,
                        icon: Icons.play_arrow,
                        text: 'Play',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CarouseButtom(
                        onTap: () {},
                        backGroundColor: Colors.grey.shade800,
                        color: Colors.white,
                        icon: Icons.add,
                        text: 'My List',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
