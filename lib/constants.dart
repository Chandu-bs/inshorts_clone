import 'package:flutter/material.dart';

const kBackgroundColor = Colors.white;
const kTextColor = Colors.black;

const kImage1 = AssetImage("assets/images/News1.jpg");
const kImage2 = AssetImage("assets/images/News2.png");
const kImage3 = AssetImage("assets/images/News3.jpeg");
const kImage4 = AssetImage("assets/images/News4.png");
const kImage5 = AssetImage("assets/images/News5.jpg");

String kHeading = const Text(
        "As Delhi Sees Over 60% Spike, India's Fresh Covid Tally Zooms to 2,380")
    as String;
String kDetails = const Text(
        "Delhi logged 1,009 fresh Covid cases on Wednesday, a 60 per cent jump from a day ago, with the city government making the wearing of masks in public places mandatory again and announcing a Rs 500 fine on violators. This was the maximum number of cases recorded in Delhi since February 10 when 1,104 infections were reported.")
    as String;
const heading =
    "As Delhi Sees Over 60% Spike, India's Fresh Covid Tally Zooms to 2,380";
const details =
    "Delhi logged 1,009 fresh Covid cases on Wednesday, a 60 per cent jump from a day ago, with the city government making the wearing of masks in public places mandatory again and announcing a Rs 500 fine on violators. This was the maximum number of cases recorded in Delhi since February 10 when 1,104 infections were reported.";

const imageDetails = DecorationImage(
  alignment: Alignment.bottomCenter,
  fit: BoxFit.fill,
  image: kImage1,
);
const imageDetails2 = DecorationImage(
  alignment: Alignment.bottomCenter,
  fit: BoxFit.fill,
  image: kImage2,
);
const imageDetails3 = DecorationImage(
  alignment: Alignment.bottomCenter,
  fit: BoxFit.fill,
  image: kImage3,
);
String kheading2 = const Text("MS Dhoni smashes 16 runs off last 4 balls as CSK defeat MI on last ball") as String;
String kheading3 = const Text("PM releases commemorative coin, postage stamp on 400th Parkash Purab") as String;
String kheading4 = const Text("Tesla robot to be worth more than its self-driving business: Musk") as String;
String kheading5 = const Text("Free COVID vaccine precaution dose for all above 18 years at govt centres in Delhi") as String;

String kDetails2 = const Text("Chennai Super Kings (CSK) defeated Mumbai Indians (MI) by three wickets to register their second victory in IPL 2022. MS Dhoni slammed 16 runs off the last four deliveries to help CSK chase down the 156-run target on the last ball of the match. MI have now lost their first seven matches in IPL 2022.") as String;
String kDetails3 = const Text("PM Narendra Modi on Thursday released a commemorative coin and a postage stamp at Red Fort in Delhi to mark the 400th birth anniversary of Sikh guru Tegh Bahadur. PM Modi also addressed the people from the Red Fort on the occasion. He also took part in 'Shabad Kirtan' held at the Red Fort.") as String;
String kDetails4 = const Text("I was surprised that people do not realize the magnitude of the Optimus robot program, Musk said Wednesday evening. 'Those who are insightful or who listen carefully will understand that Optimus ultimately will be worth more than the car business and worth more than full self-driving'. That's my firm belief.") as String;
String kDetails5 = const Text("Delhi government on Thursday announced that the precaution dose of COVID-19 vaccine will be free for all eligible beneficiaries aged above 18 in government vaccination centres with immediate effect. The precaution dose was already free for healthcare workers and those aged above 60. The provision of paid booster dose in private vaccination centres will also continue, an official order said.") as String;