class Users {
  Users(
      {required this.username,
      required this.id,
      required this.profileImg,
      required this.profileHeaderimg});
  String username;
  int id;
  String profileImg;
  String profileHeaderimg;

  List<Users> usersList = [
    Users(
        username: 'Yousef',
        id: 1099201,
        profileImg: 'assets/media/Capture.PNG',
        profileHeaderimg:
            'https://pbs.twimg.com/profile_banners/1039672864780308482/1587398710/600x200'),
  ];
}
