import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Request {
  static void post(String url, void Function(_GetRequest) callback,
      {Map<String, String> headers, dynamic body, Encoding encoding}) async {

    _req(method: "POST", body: body, encoding: encoding, headers: headers, callback: (gr) => callback(gr) );
  }

  static _req(
      {String url,
      void Function(_GetRequest) callback,
      String method = "POST",
      Map<String, String> headers,
      dynamic body,
      Encoding encoding}) async {
    _GetRequest gr = new _GetRequest();

    gr.error = null;
    gr.response = null;

    var result;

    try {
      if (method == "POST")
        result = await http.post(url,
            body: body, encoding: encoding, headers: headers);
      else if (method == "DELETE")
        result = await http.delete(url, headers: headers);
      else if (method == "PUT")
        result = await http.put(url,
            body: body, encoding: encoding, headers: headers);
      else if (method == "GET") result = await http.get(url, headers: headers);

      if (result.statusCode == 200) {
        gr.isSuccess = true;
        gr.response = result.body;
      } else {
        gr.error = result.body;
      }
      gr.isRedirect = result.isRedirect;
      gr.statusCode = result.statucCode;
    } on SocketException catch (e) {
      gr.error = e.message;
    }
    callback(gr);
  }
}

class _GetRequest {
  bool isSuccess = false;
  String response;
  String error;
  int statusCode;
  bool isRedirect;
}
