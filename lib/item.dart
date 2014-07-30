part of deddit;

class Item {
  String title, url;
  int comments = 0;

  Item(this.title, this.url, this.comments);

  Item.fromJsonObject(JsonObject json) {
    title = json.title;
    url = json.url;
    comments = json.num_comments;
  }

  String toString() {
    var literal = '';

    switch(comments) {
      case 0:
        break;
      case 1:
        literal = '(1 comment)';
        break;
      default:
        literal = '($comments comments)';
    }

    return "$title $literal \n$url";
  }
}

