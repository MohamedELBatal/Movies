part of 'browse_bloc.dart';

@freezed
class BrowseState with _$BrowseState {
  const factory BrowseState({
   @Default(RequestStatus.init) RequestStatus getBrowseStatus,
    BrowseModel? browseModel,
    Failures? browseFailure,
}) = _BrowseState;
}
