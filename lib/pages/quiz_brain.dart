class QuizBrain {
  int questionsNum = 0;

  List<Map<String, String?>> currentBank = [];

  final List<Map<String, String?>> familyFriendlyBank = [
    {'text': 'Išgeria tas žaidėjas, kuris yra jauniausias.', 'image': null},
    {'text': 'Pasirink žaidėją Vas-Ki-Či dvikovai. Pralaimėjęs išgeria.', 'image': null},
    {'text': 'Visos brunetės išgeria.', 'image': null},
    {'text': 'Visi pradeda gerti vienu metu. Žaidėjas, kuris gavo užduotį, gali nustoti kada tik panorėjęs. Kai jis nustoja, žaidėjas kairėje taip pat gali nustoti gerti ir t.t.', 'image': null},
    {'text': 'Išgerk 0.5l vandens per 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją rankų lenkimo dvikovai. Pralaimėtojas išgeria.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, gali pasakyti geriausią tostą. Tas, kuris surenka daugiausia balsų, pasako tostą ir išgeria.', 'image': null},
    {'text': 'Pasakyk “Aš niekada...” ir tai, ko niekada nesi daręs(-iusi). Tie, kurie yra tai darę, turi išgerti.', 'image': null},
    {'text': 'Atsidaryk Instagram ir pamėk tris paskutines nuotraukas pirmos pasirodžiusios paskyros arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, būtų turėjęs daugiausia vergų 1800-aisiais. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Išgeria tie, kurie neturi antrosios pusės.', 'image': null},
    {'text': 'Leisk žaidėjui kairėje nupiešti tau ką nors ant kaktos arba išgerk.', 'image': null},
    {'text': 'Parepuok 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, išleistų daugiausia pinigų kvailam pirkiniui. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Pamėgink apsimesti slieku arba išgerk.', 'image': null},
    {'text': 'Paliesk žaidėjo veidą užrištomis akimis. Jei neatspėsi, kas jis, išgerk.', 'image': null},
    {'text': 'Padaryk pasitikėjimo kritimą į rankas su žaidėju kairėje arba išgerk.', 'image': null},
    {'text': 'Pasirink kategoriją ir visi žaidėjai turi pasakyti po žodį pagal ją. Tas, kuris suklysta, išgeria.', 'image': null},
    {'text': 'Visos merginos išgeria.', 'image': null},
    {'text': 'Išgeria tie, kurie turi iPhone.', 'image': null},
    {'text': 'Suvalgyk šaukštą aštraus padažo arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir parodykite pirštu į tą, kuris, jūsų nuomone, liks vienišas. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Kalbėk kaip robotas vieną raundą arba išgerk.', 'image': null},
    {'text': 'Išgeria tie, kurie turi bent vieną auskarą.', 'image': null},
    {'text': 'Parašyk savo EX “Aš vis dar tave myliu” arba išgerk.', 'image': null},
    {'text': 'Žaidėjai sugalvoja užduotį. Jei nepavyksta, išgerk.', 'image': null},
    {'text': 'Išgerk nenaudodamas rankų arba išgerk du kartus.', 'image': null},
    {'text': 'Išgeria tas žaidėjas, kuris yra vyriausias.', 'image': null},
    {'text': 'Sėsk ant žemės ir sėdėk tol, kol vėl bus tavo eilė arba išgerk.', 'image': null},
    {'text': 'Paklausk žaidėjo iš dešinės trijų klausimų apie save. Jei jis atsako teisingai, išgeri tu, jei ne - jis.', 'image': null},
    {'text': 'Lok kaip šuo, kol vėl bus tavo eilė arba išgerk.', 'image': null},
    {'text': 'Parašyk keturių raidžių žodį ant kito žaidėjo nugaros pirštu. Jei neatspės, jis geria.', 'image': null},
    {'text': 'Įkūnyk žinomą asmenybę iki sekančio savo ėjimo arba išgerk du kartus.', 'image': null},
    {'text': 'Įsipilk į burną kuo daugiau vandens ir laikyk 30 sekundžių. Jei išspjausi, išgerk du kartus.', 'image': null},
    {'text': 'Leisk žaidėjams peržiūrėti tavo Facebook paieškos istoriją arba išgerk.', 'image': null},
    {'text': 'Visi žaidėjai išgeria!', 'image': null},
    {'text': 'Papasakok anekdotą. Jei niekas nesijuoks, turi išgerti.', 'image': null},
    {'text': 'Paklausk žaidėjo “Tiesa ar melas” klausimo apie save. Jei jis atspės, tu geri.', 'image': null},
    {'text': 'Išvardink tris skirtingas marihuanos rūšis arba išgerk.', 'image': null},
    {'text': 'Išgeria tie, kurie turi bent vieną tatuiruotę.', 'image': null},
    {'text': 'Išgeria tie, kurie buvo nors kartą atleisti iš darbo.', 'image': null},
    {'text': 'Pasirink žaidėją nykščių dvikovai. Pralaimėtojas išgeria.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir parodykite pirštu į tą, kuris, jūsų nuomone, mirtų pirmas per zombių apokalipsę. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Išgeria tas žaidėjas, kuris yra žemiausias.', 'image': null},
    {'text': 'Pasirink du žaidėjus - vieną su kuriuo keliautum į salą, kitą suvalgytum išgyvenimui. Arba išgerk.', 'image': null},
    {'text': 'Išgeria tie, kurie turi Android.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir parodykite pirštu į tą, kuris geriausiai atrodytų priešingos lyties.', 'image': null},
    {'text': 'Visi vyrukai išgeria.', 'image': null},
    {'text': 'Išgeria tie, kurie yra pametę savo telefoną daugiau nei vieną kartą.', 'image': null},
    {'text': 'Pabandyk išsilaikyti ant vienos kojos 30 sekundžių. Jei nukrenti, išgerk.', 'image': null},
    {'text': 'Pasakyk, ką pirmą kartą pagalvojai apie žaidėją priešais tave, kai jį/ją sutikai. Jei atsisakai, išgerk.', 'image': null},
    {'text': 'Išgeria tie, kurie bent kartą yra užmigę viešoje vietoje.', 'image': null},
    {'text': 'Visi žaidėjai turi sugalvoti tau slapyvardį. Jei jo nepriimi, išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją ir įvardink vieną dalyką, kas tave jame žavi. Jei atsisakai, išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją, kuris turi pasakyti tau komplimentą. Jei atsisako, jis/ji išgeria.', 'image': null},
    {'text': 'Išgeria tie, kurie yra išbandę daugiau nei tris sporto šakas.', 'image': null},

  ];


  final List<Map<String, String?>> advancedBank = [
    {'text': 'Šukuok plaukus žaidėjui, esančiam tavo kairėje tol, kol vėl bus tavo eilė arba išgerk.', 'image': null},
    {'text': 'Visi pradeda gerti vienu metu. Žaidėjas, kuris gavo užduotį, gali nustoti kada tik panorėjęs. Kai jis nustoja, žaidėjas kairėje taip pat gali nustoti gerti ir t.t.', 'image': null},
    {'text': 'Leisk žaidėjui iš kairės trenkti tau per užpakalį stipriausiai kiek jis gali arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turi mažiausią pinigų likutį savo banko sąskaitoje. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Leisk žaidėjui dešinėje pajodinėti ant tavęs kaip ant arklio arba išgerk.', 'image': null},
    {'text': 'Parodyk paskutinę 12-tą nuotrauką iš savo galerijos arba išgerk du kartus.', 'image': null},
    {'text': 'Išsuk butelį ir pasibučiuok į lūpas su tuo žmogumi, kurį išsuksi. Padarykite tai abu arba išgerkite du kartus.', 'image': null},
    {'text': 'Prisipažink, su kuriuo iš žaidėjų pasimylėtum, susituoktum, kurį nužudytum arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, bėgtų nuo policijos. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Glostyk žaidėjo galvą dešinėje tol, kol vėl bus tavo eilė arba išgerk.', 'image': null},
    {'text': 'Kairėje sėdinčiam žaidėjui aimanuojant padaryk rankos masažą arba išgerk.', 'image': null},
    {'text': 'Įpilk truputi gėrimo į žaidėjo delną dešinėje ir išlak savo liežuviu kaip šuo. Abu jūs turite tai padaryti arba išgerkite.', 'image': null},
    {'text': 'Įkelk asmenukę į Instgram su prierašu "Kas šiandien nori pajudėt?" Arba išgerk.', 'image': null},
    {'text': 'Pasirink žaidėją atsispaudimų dvikovai. Tas, kuris padarys mažiau atsispaudimų, išgeria.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, mylėjosi keisčiausiose vietose. Geria tas, kuris surenka daugiausia balsų ir privalo įvardinti bent vieną vietą.', 'image': null},
    {'text': 'Turi pasakyti frazę pradedant "Aš niekada ..." pasakyk tai ko, niekada nesi daręs(-iusi) savo gyvenime. Žaidėjai, kurie yra tai darę, privalo išgerti. Jeigu nei vienas iš žaidėjų nėro to daręs, išgeri tu.', 'image': null},
    {'text': 'Duok telefoną žaidėjui sėdinčiam prieš tave ir leisk jam peržiūrėti tavo galeriją 20 sekundžių. Arba išgerk du kartus.', 'image': null},
    {'text': 'Padaryk asmenukę su filtru, kurį išrinks kiti žaidėjai ir įkelk į story arba išgerk.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turėjo juokingiausią nekaltybės praradimą. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Kairėje esantis žaidėjas dabar yra tavo bosas. Daryk viską, ką jis lieps iki kol vėl ateis tavo eilė. Arba išgerk.', 'image': null},
    {'text': 'Nusiųsk žinutę savo paskutiniam partneriui ir pasakyk jam, kad turi grybelį. Padaryk tai arba išgerk du kartus.', 'image': null},
    {'text': 'Leisk žmogui esančiam priešais tave pliaukštelėti tau į veidą arba išgerk.', 'image': null},
    {'text': 'Paskambink atsitiktiniu numeriu ir pabandyk paflirtuoti su žmogumi, kuris pakels ragelį arba išgerk.', 'image': null},
    {'text': 'Patwerkink 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Įsikišk du tamponus į nosies šnerves ir laikyk taip visą raundą arba išgerk. Jei neturite tamponų, visi išgeriate.', 'image': null},
    {'text': 'Parašyk savo EX "Pasiilgau tavęs" arba išgerk.', 'image': null},
    {'text': 'Atsigulk ant žemės (ant nugaros) ir leisk žaidėjui dešinėje atsisėsti tau ant krūtinės ir pirštu baksnoti tau į kaktą kol išvardinsi 10 saldainių pavadinimų. Jei neišvardinsi - išgerk.', 'image': null},
    {'text': 'Atsidaryk savo Instagram sekamųjų sąraša ir leisk žaidėjams išrinkti kokį nors žmogų. Išrinktoje anketoje paspausk patinka ant seniausios nuotraukos arba išgerk du kartus.', 'image': null},
    {'text': 'Nusiskusk antakį arba išgerk.', 'image': null},
    {'text': 'Pripilk į kriauklę šalto vandens ir palaikyk jame savo veidą 10 sekundžių arba išgerk.', 'image': null},
    {'text': 'Pasirink kategoriją (pvz.: ledai). Visi žaidėjai ratu turi pasakyti po vieną pavadinimą, kuris tinka jūsų pasirinktai kategorijai. Tas, kuris pirmas suklysta, išgeria.', 'image': null},
    {'text': 'Nusipiešk ūsus su markeriu arba lūpdažiu ir nenusivalyk iki tol, kol ateis tavo eilė arba išgerk.', 'image': null},
    {'text': 'Prisipažink, kurio iš žaidėjų tėtis tau yra seksualiausias arba išgerk.', 'image': null},
    {'text': 'Parašyk 8-tam adresatui "nemiegi?" arba išgerk.', 'image': null},
    {'text': 'Leisk žaidėjui esančiam kairėje tave pakutenti 20 sekundžių arba išgerk.', 'image': null},
    {'text': 'Nusiųsk širdelę savo simpatijai arba išgerk du kartus.', 'image': null},
    {'text': 'Suvalgyk šaukštelį cinamono arba išgerk.', 'image': null},
    {'text': 'Paskambink savo EX ir pasakyk, kad vėl nori būti kartu arba išgerk.', 'image': null},
    {'text': 'Paskambink savo trečiam kontaktui ir pasakyk, kad esi žiauriai girtas arba išgerk.', 'image': null},
    {'text': 'Vaidink lyg būtum ką tik po skyrybų. Verk, dejuok ir panašiai. Elkis taip iki tol kol apsisuks ratas arba išgerk du kartus.', 'image': null},
    {'text': 'Pasirink žaidėją žvilgsnio dvikovai. Iš arti žiūrėkite vienas kitam į akis ir nemirksėkite. Tas, kuris sumirksės pirmas - išgeria.', 'image': null},
    {'text': 'Skaičiuokite iki trijų ir ties trimis parodykite pirštu į tą, kuris, jūsų nuomone, turėtų dabar išgerti. Geria tas, kuris surenka daugiausia balsų.', 'image': null},
    {'text': 'Leisk žaidėjui kairėje markeriu arba lūpdažiu nupiešti tau ant veido katino nosį ir ūsus, ir būk taip iki žaidimo pabaigos arba išgerk.', 'image': null},
    {'text': 'Padaryk 20 atsispaudimų arba išgerk.', 'image': null},
    {'text': 'Pašok ančiuko šokį 30 sekundžių arba išgerk.', 'image': null},
    {'text': 'Parodyk visas savo tatuiruotes, nepriklausomai nuo to, kur jos yra arba išgerk du kartus.', 'image': null},
    {'text': 'Padaryk pėdų masažą žmogui iš dešinės 30 sekundžių arba abudu išgeriate.', 'image': null},
    {'text': 'Atsistok ant rankų ir kelių. Leisk kam nors atsisėsti ant tavo nugaros ir stovėk taip tol, kol vėl bus tavo eilė arba išgerk.', 'image': null},
    {'text': 'Pozuok taip, kaip prašo žaidėjai ir būk šioje pozoje iki kol apsisuks ratas arba išgerk.', 'image': null},
    {'text': 'Parodyk gėdingiausią nuotrauką iš savo galerijos arba išgerk du kartus.', 'image': null},
    {'text': 'Žaidėjui dešinėje leisk atsisėsti tau ant pečių arba išgerk.', 'image': null},
    {'text': 'Žaidėjai išrenka daiktą, kurį turi bandyt parduoti 20 sekundžių, arba išgerk.', 'image': null},
    {'text': 'Iškviesk kitą žaidėją šokių dvikovai. Likusieji žaidėjai balsuos, kuris laimėjo. Pralaimėtojas išgeria.', 'image': null},
    {'text': 'Duok savo telefoną žaidėjui dešinėje ir leisk jam parašyti žinutę, bet kuriam tavo kontaktui, arba išgerk.', 'image': null},
    {'text': 'Įsidėk į abi pažastis po vieną ledo kubelį ir palik juos iki kol ištirps. Padaryk tai arba išgerk.', 'image': null}
  ];


  final List<Map<String, String?>> eighteenPlusBank = [
    {'text': 'Nusirenk nuogai, išeik į lauką ir pasivaikščiok šaligatviu. Padaryk tai arba išgerk du kartus.', 'image': null},
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


