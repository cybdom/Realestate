import 'package:flutter/material.dart';
import 'package:realestate/global.dart';
import 'package:realestate/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * .25,
            child: MyMap(),
            // child: Container(color: Colors.red,),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 35,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black45,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.bookmark_border, color: purple),
                            onPressed: () {},
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black45,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.list, color: purple),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Colors.black45,
                              )
                            ],
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(21.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 13,
                          offset: Offset(0, -1),
                          color: Colors.black12,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.tune, color: purple),
                            SizedBox(width: 15.0),
                            Text(
                              "Filters",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .apply(color: purple),
                            )
                          ],
                        ),
                        SizedBox(height: 9.0),
                        Container(
                          height: 35,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              filters.length,
                              (f) {
                                return Container(
                                  padding: const EdgeInsets.all(7.5),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 9.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(.43),
                                    ),
                                  ),
                                  child: Text(
                                    "${filters[f]}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .button
                                        .apply(color: purple),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Spacer(),
                        Divider(
                          color: purple,
                          thickness: 1,
                          height: 25,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.search, color: purple),
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'details'),
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite_border, color: purple),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark_border, color: purple),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.person_outline, color: purple),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
