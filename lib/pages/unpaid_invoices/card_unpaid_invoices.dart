import 'package:flutter/material.dart';
import 'package:mynusa/models/unpaid_invoice.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/custom_calendar.dart';

class UnpaidInvoicesCard extends StatelessWidget {
  UnpaidInvoicesCard(this.unpaidInvoices, this.lastItem);
  final UnpaidInvoice unpaidInvoices;
  final bool lastItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CustomCalendar.convertToIdnCalendar(unpaidInvoices.tanggal),
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 14,
                        color: Color(int.parse(mediumGrey))
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    unpaidInvoices.invoiceNumber,
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      unpaidInvoices.status ? "Paid" : "Unpaid",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: unpaidInvoices.status ? Colors.green : Colors.red)
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
