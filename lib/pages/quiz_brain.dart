class QuizBrain {
  int questionsNum = 0;

  List<Map<String, String?>> currentBank = [];

  final List<Map<String, String?>> familyFriendlyBank = [
    {'text': 'Išgeria tas, kuris yra jauniausias tarp žaidėjų.', 'image': null},
    {'text': 'Pasirink žaidėją Vas-Ki-Či žaidimui. Pralaimėjęs privalo išgerti.', 'image': null},
    {'text': 'Visos brunetės išgeria.', 'image': null},
    {'text': 'Visi pradeda gerti tuo pačiu metu. Tas, kuris gavo šią užduotį, gali sustoti bet kada, po to – jo kairėje esantis žaidėjas ir t.t.', 'image': null},
    {'text': 'Išgerk 0.5l vandens per 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją rankų lenkimo dvikovai. Pralaimėtojas turi išgerti.', 'image': null},
    {'text': 'Balsuokite, kuris iš jūsų galėtų sugalvoti geriausią tostą. Nugalėtojas sako tostą ir išgeria.', 'image': null},
    {'text': 'Pradėk sakinį “Aš niekada...” ir paminėk kažką, ko niekada nesi daręs. Tie, kurie yra tai darę, turi išgerti.', 'image': null},
    {'text': 'Atsidaryk Instagram ir pamėk tris paskutines nuotraukas iš pirmos pasirodžiusios paskyros arba išgerk.', 'image': null},
    {'text': 'Balsuokite, kuris žaidėjas pagal jus būtų turėjęs daugiausiai vergų XIX amžiuje. Daugiausiai balsų surinkęs geria.', 'image': null},
    {'text': 'Geria tie, kurie šiuo metu neturi antros pusės.', 'image': null},
    {'text': 'Leisk kairėje esančiam žaidėjui nupiešti tau ką nors ant veido arba išgerk.', 'image': null},
    {'text': 'Demonstratyviai repuok 20 sekundžių arba gerk.', 'image': null},
    {'text': 'Balsuokite, kuris iš jūsų labiausiai išleistų pinigus kvailam daiktui. Žaidėjas surinkęs daugiausia balsų geria.', 'image': null},
    {'text': 'Pavaizduok slieką arba išgerk.', 'image': null},
    {'text': 'Paliesk kito žaidėjo veidą užrištomis akimis. Jei neatspėji, kas jis, išgeri.', 'image': null},
    {'text': 'Atlik pasitikėjimo kritimą su žaidėju kairėje arba išgerk.', 'image': null},
    {'text': 'Pasirink kategoriją ir visi žaidėjai turi pasakyti po žodį pagal ją. Tas, kuris suklysta, išgeria.', 'image': null},
    {'text': 'Visos merginos išgeria.', 'image': null},
    {'text': 'Geria tie, kurie turi iPhone.', 'image': null},
    {'text': 'Suvalgyk šaukštą aštraus padažo arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir parodykite pirštu į tą, kuris, jūsų nuomone, liks vienišas. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Kalbėk kaip robotas vieną raundą arba išgerk.', 'image': null},
    {'text': 'Geria tie, kurie turi bent vieną auskarą.', 'image': null},
    {'text': 'Parašyk savo buvusiajam(-ai) “Aš vis dar tave myliu” arba išgerk.', 'image': null},
    {'text': 'Visi sugalvoja tau užduotį. Jei jos neįvykdysi, turėsi išgerti.', 'image': null},
    {'text': 'Išgerk nenaudodamas rankų arba turėsi išgerti du kartus.', 'image': null},
    {'text': 'Geria tas žaidėjas, kuris yra vyriausias.', 'image': null},
    {'text': 'Sėsk ant grindų ir lik ten iki savo kito ėjimo arba išgerk.', 'image': null},
    {'text': 'Paklausk trijų klausimų apie save žaidėjo iš dešinės. Jei jis atsakys teisingai, tu gersi, jei ne – jis.', 'image': null},
    {'text': 'Imituok šuns lojimą iki kito savo ėjimo arba išgerk.', 'image': null},
    {'text': 'Parašyk keturių raidžių žodį ant žaidėjo nugaros pirštu. Jei jis neatspės, jis turės išgerti.', 'image': null},
    {'text': 'Įsikūnyk į žinomą asmenybę iki kito savo ėjimo arba išgerk du kartus.', 'image': null},
    {'text': 'Pabandyk išlaikyti kuo daugiau vandens burnoje 30 sekundžių. Jei nepavyks, išgerk du kartus.', 'image': null},
    {'text': 'Leisk žaidėjams peržiūrėti tavo Facebook paieškos istoriją arba išgerk.', 'image': null},
    {'text': 'Visi žaidėjai turi išgerti!', 'image': null},
    {'text': 'Pasakyk anekdotą. Jei niekas nesijuoks, išgerk.', 'image': null},
    {'text': 'Užduok kitam žaidėjui klausimą “Tiesa ar melas” apie save. Jei jis atspės, tu išgeri.', 'image': null},
    {'text': 'Išvardink tris marihuanos rūšis arba išgerk.', 'image': null},
    {'text': 'Geria tie, kurie turi bent vieną tatuiruotę.', 'image': null},
    {'text': 'Geria tie, kurie bent kartą buvo atleisti iš darbo.', 'image': null},
    {'text': 'Pasirink žaidėją nykščių kovai. Pralaimėtojas turi išgerti.', 'image': null},
    {'text': 'Balsuokite, kuris iš jūsų per zombių apokalipsę mirtų pirmas. Daugiausiai balsų surinkęs žaidėjas išgeria.', 'image': null},
    {'text': 'Geria tas, kuris yra žemiausias.', 'image': null},
    {'text': 'Pasirink du žaidėjus – vieną, su kuriuo keliautum į negyvenamą salą, ir kitą, kurį suvalgytum dėl išgyvenimo.', 'image': null},
    {'text': 'Geria tie, kurie turi Android telefonus.', 'image': null},
    {'text': 'Balsuokite, kuris geriausiai atrodytų būdamas priešingos lyties. Daugiausiai balsų surinkęs žaidėjas išgeria.', 'image': null},
    {'text': 'Visi vyrai turi išgerti.', 'image': null},
    {'text': 'Geria tie, kurie bent kartą yra pametę savo telefoną.', 'image': null},
    {'text': 'Pabandyk stovėti ant vienos kojos 30 sekundžių. Jei nukrenti, išgeri.', 'image': null},
    {'text': 'Pasakyk, ką pirmą kartą pagalvojai apie priešais esantį žaidėją, kai jį sutikai. Jei atsisakai, išgeri.', 'image': null},
    {'text': 'Geria tie, kurie bent kartą yra užmigę viešoje vietoje.', 'image': null},
    {'text': 'Visi sugalvoja tau slapyvardį. Jei jo nepriimi, išgeri.', 'image': null},
    {'text': 'Pasirink žaidėją ir pasakyk, kas jame tau labiausiai patinka. Jei atsisakai, išgeri.', 'image': null},
    {'text': 'Pasirink žaidėją, kuris turi tau pasakyti komplimentą. Jei atsisako, išgeria.', 'image': null},
    {'text': 'Geria tie, kurie yra išbandę daugiau nei tris sporto šakas.', 'image': null},
    {'text': 'Parašyk SMS žinutę pasirinktam žaidėjui, kurios turinį sugalvoja visi kiti, arba išgerk.', 'image': null},
    {'text': 'Perbėk aplink kambarį imituodamas bet kokį gyvūną. Jei nepadarysi, išgerk.', 'image': null},
    {'text': 'Išvardink penkias pasaulio šalis, kurios prasideda raide “A”. Jei nesugalvosi per 20 sekundžių, išgerk.', 'image': null},
    {'text': 'Visi žaidėjai turi dainuoti pasirinktą dainą. Tas, kuris nežino žodžių, išgeria.', 'image': null},
    {'text': 'Leisk kairėje esančiam žaidėjui perskaityti tavo paskutinę išsiųstą žinutę, arba išgerk.', 'image': null},
    {'text': 'Priversk kitą žaidėją nusišypsoti per 10 sekundžių. Jei nepavyks, išgerk.', 'image': null},
  ];



  final List<Map<String, String?>> advancedBank = [
    {'text': 'Šukuok plaukus žaidėjui, sėdinčiam tavo kairėje, iki kol vėl ateis tavo eilė, arba išgerk.', 'image': null},
    {'text': 'Visi pradeda gerti tuo pačiu metu. Žaidėjas, gavęs užduotį, gali sustoti pirmas. Po to kairėje esantis žaidėjas ir t.t.', 'image': null},
    {'text': 'Leisk kairėje esančiam žaidėjui tau pliaukštelėti per užpakalį iš visų jėgų, arba išgerk.', 'image': null},
    {'text': 'Balsuokite, kuris iš jūsų, manote, turi mažiausią pinigų likutį banko sąskaitoje. Daugiausiai balsų gavęs geria.', 'image': null},
    {'text': 'Leisk žaidėjui dešinėje pajodinėti ant tavęs kaip ant arklio arba išgerk.', 'image': null},
    {'text': 'Parodyk 12-tą nuotrauką iš savo galerijos arba išgerk du kartus.', 'image': null},
    {'text': 'Išsuk butelį ir pabučiuok į lūpas tą, kurį išsuksi, arba abu išgerkite po du kartus.', 'image': null},
    {'text': 'Prisipažink, su kuriuo iš žaidėjų pasimylėtum, susituoktum, kurį nužudytum arba išgerk.', 'image': null},
    {'text': 'Balsuokite, kuris, jūsų nuomone, bėgtų nuo policijos. Tas, kuris surenka daugiausiai balsų, turi išgerti.', 'image': null},
    {'text': 'Glostyk dešinėje esančio žaidėjo galvą iki savo kito ėjimo arba išgerk.', 'image': null},
    {'text': 'Padaryk rankos masažą kairėje esančiam žaidėjui, kuris tuo metu aimanuos, arba išgerk.', 'image': null},
    {'text': 'Įpilk šiek tiek gėrimo į dešinėje esančio žaidėjo delną ir išlak savo liežuviu kaip šuo. Abu turite tai padaryti arba abu išgerkite.', 'image': null},
    {'text': 'Įkelk asmenukę į Instagram su užrašu "Kas šiandien pajudėt?" arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją atsispaudimų dvikovai. Tas, kuris padarys mažiau atsispaudimų, turi išgerti.', 'image': null},
    {'text': 'Balsuokite, kuris iš jūsų mylėjosi keisčiausiose vietose. Tas, kuris surenka daugiausiai balsų, turi įvardinti bent vieną vietą ir išgerti.', 'image': null},
    {'text': 'Pasakyk “Aš niekada...” ir paminėk ką nors, ko niekada nesi daręs. Tie, kurie yra tai darę, turi išgerti. Jei niekas to nedarė, išgeri tu.', 'image': null},
    {'text': 'Leisk priešais sėdinčiam žaidėjui peržiūrėti tavo galeriją 20 sekundžių arba išgerk du kartus.', 'image': null},
    {'text': 'Padaryk asmenukę su filtru, kurį parinks kiti žaidėjai, ir įkelk į savo story arba išgerk.', 'image': null},
    {'text': 'Balsuokite, kuris žaidėjas turėjo juokingiausią nekaltybės praradimo istoriją. Daugiausiai balsų gavęs turi išgerti.', 'image': null},
    {'text': 'Kairėje esantis žaidėjas tampa tavo viršininku iki tavo kito ėjimo. Atlik jo nurodymus arba išgerk.', 'image': null},
    {'text': 'Nusiųsk žinutę savo paskutiniam partneriui ir pasakyk jam, kad turi lytiškai plintančią ligą. Padaryk tai arba išgerk du kartus.', 'image': null},
    {'text': 'Leisk priešais esančiam žaidėjui pliaukštelėti tau per veidą arba išgerk.', 'image': null},
    {'text': 'Paskambink atsitiktiniam telefono numeriui ir pabandyk flirtuoti su tuo, kas atsilieps, arba išgerk.', 'image': null},
    {'text': 'Šok 20 sekundžių twerką arba išgerk.', 'image': null},
    {'text': 'Įsidėk į nosį du tamponus ir laikyk juos iki savo kito ėjimo, arba išgerk. Jei tamponų nėra, visi geria.', 'image': null},
    {'text': 'Parašyk savo buvusiajam “Pasiilgau tavęs” arba išgerk.', 'image': null},
    {'text': 'Atsigulk ant grindų, leisk žaidėjui dešinėje atsisėsti ant tavo krūtinės ir baksnoti tau į kaktą, kol pasakysi 10 saldainių pavadinimų. Jei nepavyks – išgerk.', 'image': null},
    {'text': 'Atsigulk ant grindų, leisk žaidėjui dešinėje atsisėsti ant tavo krūtinės ir baksnoti tau į kaktą, kol pasakysi 10 automobilių gamintojų. Jei nepavyks – išgerk.', 'image': null},
    {'text': 'Atidaryk savo Instagram sekamųjų sąrašą ir leisk žaidėjams išrinkti asmenį. Spausk "patinka" ant seniausios nuotraukos iš tos paskyros arba išgerk.', 'image': null},
    {'text': 'Panardink veidą į šaltą vandenį 10 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasirink kategoriją, pvz., ledus. Visi turi paeiliui sakyti pavadinimus, tinkančius kategorijai. Pirmas suklydęs turi išgerti.', 'image': null},
    {'text': 'Nusipiešk ūsus markeriu ar lūpdažiu ir laikyk juos iki kito ėjimo arba išgerk.', 'image': null},
    {'text': 'Prisipažink, kurio iš žaidėjų tėtis atrodo seksualiausias, arba išgerk.', 'image': null},
    {'text': 'Parašyk žinutę 8-tam adresatui sakydamas “Nemiegi?” arba išgerk.', 'image': null},
    {'text': 'Leisk kairėje esančiam žaidėjui tave pakutenti 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Nusiųsk širdelę žmogui, kuris tau patinka, arba išgerk du kartus.', 'image': null},
    {'text': 'Suvalgyk šaukštelį cinamono arba išgerk.', 'image': null},
    {'text': 'Paskambink buvusiam partneriui ir sakyk, kad nori grįžti į santykius, arba išgerk.', 'image': null},
    {'text': 'Paskambink savo trečiam kontaktui ir pranešk, kad esi apsvaigęs, arba išgerk.', 'image': null},
    {'text': 'Vaizduok žmogų, kuris išgyvena skyrybas, iki kito savo ėjimo, arba išgerk du kartus.', 'image': null},
    {'text': 'Žiūrėk žaidėjui į akis nemirksėdamas. Tas, kuris sumirksės pirmas, turi išgerti.', 'image': null},
    {'text': 'Balsuokite, kuris turėtų dabar išgerti. Daugiausiai balsų gavęs tai daro.', 'image': null},
    {'text': 'Leisk kairėje esančiam žaidėjui nupiešti tau katino nosį ir ūsus. Laikyk juos iki žaidimo pabaigos arba išgerk.', 'image': null},
    {'text': 'Padaryk 20 atsispaudimų arba išgerk.', 'image': null},
    {'text': 'Pašok ančiuko šokį 30 sekundžių arba išgerk.', 'image': null},
    {'text': 'Parodyk visas savo tatuiruotes, nesvarbu kur jos bebūtų, arba išgerk du kartus.', 'image': null},
    {'text': 'Padaryk pėdų masažą žaidėjui dešinėje 30 sekundžių arba abu išgerkite.', 'image': null},
    {'text': 'Stovėk ant keturių ir leisk kam nors atsisėsti tau ant nugaros iki kito savo ėjimo arba išgerk.', 'image': null},
    {'text': 'Pozuok pagal kitų žaidėjų nurodymus iki savo kito ėjimo arba išgerk.', 'image': null},
    {'text': 'Parodyk gėdingiausią nuotrauką iš savo galerijos arba išgerk du kartus.', 'image': null},
    {'text': 'Leisk dešinėje esančiam žaidėjui atsisėsti tau ant pečių arba išgerk.', 'image': null},
    {'text': 'Kiti žaidėjai išrenka daiktą, kurį turi įtikinti pirkti. Parduok jį per 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasirink kitą žaidėją šokių dvikovai. Nugalėtoją balsuodami išrenka kiti. Pralaimėtojas išgeria.', 'image': null},
    {'text': 'Leisk žaidėjui dešinėje parašyti žinutę iš tavo telefono, arba išgerk.', 'image': null},
    {'text': 'Įsidėk po ledo kubelį į pažastis ir laikyk iki kol ištirps arba išgerk.', 'image': null},
    {'text': 'Pasakyk komplimentą kiekvienam žaidėjui rate, arba išgerk.', 'image': null},
    {'text': 'Sugalvok tris išgalvotus faktus apie save. Žaidėjai turi atspėti, kuris iš jų yra melas. Jei niekas neatspėja, visi geria. Jei atspėja – išgeri tu.', 'image': null},
    {'text': 'Pasakyk eilėraštį apie dešinėje esantį žaidėją arba išgerk.', 'image': null},
    {'text': 'Įvardink tris dalykus, kurių labiausiai bijai. Jei nesugebi, turi išgerti.', 'image': null},
    {'text': 'Paprašyk kito žaidėjo sudainuoti tavo pasirinktą dainą. Jei jis atsisako, jis turi išgerti, jei jis sudainuoja – geri tu.', 'image': null},
    {'text': 'Imituok įžymų žmogų, kol kas nors atspės, kas jis. Jei niekas neatspėja per minutę, turi išgerti.', 'image': null},
    {'text': 'Pasidalink keisčiausia vieta, kurioje esi užmigęs. Jei nesidalinsi, išgerk.', 'image': null},
    {'text': 'Pasakyk vieną dalyką, kurį norėtum pakeisti savo gyvenime. Jei atsisakai – išgerk.', 'image': null},
    {'text': 'Visi žaidėjai vienu metu pradeda juoktis. Pirmas, kuris nustoja juoktis, turi išgerti.', 'image': null},
  ];


  final List<Map<String, String?>> eighteenPlusBank = [
    {'text': 'Nusirenk iki apatinių, išeik į lauką ir pasivaikščiok šaligatviu. Padaryk tai arba išgerk du kartus.', 'image': null},
    {'text': 'Palaikydamas akių kontaktą su vienu iš žaidėjų seksualiai suvalgyk bananą arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position1.svg'},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position2.svg'},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position3.svg'},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position4.svg'},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position5.svg'},
    {'text': 'Pasirink žaidėją ir atvaizduok šią pozą. Jei jos nepadarysite, abu turite išgerti.', 'image': 'assets/position6.svg'},
    {'text': 'Vienam iš žaidėjų leisk iš nugaros užtempti tavo apatinius į viršų arba išgerk du kartus.', 'image': null},
    {'text': 'Visi pradeda gerti vienu metu. Žaidėjas, kuris gavo užduotį, gali nustoti kada tik panorėjęs. Kai jis nustoja, žaidėjas kairėje taip pat gali nustoti gerti ir t.t.', 'image': null},
    {'text': 'Pašok ant stalo 30 sekundžių pagal dainą, kurią išrinks žaidėjai. Padaryk tai arba išgerk du kartus.', 'image': null},
    {'text': 'Leisk žaidėjui iš kairės trenkti tau per užpakalį stipriausiai kiek jis gali arba išgerk.', 'image': null},
    {'text': 'Pasakyk seksualiausią dalyką apie kiekvieną žaidėją arba išgerk.', 'image': null},
    {'text': 'Apsimesk, kad masturbuojiesi 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Leisk visiems žaidėjams įžnybti tau į spenelius arba išgerk du kartus.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, per daug masturbuojasi. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Išsuk butelį ir pasibučiuok į lūpas su tuo žmogumi, kurį išsuksi. Padarykite tai abu arba išgerkite du kartus.', 'image': null},
    {'text': 'Leisk vienam žaidėjui nupiešti penį su markeriu arba lūpdažiu tau ant kaklo arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, yra labiausiai lytiškai susijaudinęs. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Išgerk gėrimo iš bambos žaidėjo kairėje. Abu jūs turite tai padaryti arba išgerkite du kartus.', 'image': null},
    {'text': 'Pašok kraipydamas savo užpakaliuką kaip striptizo šokėja arba išgerk.', 'image': null},
    {'text': 'Pademonstruok kvapą gniaužiantį oralinį su buteliu arba išgerk.', 'image': null},
    {'text': 'Spėk, kuris žaidėjas šiandien masturbavosi. Jei atspėjai, jis(ji) išgeria, jei neatspėjai - išgerk.', 'image': null},
    {'text': 'Nusiimk kelnes ir sėdėk su apatiniais iki tol, kol ateis tavo eilė arba išgerk du kartus.', 'image': null},
    {'text': 'Pasakyk, kurio iš žaidėjų penis tavo nuomone, yra didžiausias arba išgerk.', 'image': null},
    {'text': 'Prisisiok į kriauklę. Padaryk tai arba išgerk.', 'image': null},
    {'text': 'Įsidėk ledo gabalėlį į burną ir perduok jį į burną žaidėjui dešinėje. Abu jūs turite tai padaryti arba išgerkite po du kartus.', 'image': null},
    {'text': 'Atspėk, kuris žaidėjas su savimi šiuo metu turi prezervatyvą. Jeigu atspėjai, geria jis, jeigu neatspėjai, išgeri tu.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, žiūri per daug pornografijos. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Pašok striptizą su kėde 30 sekundžių arba išgerk.', 'image': null},
    {'text': 'Spėk, kuris žaidėjas bandė analinį seksą. Jeigu atspėjai, geria jis, jeigu neatspėjai, išgeri tu.', 'image': null},
    {'text': 'Išvardink tris sekso žaislus arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turėjo daugiausia sekso partnerių. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Leisk žaidėjui dešinėje sužnybti tau spenelį ir pasukti jį ratu arba išgerk.', 'image': null},
    {'text': 'Atsisėk ant kelių žmogui esančiam iš dešinės ir sėdėk iki tol, kol vėl ateis tavo eilė arba išgerk du kartus.', 'image': null},
    {'text': 'Leisk žaidėjui dešinėje markeriu arba lūpdažiu uždėti autografą ant tavo krūtinės arba išgerk.', 'image': null},
    {'text': 'Pašok striptizą ir išgerk po kiekvieno drabužio nusirengimo. Šok kol liksi tik su apatiniais arba išgerk du kartus.', 'image': null},
    {'text': 'Paskambink bet kuriam savo kontaktui ir paklausk kaip daroma 69 poza arba išgerk du kartus.', 'image': null},
    {'text': 'Nusirenk po vieną drabužį, kai kas nors išgeria. Daryk tai iki tol kol liksi tik su apatiniais arba išgerk du kartus.', 'image': null},
    {'text': 'Pasakyk žaidėjams, kokioje sekso pozoje esi geriausias arba išgerk du kartus.', 'image': null},
    {'text': 'Išvardink tris sekso pozas arba išgerk tris kartus.', 'image': null},
    {'text': 'Palaižyk spenelį žaidėjui kairėje. Abu jūs turite tai padaryti arba išgeriate du kartus.', 'image': null},
    {'text': 'Nusirenk iki pusės ir būk taip tol, kol vėl apsisuks ratas arba išgerk du kartus.', 'image': null},
    {'text': 'Nusirenk iki apatinių ir nueik pas kaimynus paprašyti cukraus arba išgerk.', 'image': null},
    {'text': 'Vienam iš žaidėjų leisk plekšnoti tau per užpakalį tau šaukiant "Stipriau tėtuk!" ir taip mažiausia 10 sekundžių arba išgerk.', 'image': null},
    {'text': 'Leisk visiems žaidėjams spėti su kiek partnerių permiegojai. Išgerk tiek kartų, kiek buvo neteisingų spėjimų. Skaičių užrašyk į telefoną ir parodyk po visų spėjimų.', 'image': null},
    {'text': 'Uždėk ranką ant tarpkojo žaidėjui dešinėje ir laikyk taip kol vėl bus tavo eilė. Abu jūs turite tai padaryti arba išgeriate du kartus.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turėtų dabar išgerti. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Padaryk nugaros masažą žaidėjui esančiame dešinėje bešvilpdamas seksualią melodiją į žaidėjo ausį mažiausiai 30 sekundžių arba išgerk du kartus.', 'image': null},
    {'text': 'Pasirink žaidėją žvilgsnio dvikovai. Iš arti žiūrėkite vienas kitam į akis ir nemirksėkite. Tas, kuris sumirksės pirmas - išgeria.', 'image': null},
    {'text': 'Apsikabink ir glamonėkis su žaidėju esančiu kairėje 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Savo Instagram story panaudok klausimų lipduką su prierašu "Porno rekomendacijos?" arba išgerk.', 'image': null},
    {'text': 'Nusiimk viršutinius drabužius ir būk taip kol apsisuks ratas arba išgerk.', 'image': null},
    {'text': 'Nusirenk tris drabužius arba išgerk tris kartus.', 'image': null},
    {'text': 'Išvardink mažiausiai tris porno žvaigždes arba išgerk du kartus.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turi labiausiai tinkantį vardą būti porno žvaigžde. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Įsikišk giliai į savo gerklę bananą arba išgerk.', 'image': null},
    {'text': 'Įkąsk į užpakalį žaidėjui sėdinčiam kairėje arba išgerk.', 'image': null},
    {'text': 'Papasakok istoriją, kaip praradai savo nekaltybę arba išgerk du kartus.', 'image': null},
    {'text': 'Atidaryk langą arba lauko duris ir garsiai rėk "Aš myliu analinį seksą!" arba išgerk.', 'image': null},
    {'text': 'Pasakyk patį gėdingiausią dalyką, kurį padarei sekso metu, arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją, kuriam atsegsi kelnių užtrauktuką savo dantimis, arba išgerk du kartus.', 'image': null},
    {'text': 'Pačiulpk savo pirštą seksualiai žiūrėdamas į žmogų esantį prieš tave, arba išgerk.', 'image': null},
    {'text': 'Plačiai papasakok savo paskutinį žiūrėtą porno video, arba išgerk du kartus.', 'image': null},
    {'text': 'Nusiimk kelnes ir būk taip iki kol apsisuks ratas, arba išgerk du kartus.', 'image': null},
    {'text': 'Seksualiai aimanuok 15 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasakyk savo slapčiausią fetišą arba išgerk.', 'image': null},
    {'text': 'Ar esi kada nors buvęs užkluptas sekso metu? Papasakok, kas nutiko.', 'image': null},
    {'text': 'Ar esi kada nors siuntęs savo nuogą nuotrauką? Jei taip kokio amžiaus tuo metu buvai.', 'image': null},
    {'text': 'Jei būtum priverstas(-a) padaryti "trio", ką iš čia esančių pasirinktum?', 'image': null},
    {'text': 'Išsuk butelį ir pasibučiuok į lūpas su tuo žmogumi, kurį išsuksi. Padarykite tai abu arba išgerkite du kartus.', 'image': null},
    {'text': 'Išsuk butelį ir pasibučiuok į lūpas su tuo žmogumi, kurį išsuksi. Padarykite tai abu arba išgerkite du kartus.', 'image': null},
    {'text': 'Surask kambaryje esantį daiktą ir visi žaidėjai ratu turi perduoti jį su burna, arba visi išgeria du kartus.', 'image': null},
    {'text': 'Pasidalink savo pirmuoju bučiniu. Jei nenori to pasakyti, išgerk.', 'image': null},
    {'text': 'Atskleisk, kokia buvo tavo didžiausia simpatija mokykloje, arba išgerk.', 'image': null},
    {'text': 'Pasakyk ką žaidėjas dešinėje turėtų dėvėti, kad būtų patraukliausias. Jei nenori – išgerk.', 'image': null},
    {'text': 'Papasakok juokingiausią savo Tinder pasimatymą', 'image': null},
    {'text': 'Papasakok savo didžiausią “sudaužytos širdies” istoriją. Jei nenori dalintis – turi išgerti.', 'image': null},
    {'text': 'Pasirink žaidėją ir parašyk jam SMS: “Tu man patinki. Kada laisvas(-a) pasimatymui?”. Jei atsisakai – išgerk.', 'image': null},
    {'text': 'Imituok romantišką filmų sceną su žmogumi, kurį pasirinks kiti žaidėjai. Jei atsisakai – išgerk.', 'image': null},
    {'text': 'Pasakyk, kuris žaidėjas, tavo nuomone, turi gražiausią šypseną. Jei atsisakai – išgerk.', 'image': null},
    {'text': 'Pasidalink, ar kada nors esi pavydėjęs draugo santykių. Jei taip – papasakok, kodėl. Jei nenori – išgerk.', 'image': null},
    {'text': 'Pasidalink, ar kada nors esi išdavęs savo antrą pusę. Jei nenori – išgerk.', 'image': null},
    {'text': 'Padaryk 10 sekundžių trukmės “modelio vaikščiojimo” demonstraciją. Jei atsisakai – išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją ir paprašyk jo sudainuoti romantišką dainą tau. Jei atsisako, jis turi išgerti.', 'image': null},
    {'text': 'Pasakyk, kokia tavo nuomone yra seksualiausia žmogaus kūno dalis. Jei nesugalvoji arba atsisakai – išgerk.', 'image': null},
    {'text': 'Pasidalink savo gėdingiausia akimirka pirmo pasimatymo metu. Jei nenori pasakoti – išgerk.', 'image': null},
    {'text': 'Pasidalink ar esi kada nors pabėgęs iš pasimatymo, jei taip, kodėl. Jei nenori pasakoti – išgerk.', 'image': null},
    {'text': 'Leisk žaidėjui iš kairės išrinkti tau dainą, kuri geriausiai atitinka tavo charakterį. Jei nesutinki – abu išgerkite.', 'image': null},
    {'text': 'Pasirink žaidėją ir paprašyk jo įvardinti tavo patraukliausią savybę. Jei jis nesutinka – abu išgerkite.', 'image': null},

  ];


  /// Sets the question bank based on the selected level
  void setLevel(String level) {
    switch (level) {
      case 'family':
        currentBank = List.from(familyFriendlyBank);
        break;
      case 'advanced':
        currentBank = List.from(advancedBank);
        break;
      case 'eighteenPlus':
        currentBank = List.from(eighteenPlusBank);
        break;
      default:
        currentBank = List.from(familyFriendlyBank); // Default to family
    }
    currentBank.shuffle();
    questionsNum = 0;
  }

  /// Sets custom questions
  void setCustomQuestions(List<String> customQuestions) {
    currentBank = customQuestions
        .map((text) => {'text': text, 'image': null}) // Convert to map with null image
        .toList();
    currentBank.shuffle(); // Shuffle custom questions
    questionsNum = 0;
  }

  /// Moves to the next question
  void nextQuestion() {
    if (!isFinished()) {
      questionsNum++;
    }
  }

  /// Moves to the previous question
  void previousQuestion() {
    if (questionsNum > 0) {
      questionsNum--;
    }
  }

  /// Resets the quiz and shuffles questions
  void reset() {
    questionsNum = 0;
    currentBank.shuffle();
  }

  /// Checks if the quiz has finished
  bool isFinished() {
    return questionsNum >= currentBank.length;
  }

  /// Retrieves the current question
  Map<String, String?> getCurrentQuestion() {
    if (isFinished()) {
      return {'text': '', 'image': null}; // Return empty when quiz is finished
    } else {
      return currentBank[questionsNum];
    }
  }
}


