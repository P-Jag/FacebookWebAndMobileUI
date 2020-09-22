import 'package:facebook_responsive_ui/widgets/user_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_responsive_ui/models/models.dart';

class ContactList extends StatelessWidget {
  final List<User> user;

  const ContactList({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8.0),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: user.length,
              itemBuilder: (BuildContext context, int index) {
                final User users = user[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(
                    user: users,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
