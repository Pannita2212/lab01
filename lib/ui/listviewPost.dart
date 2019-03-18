import 'package:flutter/material.dart';
import 'model.dart';

class ListViewPost extends StatelessWidget{
  final List<Post> posts;

  ListViewPost({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        padding: const EdgeInsets.all(1),
        itemBuilder: (context,int position){
          return Column(
            children: <Widget>[
              Divider(
                height: 0.8,
              ),
              ListTile(
                title: Text(this.posts.elementAt(position).title),
                subtitle: Text(this.posts.elementAt(position).body),
                onTap: (){
                  print("Agape ${
                    this.posts.elementAt(position).id
                  }");
                },
              )
            ],
          );
        },
      ),
    );
  }

}