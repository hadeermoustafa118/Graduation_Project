class Ordery {
  String? shippingAdress;
  String? payment;

  Ordery({this.shippingAdress, this.payment});

  factory Ordery.fromMap(Map<String, dynamic> map) {
    return Ordery(
      shippingAdress: map['shippingAddress'],
      payment: map['payment']
    );
  }
}
