class UserEntity {
  final String name, email, uid;

  const UserEntity({
    required this.name,
    required this.email,
    required this.uid,
  });
  Map<String, dynamic> toMap() {
    return {'displayName': name, 'email': email, 'uid': uid};
  }
}
