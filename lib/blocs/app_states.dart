import 'package:bloc_demo/model/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserState extends Equatable {}

//data loading state
class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];
}

class UserLoadedState extends UserState {
  final List<UserModel> users;
  UserLoadedState(this.users);
  @override
  List<Object?> get props => [users];
}
class UserErrorState extends UserState {
  final String error;
  UserErrorState(this.error);
  @override
  List<Object?> get props => [error];
}


//data loaded state 


//data loading error state 

