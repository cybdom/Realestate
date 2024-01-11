import 'package:flutter/material.dart';
import 'package:realestate/global.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: purple),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {})
          ],
          leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "CITY",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.apply(color: Colors.grey),
                ),
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.apply(color: purple),
                textCapitalization: TextCapitalization.words,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (ctx, i) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      height: 151,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: purple,
                            ),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        flex: 2,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Image.network(
                                              "https://cdn.pixabay.com/photo/2017/06/13/22/42/kitchen-2400367_960_720.jpg"),
                                        ),
                                      ),
                                      SizedBox(width: 11.0),
                                      Flexible(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  color: Colors.blue),
                                              child: Text(
                                                "For Rent",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3.0,
                                            ),
                                            Text("\$1,031 / mo",
                                                style: TextStyle(
                                                    color: purple,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17)),
                                            SizedBox(
                                              height: 3.0,
                                            ),
                                            Text("131 Maub St, Chicago, IL",
                                                style: TextStyle(
                                                    color: purple,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "3 bd",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(color: purple),
                                    ),
                                    Text(
                                      "/",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(color: purple),
                                    ),
                                    Text(
                                      '3 ba',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(color: purple),
                                    ),
                                    Text(
                                      "/",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(color: purple),
                                    ),
                                    Text(
                                      "3,291 sq",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(color: purple),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                height: 61,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.tune),
                      color: purple,
                      onPressed: () {},
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          filters.length,
                          (f) {
                            return Container(
                              padding: const EdgeInsets.all(7.5),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 9.0, vertical: 5.0),
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
                                    .labelLarge
                                    ?.apply(color: purple),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
