import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/home/data/models/PopularModel.dart';
import 'package:movies_app/features/home/data/models/TopRatedModel.dart';
import 'package:movies_app/features/home/data/models/UpComingModel.dart';
import 'package:movies_app/features/home/domain/use_cases/get_popular_use_case.dart';
import 'package:movies_app/features/home/domain/use_cases/get_top_rated_use_case.dart';
import 'package:movies_app/features/home/domain/use_cases/get_upcoming_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetPopularUseCase getPopularUseCase;
  GetTopRatedUseCase getTopRatedUseCase;
  GetUpComingUseCase getUpComingUseCase;

  HomeBloc(
      {required this.getPopularUseCase,
        required this.getUpComingUseCase,
        required this.getTopRatedUseCase,})
      : super(const HomeState()) {
    on<GetPopularEvent>((event, emit) async {
      emit(state.copyWith(getPopularStatus: RequestStatus.loading));
      var result = await getPopularUseCase();
      result.fold(
            (l) {
          emit(state.copyWith(
              getPopularStatus: RequestStatus.failures, popularFailure: l));
        },
            (r) {
          emit(state.copyWith(
              getPopularStatus: RequestStatus.success, popularModel: r));
        },
      );
    });
    on<GetUpComingEvent>((event, emit) async {
      emit(state.copyWith(getUpComingStatus: RequestStatus.loading));
      var result = await getUpComingUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getUpComingStatus: RequestStatus.failures, upComingFailure: l));
      },
              (r) => {
            emit(state.copyWith(
                getUpComingStatus: RequestStatus.success, upComingModel: r))
          });
    });

    on<GetTopRatedEvent>((event, emit) async {
      emit(state.copyWith(getTopRatedStatus: RequestStatus.loading));
      var result = await getTopRatedUseCase();

      result.fold((l) {
        emit(state.copyWith(
            getTopRatedStatus: RequestStatus.failures, topRatedFailure: l));
      },
              (r) => {
            emit(state.copyWith(
                getTopRatedStatus: RequestStatus.success, topRatedModel: r))
          });
    });
  }
}