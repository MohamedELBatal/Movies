
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/core/enum/enums.dart';
import 'package:movies_app/core/errors/failures.dart';
import 'package:movies_app/features/search/data/models/SearchModel.dart';

part 'search_state.freezed.dart';
@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(RequestStatus.init) RequestStatus getSearchStatus,
    SearchModel? searchModel,
    Failures? searchFailure,
    String? query,
  }) = _SearchState;
}
