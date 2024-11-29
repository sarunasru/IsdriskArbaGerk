import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class QuizBrain {

  int questionsNum = 0;

  List<String> questionBank = [
    'Išeik į lauką ir pjauk žolę su įsivaizduojama žoliapjove. (Skleisk žoliapjovės garsą). \n \n Arba išgerk',
    'Įsijunk TikTok programėlę ir atkartok pirmą pamatytą vaizdo įrašą. \n \n Arba išgerk 2 kartus.',
    'UŽDUOTIS VISIEMS \n \n Kiekvienas žaidėjas per 60 sekundžių turi prajuokinti kitus žaidėjus. \n \n Žaidėjai, kuriems nepavyksta prajuokinti, turi išgerti.',
    '1. Leisk žaidėjui, esančiam iš kairės, trenkti tau per veidą. \n \n 2. Pasakyk apie kiekvieną žaidėją, ką pakeistum juose? (1 dalyką). \n \n Arba išgerk.',
    'Ką kvailiausio esi pasakęs savo antrai pusei sekso metu? \n \n Arba išgerk 2 kartus.',
'1. Išsiųsk paskutinę nuotrauką esančią galerijoje savo pirmiems trims Messenger draugams. \n \n 2. Papasakok savo gėdingiausią įvykį. \n \n Arba išgerk.',
    'Pravesk 3-jų minučių informatyvią pamoką apie saugų seksą. \n \n Arba išgerk 3 kartus.',
    '1. Leisk vienam iš žaidėjų trenkti tau per užpakalį. \n \n 2. Ką esi matęs tokio, ko nenorėtum pamatyti dar kartą? (Papasakok) \n \n Arba išgerk.',
'Sukurk TikTok vaizdo įrašą, jį patalpink ir palik bent 24 valandoms. Gali kurti ir kartu su kitais žaidėjais. \n \n Arba išgerk 2 kartus.',
    'Išsirink žaidėją, kuriam meti rankos laužimo iššūkį. Pralaimėjęs žaidėjas išgeria. (Žaidėjui nepriėmus iššūkio, išgeria jis)',
        '1. Nusipiešk sau vešlius ūsus ir taip žaisk iki sekančio savo ėjimo. \n \n 2. Koks yra keisčiausias dalykas, kurį esi padaręs savo antrai pusei? \n \n Arba išgerk.',
    '1. Repuok 30 sekundžių apie žaidėjus šiame kambaryje. \n \n 2. Trimis žodžiais apibūdink save lovoje. \n \n Arba išgerk 2 kartus.',
    '1. Leisk žaidėjui, esančiam tau iš dešinės, paimti už spenelio ir jį pasukti. \n \n 2. Žaidėjai tau iš kairės ir dešinės, keliauja su tavimi į negyvenamą salą. Pasirink su kuriuo liksi, o kurį suvalgysi, kad išgyventum? Kodėl? \n \n Arba išgerk.',
    'Pasiimk bet kokį daiktą iš vonios ir bandyk jį parduoti žaidėjams per 2-3 minutes. \n \n Arba išgerk 2 kartus.',
    '1. Susirask, bet kokį parduodamo daikto skelbimą internete ir improvizuok, kad jį nori nupirkti. (2-4min). \n \n 2. Prisipažink, kurio iš žaidėjų mama atrodo karščiausiai?',
'UŽDUOTIS VISIEMS \n \n Žaidėjas, kuris turi didžiausią skaičių sekėjų Instagrame išgeria.',
    'UŽDUOTIS VISIEMS \n \n Išgeria tie, kurių telefono ekranas yra skilęs arba dužęs.',
    'Susiliesk nosimis su žaidėju, esančiu tau iš dešinės ir turėkite akių kontaktą 60 sekundžių. Nepavykus atlikti užduoties, išgeri \n \n Arba išgerk 2 kartus.',
    'Žaidėjai tau privalo pagaminti kokteilį, kurį turėsi išgerti. \n \n Arba išgerk 2 kartus.',
    '1. Kalbėdamas dainuok iki sekančio savo ėjimo \n \n 2. Įvardink žaidėją, kurio apranga yra blogiausia. \n \n Arba išgerk 2 kartus.',
    'Užsimauk savo apatinius ant kelnių. Taip turi išbūti iki sekančio savo ėjimo. \n \n Arba išgerk.',
    '1. Žaidėjui, esančiam tau iš dešinės, masažuok nugarą iki kito ėjimo \n \n 2. Ką esi padaręs tokio, ko tikiesi, kad tėvai niekados nesužinos?'
  ];

  late List<String> shuffledBank;


  QuizBrain() {
    shuffledBank = List<String>.from(questionBank);
    shuffledBank.shuffle();
  }

  void nextQuestion()
  {
    if (questionsNum < shuffledBank.length - 1){
      questionsNum++;
    }

  }

  void reset() {
    questionsNum = 0;
    shuffledBank.shuffle();
  }

  void previousQuestion()
  {
    if (questionsNum > 0){
      questionsNum--;
    }
  }


  bool isFinished() {
    if (questionsNum >= shuffledBank.length - 1) {

      return true;

    } else {
      return false;
    }
  }

  String getQuestionText() {
    // return questionBank[questionsNum];
    if (isFinished()) {
      return 'Ačiū, kad žaidėte ! :)'; // Blank string when quiz is finished
    } else {
      return shuffledBank[questionsNum];
    }

  }

}

