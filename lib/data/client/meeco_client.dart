import 'package:http/http.dart' as http;

import 'package:meeco_app/data/models/response.dart';

class MeecoClient {
  String _sessionId;
  String _baseUrl = 'https://meeco.kr';

  String autologin;

  MeecoClient({this.autologin});

  Future<Response> get(String query, {String csrf}) async {
    final http.Response response = await http.get('$_baseUrl$query', headers: {
      if (csrf != null) 'x-csrf-token': '$csrf',
      'cookie': [
        if (_sessionId != null) 'PHPSESSID=$_sessionId',
        this.autologin ?? ''
      ].join(';'),
    });

    final Map<String, String> cookies =
        _parseCookies(response.headers['set-cookie']);

    if (cookies['PHPSESSID'] != null) _sessionId = cookies['PHPSESSID'];

    return Response(
      response.body,
      autologin: cookies['rx_autologin'] ?? null,
    );
  }

  Future<Response> post(String query, Map<String, String> data,
      {String csrf}) async {
    final http.Response response =
        await http.post('$_baseUrl$query', body: data, headers: {
      if (csrf != null) 'x-csrf-token': '$csrf',
      'cookie': [
        if (_sessionId != null) 'PHPSESSID=$_sessionId',
        this.autologin ?? ''
      ].join(';'),
    });

    final cookies = _parseCookies(response.headers['set-cookie']);

    if (cookies['PHPSESSID'] != null) _sessionId = cookies['PHPSESSID'];
    if (cookies['rx_autologin'] != null)
      this.autologin = cookies['rx_autologin'];

    return Response(
      response.body,
      autologin: this.autologin ?? null,
    );
  }

  Map<String, String> _parseCookies(String raw) {
    final List<dynamic> tmp = raw
        .split(RegExp('(?<=)(,)(?=[^;]+?=)'))
        .map((e) => e.split(';')[0])
        .toList();

    Map<String, String> cookies = {};
    tmp.forEach((e) {
      var i = e.split('=');
      cookies[i[0]] = i[1];
    });

    return cookies;
  }
}
