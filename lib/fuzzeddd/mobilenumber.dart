import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Mobile extends StatefulWidget {
  Mobile({Key? key}) : super(key: key);
  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'IND');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios),
              ),
              Text(
                'Mobile number',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'We will send you a one-time password to this number',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              SvgPicture.asset('assets/images/mo(1)bile.svg'),
              Padding(padding: EdgeInsets.all(10)),
              Text('Enter mobile number'),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: 60,
                width: 300,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                  ),
                  
                  errorMessage : 'Invalid phone number',
                  maxLength: 10,
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: _phoneNumber,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20,),
                height: 70,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log in using mobile number',
                    style: TextStyle(color: Colors.white),
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
