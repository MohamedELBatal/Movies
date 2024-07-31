import 'package:equatable/equatable.dart';

class ResponseEntity extends Equatable {
  UserEntity? user;
  String? token;
  ResponseEntity({
    this.user,
    this.token,
  });

  ResponseEntity.fromJson(dynamic json) {
    user = json['user'] != null ? UserEntity.fromJson(json['user']) : null;
    token = json['token'];
  }

  @override
  List<Object?> get props => [user, token];
}

class UserEntity {
  UserEntity({
    this.name,
    this.email,
  });

  UserEntity.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
  }
  String? name;
  String? email;
}
