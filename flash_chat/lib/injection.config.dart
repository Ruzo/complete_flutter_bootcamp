// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/signin_form/signin_form_bloc.dart' as _i12;
import 'application/auth/user/user_bloc.dart' as _i13;
import 'application/message/message_bloc.dart' as _i10;
import 'application/messages_list/messageslist_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/message/i_message_facade.dart' as _i8;
import 'infrastructure/auth/firebase_auth.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i14;
import 'infrastructure/message/firestore_message.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i4.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i5.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IMessageFacade>(
      () => _i9.FirestoreMessage(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.MessageBloc>(
      () => _i10.MessageBloc(get<_i8.IMessageFacade>()));
  gh.factory<_i11.MessageslistBloc>(
      () => _i11.MessageslistBloc(get<_i8.IMessageFacade>()));
  gh.factory<_i12.SigninFormBloc>(
      () => _i12.SigninFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i13.UserBloc>(() => _i13.UserBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
