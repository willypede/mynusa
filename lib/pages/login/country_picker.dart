import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

typedef void PhoneCodeCallback(String val);
class CountryPicker extends StatelessWidget {
  final PhoneCodeCallback phoneCodeCallBack;
  final tecCountry;
  String phoneCode = "";
  CountryPicker(this.tecCountry, this.phoneCodeCallBack);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        showCountryPicker(
          context: context,
          //Optional. Shows phone code before the country name.
          onSelect: (Country country) {
            tecCountry.text = country.name;
            phoneCode = country.phoneCode;
            phoneCodeCallBack(phoneCode);
          },
          // Optional. Sets the theme for the country list picker.
          countryListTheme: CountryListThemeData(
            // Optional. Sets the border radius for the bottomsheet.
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
            // Optional. Styles the search field.
            inputDecoration: InputDecoration(
              labelText: 'Search',
              labelStyle: TextStyle(
                  color: Colors.grey
              ),
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xFF8C98A8).withOpacity(0.2),),
                  borderRadius: BorderRadius.circular(32)
              ),
            ),
          ),
        );
      },
      child: TextField(
        controller: tecCountry,
        enabled: false,
      ),
    );
  }
}
