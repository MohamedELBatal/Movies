import 'package:bloc/bloc.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/features/search/domain/use_cases/get_search_use_case.dart';
import 'package:movies_app/features/search/presentation/bloc/search_event.dart';
import 'package:movies_app/features/search/presentation/bloc/search_state.dart';


part 'search_bloc.freezed.dart';
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  GetSearchUseCase getSearchUseCase;

  SearchBloc({required this.getSearchUseCase}) : super(const SearchState()) {
    on<GetSearchEvent>((event, emit) async{
      emit(state.copyWith(getSearchStatus: RequestStatus.loading));

      var result = await getSearchUseCase(event.query);
      result.fold((l) {
        emit(state.copyWith(getSearchStatus: RequestStatus.failures,searchFailure: l));
      }, (r) {
        emit(state.copyWith(getSearchStatus: RequestStatus.success,searchModel: r, query: r.query));
      });
    });
  }
}
