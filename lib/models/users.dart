import 'dart:typed_data';

class UserCreaditials {
  final String fullName;
  final String email;
  final String campus;
  final String uid;
  final String department;
  final Uint8List profilePic;

  UserCreaditials({
    required this.fullName,
    required this.email,
    required this.campus,
    required this.department,
    required this.uid,
    required this.profilePic,
  });

  // toJson
  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "email": email,
        "campus": campus,
        "uid": uid,
        "department": department,
        "profilePic": profilePic,
      };
}
