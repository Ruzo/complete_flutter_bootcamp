import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flash_chat/domain/auth/signed_in_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flash_chat/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IAuthFacade _iAuthFacade;
  UserBloc(this._iAuthFacade) : super(const UserState.initial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      getSignedInUser: (_) async* {
        final userOption = await _iAuthFacade.getSignedInUser();
        yield userOption.fold(
          () => const UserState.unauthorized(),
          (user) => UserState.authorized(user),
        );
      },
      signOut: (_) async* {
        await _iAuthFacade.signout();
        yield const UserState.unauthorized();
      },
    );
  }
}
