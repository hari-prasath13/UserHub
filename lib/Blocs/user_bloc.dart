import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:user_details/Repository/User_repository.dart';

import '../Model/User_model.dart';

part 'user_event.dart';
part 'user_state.dart';





class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserInitial()) {
    on<FetchUsers>(_onFetchUsers);
  }

  Future<void> _onFetchUsers(FetchUsers event, Emitter<UserState> emit) async {
    emit(UserLoading());
    try {
      final users = await userRepository.fetchUsers();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}


// class UserBloc extends Bloc<UserEvent, UserState> {
//   final Dio _dio;
//
//   UserBloc(this._dio) : super(UserInitial()) {
//     on<FetchUsers>(_onFetchUsers);
//   }
//
//   void _onFetchUsers(FetchUsers event, Emitter<UserState> emit) async {
//     emit(UserLoading());
//     try {
//       final response = await _dio.get('https://jsonplaceholder.typicode.com/users');
//       final List<User> users = (response.data as List).map((userJson) => User.fromJson(userJson)).toList();
//       emit(UserLoaded(users));
//     } catch (e) {
//       emit(UserError(e.toString()));
//     }
//   }
// }