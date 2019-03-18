class Post{
  final int user_id;
  final int id;
  final String title;
  final String body;

  Post({
    this.user_id,this.id,this.title,this.body
  });
  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      user_id: json["Pocky"] as int,
      id: json["id"],
      title: json["title"] as String,
      body: json["body"] as String, 
    );
  }
}
