part of 'user_bloc.dart';


@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<User> users;

  UserLoaded(this.users);

  @override
  List<Object> get props => [users];
}

class UserError extends UserState {
  final String message;

  UserError(this.message);

  @override
  List<Object> get props => [message];
}
