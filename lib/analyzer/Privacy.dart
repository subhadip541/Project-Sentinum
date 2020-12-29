import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Quicksand",
                    letterSpacing: .75,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "“Sentinum”",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " (“we” or “us” or “our”) respects the privacy of our users(“user” or “you”). This Privacy Policy explains how we collect, use, disclose and safeguard your information when you use our mobile application(the “Application”) or visit our web application(“website” or “web application”). Please read this Privacy Policy carefully. ",
                    ),
                    TextSpan(
                      text: "YOU WILL BE DEEMED TO HAVE ACCEPTED OUR PRIVACY POLICY BY THE USAGES OF OUR MOBILE APPLICATION AND OR OUR WEB APPLICATION.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style:  TextStyle(
                    fontSize: 20,
                    fontFamily: "Quicksand",
                    letterSpacing: .75,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "We reserve the right to change this Privacy Policy at any time without any prior notice. We will alert you about any changes by updating the “Last Updated” date of the privacy policy. You are encouraged to review this privacy policy periodically in order to stay informed of updates. You will be deemed to be made aware of, will be subject to, and will be deemed to have accepted the changes to any revised Privacy Policy by your continued use of our mobile application or visiting our web application after the date such revised Privacy Policy is posted."
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    style:  TextStyle(
                      fontSize: 20,
                      fontFamily: "Quicksand",
                      letterSpacing: .75,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "This Privacy Policy does not apply to the third-party online/mobile store that you use or from which you installed this application or any external third-party link, which may use your private data, you used to visit our web application. We are not responsible for any of the data collected by such third-party."

                      ),
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    style:  TextStyle(

                      fontSize: 20,
                      fontFamily: "Quicksand",
                      letterSpacing: .75,


                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Collection of your information :-",
                        style: TextStyle(decoration: TextDecoration.underline,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "                          "
                      ),
                      TextSpan(
                        text: "We may collect information about you (“you” or “user”) in only one way. The information we may collect is the information you agreed to provide to us by accepting to use our Mobile Application or our Web Application, and it includes:"
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Quicksand",
                      letterSpacing: .75,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Data from social networks: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "User information from social networking sites such as [“Twitter”] which includes your “username” , your “tweets” and your “photos” that you post publicly in your account. This collected data is directly passed on to our ML model(“Machine Learning Model” or “AI model” or “Artificial Intelligence Model”). However, we do not store any of such mentioned data. The collected data is securely handled by the API(“Application Programming Interface”) and then used by the ML model. The retrieval of data occurs only after it is validated and authorized by the concerned social media organization.",
                      ),

                    ]
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
