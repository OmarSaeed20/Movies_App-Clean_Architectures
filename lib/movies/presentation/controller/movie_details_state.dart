part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMsg = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMsg = '',
  });

  final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMsg;
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMsg;

  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMsg,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMsg,
  }) =>
      MovieDetailsState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailsState: movieDetailsState ?? this.movieDetailsState,
        movieDetailsMsg: movieDetailsMsg ?? this.movieDetailsMsg,
        recommendation: recommendation ?? this.recommendation,
        recommendationState: recommendationState ?? this.recommendationState,
        recommendationMsg: recommendationMsg ?? this.recommendationMsg,
      );

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMsg,
        recommendation,
        recommendationState,
        recommendationMsg,
      ];
}
