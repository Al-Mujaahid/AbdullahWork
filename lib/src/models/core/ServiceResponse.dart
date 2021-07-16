//This handles the operations carried out in the UI 

class ServiceResponse  {

  bool status;
  String message;
  dynamic data;

  ServiceResponse({this.data, this.message, this.status});

  ServiceResponse.fromMap(json) {
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