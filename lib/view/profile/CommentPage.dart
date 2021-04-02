import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  String image;

  CommentPage({
    this.image,
  });
  @override
  _CommentPageState createState() => _CommentPageState(image: this.image);
}

class _CommentPageState extends State<CommentPage> {
  var _controller = TextEditingController();
  String image;
  _CommentPageState({this.image});
  List<String> _comment = [];
  _addComment(String comment) {

    if (comment != null) {
      _comment.add(comment);
      _controller.clear();
    }
  }

  Widget _buildCommentList() {
    return ListView.builder(
        // ignore: missing_return
        itemBuilder: (context, index) {
      if (index < _comment.length) {
        return _builderItem(_comment[index]);
      }
    });
  }

  Widget _builderItem(String comment) {
    return ListTile(
      title: Text(comment),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    var comment;
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: _buildCommentList(),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: mediaQuery.width * 0.03),
              CircleAvatar(
                child: ClipOval(
                  child: Image(
                    height: mediaQuery.height * .5,
                    width: mediaQuery.width * 0.3,
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: mediaQuery.width * 0.03),
              Container(
                width: mediaQuery.width - mediaQuery.width * 0.3,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Add Comment',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  onSubmitted: (value) {
                    _addComment(value);
                    setState(() {});
                  },
                  onChanged: (value) {
                    comment = value;
                  },
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.send,
                    size: mediaQuery.width * 0.06,
                    color: Colors.green,
                  ),
                  onPressed: () => {
                        setState(() {
                          _addComment(comment);
                        })
                      }),
            ],
          ),
        ),
      ],
    ));
  }
}
