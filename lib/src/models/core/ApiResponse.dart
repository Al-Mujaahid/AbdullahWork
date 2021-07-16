//This determines the responces coiming from our API. it handles all of them
//That's yy we are able to asign the keys to their respective fields

class ApiResponse  {

  bool status; //api ststus
  String message;  //api message
  dynamic data; //datas from api

  ApiResponse({this.data, this.message, this.status});

  ApiResponse.fromJson(json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }

  Map toJson() {
    Map map = {};
    map['status'] =status;
    map['message'] = message;
    map['data'] = data;

    return map;
  }
}