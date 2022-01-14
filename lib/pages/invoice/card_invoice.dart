import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/models/invoice.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/custom_calendar.dart';

class InvoiceCard extends StatelessWidget {
  InvoiceCard(this.invoices, this.lastItem);
  final Invoice invoices;
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
                    CustomCalendar.convertToIdnCalendar(invoices.tanggal),
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
                    invoices.invoiceNumber,
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      invoices.status ? S.of(context).paid : S.of(context).unpaid,
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: invoices.status ? Colors.green : Colors.red)
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
