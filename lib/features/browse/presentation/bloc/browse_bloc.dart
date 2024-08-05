import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';
import 'package:movies_app/features/browse/domain/use_cases/get_browse_use_case.dart';

part 'browse_event.dart';
part 'browse_state.dart';
part 'browse_bloc.freezed.dart';

class BrowseBloc extends Bloc<BrowseEvent, BrowseState> {
  GetBrowseUseCase getBrowseUseCase;

  BrowseBloc({required this.getBrowseUseCase}) : super(const BrowseState()) {
    on<GetBrowseEvent>((event, emit) async{
      emit(state.copyWith(getBrowseStatus: RequestStatus.loading));

      var result = await getBrowseUseCase();
        result.fold((l) {
          emit(state.copyWith(getBrowseStatus: RequestStatus.failures,browseFailure: l));
        }, (r) {
          emit(state.copyWith(getBrowseStatus: RequestStatus.success,browseModel: r));
        });
    });
  }
}
