import 'dart:convert';

class RazorpayResponse {
  RazorpayResponse({
    required this.isSuccessful,
    this.orderId,
    this.paymentId,
    this.signature,
    this.errorCode,
    this.errorDescription,
  });

  final bool isSuccessful;
  final String? orderId;
  final String? paymentId;
  final String? signature;
  final String? errorCode;
  final String? errorDescription;

  factory RazorpayResponse.fromJson(String str) =>
      RazorpayResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RazorpayResponse.fromMap(Map<String, dynamic> json) =>
      RazorpayResponse(
        isSuccessful: json['isSuccessful'],
        orderId: json['orderId'],
        paymentId: json['paymentId'],
        signature: json['signature'],
        errorCode: json['errorCode'],
        errorDescription: json['errorDescription'],
      );

  Map<String, dynamic> toMap() => {
        'isSuccessful': isSuccessful,
        'orderId': orderId,
        'paymentId': paymentId,
        'signature': signature,
        'errorCode': errorCode,
        'errorDescription': errorDescription,
      };
}
