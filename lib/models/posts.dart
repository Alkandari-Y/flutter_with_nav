class Posts {
  Posts({
    required this.title,
    required this.author,
    required this.imageUrl,
    this.content,
  });
  String title;
  int author;
  String imageUrl;
  String? content = "";

  List<Posts> postList = [
    Posts(
        author: 1099201,
        title: 'I like python',
        imageUrl:
            'https://logos-download.com/wp-content/uploads/2016/10/Python_logo_icon-700x697.png',
        content: ''),
    Posts(
        author: 1099201,
        title: 'Learning Dart & Flutter',
        imageUrl:
            'https://logos-download.com/wp-content/uploads/2016/10/Python_logo_icon-700x697.png',
        content: ''),
  ];

  void addPost(Posts newPost) {
    postList.add(newPost);
  }
}
