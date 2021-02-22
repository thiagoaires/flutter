import 'package:flutter/material.dart';

class WebAppbarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {}),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Faça sua pesquisa",
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth > 400) ...[
                SizedBox(
                  width: 32,
                ),
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.grey[100],
                  child: Text(
                    'Aprenda',
                  ),
                )
              ],
              if (constraints.maxWidth > 500) ...[
                SizedBox(
                  width: 8,
                ),
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.grey[100],
                  child: Text(
                    'Flutter',
                  ),
                )
              ]
            ],
          );
        },
      ),
    );
  }
}
