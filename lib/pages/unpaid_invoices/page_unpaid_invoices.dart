import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/models/unpaid_invoice.dart';
import 'package:mynusa/pages/unpaid_invoices/card_unpaid_invoices.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/no_glow_scroll_view.dart';
import 'package:provider/provider.dart';

class UnpaidInvoicesPage extends StatefulWidget {
  UnpaidInvoicesPage({Key? key}) : super(key: key);

  @override
  State<UnpaidInvoicesPage> createState() => _UnpaidInvoicesPageState();
}

class _UnpaidInvoicesPageState extends State<UnpaidInvoicesPage> {
  List<UnpaidInvoice> arrUnpaidInvoice = [];
  int customerId = 0;

  Future<void> _refreshUnpaidInvoices() async {
    setState(() {
      _fetchUnpaidInvoices(customerId);
    });
  }

  Future<List<UnpaidInvoice>> _fetchUnpaidInvoices(int customerId) async {
    List<UnpaidInvoice> arr = [];

    // dummy
    for(int i = 1; i <= 3; i++){
      final ui = UnpaidInvoice(id: i, status: i % 2 == 0 ? false : true,
          invoiceNumber: "#" + i.toString(), tanggal: "2021-11-24");
      arr.add(ui);
    }

    return arr;
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: !themeChange.darkTheme
              ? Color(int.parse(primaryColor))
              : Color(int.parse(darkGrey)),
          automaticallyImplyLeading: false,
          title: AutoSizeText(
            S.of(context).unpaid_invoices,
            maxLines: 1,
            style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.history,
                  size: 32,
                ),
                color: Colors.white,
                onPressed: () {

                })
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).pull_to_refresh,
              style: TextStyle(fontFamily: "Nunito", fontSize: 10),
            ),
            Flexible(
              child: RefreshIndicator(
                  onRefresh: _refreshUnpaidInvoices,
                  child: ScrollConfiguration(
                    behavior: NoGlowScrollView(),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: FutureBuilder(
                          future: _fetchUnpaidInvoices(customerId),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Container(
                                margin: EdgeInsets.all(64),
                                child: SpinKitFadingCube(
                                  color: Color(int.parse(secondaryColor)),
                                  size: 32.0,
                                ),
                              );
                            } else if (snapshot.connectionState ==
                                ConnectionState.done &&
                                snapshot.data == null) {
                              // return createDataNotFoundCard();
                              return Container();
                            } else {
                              return ScrollConfiguration(
                                  behavior: NoGlowScrollView(),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {

                                      final UnpaidInvoice ui = UnpaidInvoice(
                                        tanggal: snapshot.data[index].tanggal,
                                        invoiceNumber: snapshot.data[index].invoiceNumber,
                                        status: snapshot.data[index].status,
                                        id: snapshot.data[index].id
                                      );
                                      return UnpaidInvoicesCard(ui, index == snapshot.data.length ? true : false);
                                    },
                                  ));
                            }
                          }),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
