class Todo {
  late int _id;
  late String _title;
  late String _description;
  late String _date;
  late int _priority;

  Todo(this._title, this._date, this._priority, this._description);
  Todo.withId(
      this._id, this._title, this._date, this._priority, this._description);

  // Getters
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;
  //Setters
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  set priority(int newPriority) {
    if (newPriority > 0 && newPriority <= 3) {
      _priority = newPriority;
    }
  }

  set date(String newDate) {
    _date = newDate;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map["date"] = _date;
    map["priority"] = _priority;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Todo.fromObject(dynamic o) {
    this._id = o["id"];
    this._title = o["title"];
    this._description = o["description"];
    this._date = o["date"];
    this._priority = o["priority"];
  }
}
