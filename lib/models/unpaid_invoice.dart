class UnpaidInvoice{
  int id;
  String tanggal, invoiceNumber;
  bool status;

  UnpaidInvoice({
    required this.id, required this.tanggal, required this.invoiceNumber,
    required this.status
});
}