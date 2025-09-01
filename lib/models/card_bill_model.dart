enum Status { pending, completed, failed }

class CardBill {
  final int amount;
  final String date;
  final Status status;

  CardBill({required this.amount, required this.date, required this.status});
}
