import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String cardNumber;
  String cardExpiry;
  String cardHolderName;
  Widget cardTypeIcon;
  double cardWidth;
  double cardHeight;
  Color textColor;
  TextStyle? cardHolderNameStyle;
  TextStyle? cardExpiryStyle;
  CardFrontLayout({
    this.bankName = "",
    required this.cardNumber,
    required this.cardExpiry,
    required this.cardHolderName,
    required this.cardTypeIcon,
    required this.textColor,
    this.cardHolderNameStyle,
    this.cardWidth = 0,
    this.cardHeight = 0,
  });

  Widget layout1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text(
                    bankName,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: new Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: 30.0,
                    height: 30.0,
                    color: textColor,
                    package: 'awesome_card_zh',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cardNumber.isEmpty ? 'XXXX XXXX XXXX XXXX' : cardNumber,
                        style: TextStyle(
                            package: 'awesome_card_zh',
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "MavenPro",
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Exp. Date",
                            style: TextStyle(
                                package: 'awesome_card_zh',
                                color: textColor,
                                fontFamily: "MavenPro",
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          DefaultTextStyle.merge(
                            style: TextStyle(
                              package: 'awesome_card_zh',
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "MavenPro",
                              fontSize: 16,
                            ),
                            child: Text(
                              cardExpiry.isEmpty ? "MM/YY" : cardExpiry,
                              style: cardExpiryStyle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DefaultTextStyle.merge(
                        style: TextStyle(
                          package: 'awesome_card_zh',
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "MavenPro",
                          fontSize: 17,
                        ),
                        child: Text(
                          cardHolderName.isEmpty
                              ? "Card Holder"
                              : cardHolderName,
                          style: cardHolderNameStyle,
                        ),
                      ),
                    ],
                  ),
                  cardTypeIcon
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
