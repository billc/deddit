library deddit;

import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:json_object/json_object.dart';

part 'item.dart';

class Deddit {
  static Future<List> get(String subreddit) {
    var url = "http://www.reddit.com/r/${subreddit}.json";
    List<Item> children = [];

    return http.get(url).then((response) {
      if (response.statusCode == 200) {
        JsonObject json = new JsonObject.fromJsonString(response.body);
        json.data.children.forEach((c) => children.add(new Item.fromJsonObject(c.data)));

        return children;
      }
    });
  }
}
