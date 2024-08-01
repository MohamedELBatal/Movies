import 'package:bloc/bloc.dart';
import 'package:movies_app/features/browse/domain/use_cases/get_browse_use_case.dart';
part 'browse_state.dart';

class BrowseBloc extends Cubit<BrowseState> {
  GetBrowseUseCase getBrowseUseCase;

  BrowseBloc({required this.getBrowseUseCase}) : super(BrowseState()) {
    // on<GetBrowseEvent>((event, emit) async {
    //   emit(state.copyWith(getBrowseStatus: RequestStatus.loading));
    //
    //   var result = await getBrowseUseCase();
    //   result.fold((l) {
    //     emit(state.copyWith(
    //         getBrowseStatus: RequestStatus.failures, browseFailure: l));
    //   }, (r) {
    //     emit(state.copyWith(
    //         getBrowseStatus: RequestStatus.success, browseModel: r));
    //   });
    // });
  }
}
