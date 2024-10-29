import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCurrencyCall {
  static Future<ApiCallResponse> call({
    String? ipaddress = '',
    String? baseCurrency = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCurrency',
      apiUrl: 'http://www.geoplugin.net/json.gp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ip': ipaddress,
        'base_currency': baseCurrency,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.display_name''',
      ));
  static String? currencycode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.geoplugin_currencyCode''',
      ));
  static String? currencysymbol(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.geoplugin_currencySymbol''',
      ));
  static double? exchange(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.geoplugin_currencyConverter''',
      ));
}

class GetIpaddressCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getIpaddress',
      apiUrl: 'https://api.ipify.org?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? ipaddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ip''',
      ));
}

class GetExchangeCall {
  static Future<ApiCallResponse> call({
    String? symbols = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getExchange',
      apiUrl: 'https://openexchangerates.org/api/latest.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'symbols': symbols,
        'app_id': "9a6595a2aa1542c4a98e99d99a19bc56",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? exchangerate(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.rates.INR''',
      ));
}

class GetTranslateCall {
  static Future<ApiCallResponse> call({
    String? q = '',
    String? target = '',
    String? source = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTranslate',
      apiUrl: 'https://translation.googleapis.com/language/translate/v2',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'target': target,
        'source': source,
        'key': "AIzaSyBTbS9YknIfKnhF8Khgb4lSw2D-OADswWs",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? transtext(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.translations[:].translatedText''',
      ));
}

class GetDirectionsCall {
  static Future<ApiCallResponse> call({
    String? origin = '',
    String? destination = '',
    String? key = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDirections',
      apiUrl: 'https://maps.googleapis.com/maps/api/directions/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'origin': origin,
        'destination': destination,
        'key': key,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? overviewpolyline(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.routes[:].overview_polyline.points''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
