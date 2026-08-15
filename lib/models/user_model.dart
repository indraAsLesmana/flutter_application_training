class UserModel {
  final String id;
  final String name;
  final String role;
  final String nipNik;
  final String? email;
  final String? classId;

  UserModel({
    required this.id,
    required this.name,
    required this.role,
    required this.nipNik,
    this.email,
    this.classId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      nipNik: json['nip_nik'] as String,
      email: json['email'] as String?,
      classId: json['class_id'] as String?,
    );
  }
}
