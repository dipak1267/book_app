
class CountryCodeModel {
  final String flag;

  final String dialingCode;

  final String isoCode;

  final String name;

  final String currency;

  final String currencyISO;

  final int phoneNumberLength;

  CountryCodeModel({
    required this.flag,
    required this.dialingCode,
    required this.isoCode,
    required this.currency,
    required this.currencyISO,
    this.name: '',
    this.phoneNumberLength: 10,
  });

  static CountryCodeModel ae = CountryCodeModel(
    flag: "🇦🇪",
    dialingCode: "971",
    isoCode: "AE",
    name: "United Arab Emirates",
    currency: "United Arab Emirates dirham",
    currencyISO: "AED",
    phoneNumberLength: 9,
  );
  static CountryCodeModel ad = CountryCodeModel(
    flag: '🇦🇩',
    dialingCode: "376",
    isoCode: "AD",
    name: "Andorra",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel il = CountryCodeModel(
    flag: '🇮🇱',
    dialingCode: "972",
    isoCode: "ils",
    name: "Israel",
    currency: "Israeli new shekel",
    currencyISO: "ILS",
  );
  static CountryCodeModel af = CountryCodeModel(
    flag: '🇦🇫',
    dialingCode: "93",
    isoCode: "AF",
    name: "Afghanistan",
    currency: "Afghan afghani",
    currencyISO: "AFN",
  );
  static CountryCodeModel ag = CountryCodeModel(
    flag: "🇦🇬",
    dialingCode: "1",
    isoCode: "AG",
    name: "Antigua and Barbuda",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel ai = CountryCodeModel(
    flag: "🇦🇮",
    dialingCode: "1",
    isoCode: "AI",
    name: "Anguilla",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel al = CountryCodeModel(
    flag: "🇦🇱",
    dialingCode: "355",
    isoCode: "AL",
    name: "Albania",
    currency: "Albanian lek",
    currencyISO: "ALL",
  );
  static CountryCodeModel am = CountryCodeModel(
    flag: "🇦🇲",
    dialingCode: "374",
    isoCode: "AM",
    name: "Armenia",
    currency: "Armenian dram",
    currencyISO: "AMD",
  );
  static CountryCodeModel ao = CountryCodeModel(
    flag: "🇦🇴",
    dialingCode: "244",
    isoCode: "AO",
    name: "Angola",
    currency: "Angolan kwanza",
    currencyISO: "AOA",
  );
  static CountryCodeModel aq = CountryCodeModel(
    flag: "🇦🇶",
    dialingCode: "672",
    isoCode: "AQ",
    name: "Antarctica",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel ar = CountryCodeModel(
    flag: "🇦🇷",
    dialingCode: "54",
    isoCode: "AR",
    name: "Argentina",
    currency: "Argentine peso",
    currencyISO: "ARS",
  );
  static CountryCodeModel as = CountryCodeModel(
    flag: "🇦🇸",
    dialingCode: "1",
    isoCode: "AS",
    name: "American Samoa",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel at = CountryCodeModel(
    flag: "🇦🇹",
    dialingCode: "43",
    isoCode: "AT",
    name: "Austria",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel au = CountryCodeModel(
    flag: "🇦🇺",
    dialingCode: "61",
    isoCode: "AU",
    name: "Australia",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel aw = CountryCodeModel(
    flag: "🇦🇼",
    dialingCode: "297",
    isoCode: "AW",
    name: "Aruba",
    currency: "Aruban florin",
    currencyISO: "AWG",
  );
  static CountryCodeModel ax = CountryCodeModel(
    flag: "🇦🇽",
    dialingCode: "358",
    isoCode: "AX",
    name: "Aaland Islands",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel az = CountryCodeModel(
    flag: "🇦🇿",
    dialingCode: "994",
    isoCode: "AZ",
    name: "Azerbaijan",
    currency: "Azerbaijani manat",
    currencyISO: "AZN",
  );
  static CountryCodeModel ba = CountryCodeModel(
    flag: "🇧🇦",
    dialingCode: "387",
    isoCode: "BA",
    name: "Bosnia and Herzegowina",
    currency: "BH dinar",
    currencyISO: "BHD",
  );
  static CountryCodeModel bb = CountryCodeModel(
    flag: "🇧🇧",
    dialingCode: "1",
    isoCode: "BB",
    name: "Barbados",
    currency: "Barbadian dollar",
    currencyISO: "BBD",
  );
  static CountryCodeModel bd = CountryCodeModel(
    flag: "🇧🇩",
    dialingCode: "880",
    isoCode: "BD",
    name: "Bangladesh",
    currency: "Bangladeshi taka",
    currencyISO: "BDT",
  );
  static CountryCodeModel be = CountryCodeModel(
    flag: "🇧🇪",
    dialingCode: "32",
    isoCode: "BE",
    name: "Belgium",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel bf = CountryCodeModel(
    flag: "🇧🇫",
    dialingCode: "226",
    isoCode: "BF",
    name: "Burkina Faso",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel bg = CountryCodeModel(
    flag: "🇧🇬",
    dialingCode: "359",
    isoCode: "BG",
    name: "Bulgaria",
    currency: "Bulgarian lev",
    currencyISO: "BGN",
  );
  static CountryCodeModel bh = CountryCodeModel(
    flag: "🇧🇭",
    dialingCode: "973",
    isoCode: "BH",
    name: "Bahrain",
    currency: "Bahraini dinar",
    currencyISO: "BHD",
  );
  static CountryCodeModel bi = CountryCodeModel(
    flag: "🇧🇮",
    dialingCode: "257",
    isoCode: "BI",
    name: "Burundi",
    currency: "Burundian franc",
    currencyISO: "BIF",
  );
  static CountryCodeModel bj = CountryCodeModel(
    flag: "🇧🇯",
    dialingCode: "229",
    isoCode: "BJ",
    name: "Benin",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel bl = CountryCodeModel(
    flag: "🇧🇱",
    dialingCode: "590",
    isoCode: "BL",
    name: "Saint-Barthélemy",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel bm = CountryCodeModel(
    flag: "🇧🇲",
    dialingCode: "1",
    isoCode: "BM",
    name: "Bermuda",
    currency: "Bermudian dollar",
    currencyISO: "BMD",
  );
  static CountryCodeModel bn = CountryCodeModel(
    flag: "🇧🇳",
    dialingCode: "673",
    isoCode: "BN",
    name: "Brunei Darussalam",
    currency: "Brunei dollar",
    currencyISO: "BND",
  );
  static CountryCodeModel bo = CountryCodeModel(
    flag: "🇧🇴",
    dialingCode: "591",
    isoCode: "BO",
    name: "Bolivia",
    currency: "Bolivian boliviano",
    currencyISO: "BOB",
  );
  static CountryCodeModel bq = CountryCodeModel(
    flag: "🇧🇶",
    dialingCode: "599",
    isoCode: "BQ",
    name: "Bonaire, Sint Eustatius and Saba",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel br = CountryCodeModel(
    flag: "🇧🇷",
    dialingCode: "55",
    isoCode: "BR",
    name: "Brazil",
    currency: "Brazilian real",
    currencyISO: "BRL",
  );
  static CountryCodeModel bs = CountryCodeModel(
    flag: "🇧🇸",
    dialingCode: "1",
    isoCode: "BS",
    name: "Bahamas",
    currency: "Bahamian dollar",
    currencyISO: "BSD",
  );
  static CountryCodeModel bt = CountryCodeModel(
    flag: "🇧🇹",
    dialingCode: "975",
    isoCode: "BT",
    name: "Bhutan",
    currency: "Bhutanese ngultrum",
    currencyISO: "BTN",
  );
  static CountryCodeModel bv = CountryCodeModel(
    flag: "🇧🇻",
    dialingCode: "55",
    isoCode: "BV",
    name: "Bouvet Island",
    currency: "Norwegian krone",
    currencyISO: "NOK",
  );
  static CountryCodeModel bw = CountryCodeModel(
    flag: "🇧🇼",
    dialingCode: "267",
    isoCode: "BW",
    name: "Botswana",
    currency: "Botswana pula",
    currencyISO: "BWP",
  );
  static CountryCodeModel by = CountryCodeModel(
    flag: "🇧🇾",
    dialingCode: "375",
    isoCode: "BY",
    name: "Belarus",
    currency: "Belarusian ruble",
    currencyISO: "BYN",
  );
  static CountryCodeModel bz = CountryCodeModel(
    flag: "🇧🇿",
    dialingCode: "501",
    isoCode: "BZ",
    name: "Belize",
    currency: "Belize dollar",
    currencyISO: "BZD",
  );
  static CountryCodeModel ca = CountryCodeModel(
    flag: "🇨🇦",
    dialingCode: "1",
    isoCode: "CA",
    name: "Canada",
    currency: "Canadian dollar",
    currencyISO: "CAD",
  );
  static CountryCodeModel cc = CountryCodeModel(
    flag: "🇨🇨",
    dialingCode: "891",
    isoCode: "CC",
    name: "Cocos (Keeling) Islands",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel cd = CountryCodeModel(
    flag: "🇨🇩",
    dialingCode: "243",
    isoCode: "CD",
    name: "Democratic Republic of the Congo",
    currency: "Congolese franc",
    currencyISO: "CDF",
  );
  static CountryCodeModel cf = CountryCodeModel(
    flag: "🇨🇫",
    dialingCode: "236",
    isoCode: "CF",
    name: "Central African Republic",
    currency: "Central African CFA franc",
    currencyISO: "XAF",
  );
  static CountryCodeModel cg = CountryCodeModel(
    flag: "🇨🇬",
    dialingCode: "242",
    isoCode: "CG",
    name: "Republic of the Congo",
    currency: "Congolese franc",
    currencyISO: "CDF",
  );
  static CountryCodeModel ch = CountryCodeModel(
    flag: "🇨🇭",
    dialingCode: "41",
    isoCode: "CH",
    name: "Switzerland",
    currency: "Swiss franc",
    currencyISO: "CHF",
  );
  static CountryCodeModel ci = CountryCodeModel(
    flag: "🇨🇮",
    dialingCode: "225",
    isoCode: "CI",
    name: "Cote D'ivoire",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel ck = CountryCodeModel(
    flag: "🇨🇰",
    dialingCode: "682",
    isoCode: "CK",
    name: "Cook Islands",
    currency: "New Zealand dollar",
    currencyISO: "NZD",
  );
  static CountryCodeModel cl = CountryCodeModel(
    flag: "🇨🇱",
    dialingCode: "56",
    isoCode: "CL",
    name: "Chile",
    currency: "Chilean peso",
    currencyISO: "CLP",
  );
  static CountryCodeModel cm = CountryCodeModel(
    flag: "🇨🇲",
    dialingCode: "237",
    isoCode: "CM",
    name: "Cameroon",
    currency: "Central African CFA franc",
    currencyISO: "XAF",
  );
  static CountryCodeModel cn = CountryCodeModel(
    flag: "🇨🇳",
    dialingCode: "86",
    isoCode: "CN",
    name: "China",
    currency: "Chinese yuan",
    currencyISO: "CNY",
  );
  static CountryCodeModel co = CountryCodeModel(
    flag: "🇨🇴",
    dialingCode: "57",
    isoCode: "CO",
    name: "Colombia",
    currency: "Colombian peso",
    currencyISO: "COP",
  );
  static CountryCodeModel cr = CountryCodeModel(
    flag: "🇨🇷",
    dialingCode: "506",
    isoCode: "CR",
    name: "Costa Rica",
    currency: "Costa Rican colón",
    currencyISO: "CRC",
  );
  static CountryCodeModel cu = CountryCodeModel(
    flag: "🇨🇺",
    dialingCode: "53",
    isoCode: "CU",
    name: "Cuba",
    currency: "Cuban peso",
    currencyISO: "CUP",
  );
  static CountryCodeModel cv = CountryCodeModel(
    flag: "🇨🇻",
    dialingCode: "238",
    isoCode: "CV",
    name: "Cape Verde",
    currency: "Cape Verdean escudo",
    currencyISO: "CVE",
  );
  static CountryCodeModel cw = CountryCodeModel(
    flag: "🇨🇼",
    dialingCode: "599",
    isoCode: "CW",
    name: "Curaçao",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel cx = CountryCodeModel(
    flag: "🇨🇽",
    dialingCode: "61",
    isoCode: "CX",
    name: "Christmas Island",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel cy = CountryCodeModel(
    flag: "🇨🇾",
    dialingCode: "357",
    isoCode: "CY",
    name: "Cyprus",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel cz = CountryCodeModel(
    flag: "🇨🇿",
    dialingCode: "420",
    isoCode: "CZ",
    name: "Czech Republic",
    currency: "Czech koruna",
    currencyISO: "CZK",
  );
  static CountryCodeModel de = CountryCodeModel(
    flag: "🇩🇪",
    dialingCode: "49",
    isoCode: "DE",
    name: "Germany",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel dj = CountryCodeModel(
    flag: "🇩🇯",
    dialingCode: "253",
    isoCode: "DJ",
    name: "Djibouti",
    currency: "Djiboutian franc",
    currencyISO: "DJF",
  );
  static CountryCodeModel dk = CountryCodeModel(
    flag: "🇩🇰",
    dialingCode: "45",
    isoCode: "DK",
    name: "Denmark",
    currency: "Danish krone",
    currencyISO: "DKK",
  );
  static CountryCodeModel dm = CountryCodeModel(
    flag: "🇩🇲",
    dialingCode: "1",
    isoCode: "DM",
    name: "Dominica",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel doo = CountryCodeModel(
    flag: "🇩🇴",
    dialingCode: "1",
    isoCode: "DO",
    name: "Dominican Republic",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel dz = CountryCodeModel(
    flag: "🇩🇿",
    dialingCode: "213",
    isoCode: "DZ",
    name: "Algeria",
    currency: "Algerian dinar",
    currencyISO: "DZD",
  );
  static CountryCodeModel ec = CountryCodeModel(
    flag: "🇪🇨",
    dialingCode: "593",
    isoCode: "EC",
    name: "Ecuador",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel ee = CountryCodeModel(
    flag: "🇪🇪",
    dialingCode: "372",
    isoCode: "EE",
    name: "Estonia",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel eg = CountryCodeModel(
    flag: "🇪🇬",
    dialingCode: "20",
    isoCode: "EG",
    name: "Egypt",
    currency: "Egyptian pound",
    currencyISO: "EGP",
  );
  static CountryCodeModel eh = CountryCodeModel(
    flag: "🇪🇭",
    dialingCode: "212",
    isoCode: "EH",
    name: "Western Sahara",
    currency: "Moroccan dirham",
    currencyISO: "MAD",
  );
  static CountryCodeModel er = CountryCodeModel(
    flag: "🇪🇷",
    dialingCode: "291",
    isoCode: "ER",
    name: "Eritrea",
    currency: "Eritrean nakfa",
    currencyISO: "ERN",
  );
  static CountryCodeModel es = CountryCodeModel(
    flag: "🇪🇸",
    dialingCode: "34",
    isoCode: "ES",
    name: "Spain",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel et = CountryCodeModel(
    flag: "🇪🇹",
    dialingCode: "251",
    isoCode: "ET",
    name: "Ethiopia",
    currency: "Ethiopian birr",
    currencyISO: "ETB",
  );
  static CountryCodeModel fi = CountryCodeModel(
    flag: "🇫🇮",
    dialingCode: "358",
    isoCode: "FI",
    name: "Finland",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel fj = CountryCodeModel(
    flag: "🇫🇯",
    dialingCode: "679",
    isoCode: "FJ",
    name: "Fiji",
    currency: "Fijian dollar",
    currencyISO: "FJD",
  );
  static CountryCodeModel fk = CountryCodeModel(
    flag: "🇫🇰",
    dialingCode: "500",
    isoCode: "FK",
    name: "Falkland Islands (Malvinas)",
    currency: "Falklands pound",
    currencyISO: "FKP",
  );
  static CountryCodeModel fm = CountryCodeModel(
    flag: "🇫🇲",
    dialingCode: "691",
    isoCode: "FM",
    name: "Federated States Of Micronesia",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel fo = CountryCodeModel(
    flag: "🇫🇴",
    dialingCode: "298",
    isoCode: "FO",
    name: "Faroe Islands",
    currency: "Faroese krona",
    currencyISO: "DKK",
  );
  static CountryCodeModel fr = CountryCodeModel(
    flag: "🇫🇷",
    dialingCode: "33",
    isoCode: "FR",
    name: "France",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel ga = CountryCodeModel(
    flag: "🇬🇦",
    dialingCode: "241",
    isoCode: "GA",
    name: "Gabon",
    currency: "Central African CFA franc",
    currencyISO: "XAF",
  );
  static CountryCodeModel gb = CountryCodeModel(
    flag: "🇬🇧",
    dialingCode: "44",
    isoCode: "GB",
    name: "United Kingdom",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel gd = CountryCodeModel(
    flag: "🇬🇩",
    dialingCode: "1",
    isoCode: "GD",
    name: "Grenada",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel ge = CountryCodeModel(
    flag: "🇬🇪",
    dialingCode: "995",
    isoCode: "GE",
    name: "Georgia",
    currency: "Georgian lari",
    currencyISO: "GEL",
  );
  static CountryCodeModel gf = CountryCodeModel(
    flag: "🇬🇫",
    dialingCode: "594",
    isoCode: "GF",
    name: "French Guiana",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel gg = CountryCodeModel(
    flag: "🇬🇬",
    dialingCode: "44",
    isoCode: "GG",
    name: "Guernsey",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel gh = CountryCodeModel(
    flag: "🇬🇭",
    dialingCode: "233",
    isoCode: "GH",
    name: "Ghana",
    currency: "Ghanaian cedi",
    currencyISO: "GHS",
  );
  static CountryCodeModel gi = CountryCodeModel(
    flag: "🇬🇮",
    dialingCode: "350",
    isoCode: "GI",
    name: "Gibraltar",
    currency: "Gibraltar pound",
    currencyISO: "GIP",
  );
  static CountryCodeModel gl = CountryCodeModel(
    flag: "🇬🇱",
    dialingCode: "299",
    isoCode: "GL",
    name: "Greenland",
    currency: "Danish krone",
    currencyISO: "DKK",
  );
  static CountryCodeModel gm = CountryCodeModel(
    flag: "🇬🇲",
    dialingCode: "220",
    isoCode: "GM",
    name: "Gambia",
    currency: "Gambian dalasi",
    currencyISO: "GMD",
  );
  static CountryCodeModel gn = CountryCodeModel(
    flag: "🇬🇳",
    dialingCode: "224",
    isoCode: "GN",
    name: "Guinea",
    currency: "Guinean franc",
    currencyISO: "GNF",
  );
  static CountryCodeModel gp = CountryCodeModel(
    flag: "🇬🇵",
    dialingCode: "590",
    isoCode: "GP",
    name: "Guadeloupe",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel gq = CountryCodeModel(
    flag: "🇬🇶",
    dialingCode: "240",
    isoCode: "GQ",
    name: "Equatorial Guinea",
    currency: "Central African CFA franc",
    currencyISO: "XAF",
  );
  static CountryCodeModel gr = CountryCodeModel(
    flag: "🇬🇷",
    dialingCode: "30",
    isoCode: "GR",
    name: "Greece",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel gs = CountryCodeModel(
    flag: "🇬🇸",
    dialingCode: "500",
    isoCode: "GS",
    name: "South Georgia and The South Sandwich Islands",
    currency: "Georgian lari",
    currencyISO: "GEL",
  );
  static CountryCodeModel gt = CountryCodeModel(
    flag: "🇬🇹",
    dialingCode: "502",
    isoCode: "GT",
    name: "Guatemala",
    currency: "Guatemalan quetzal",
    currencyISO: "GTQ",
  );
  static CountryCodeModel gu = CountryCodeModel(
    flag: "🇬🇺",
    dialingCode: "1",
    isoCode: "GU",
    name: "Guam",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel gw = CountryCodeModel(
    flag: "🇬🇼",
    dialingCode: "245",
    isoCode: "GW",
    name: "Guinea-bissau",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel gy = CountryCodeModel(
    flag: "🇬🇾",
    dialingCode: "592",
    isoCode: "GY",
    name: "Guyana",
    currency: "Guyanese dollar",
    currencyISO: "GYD",
  );
  static CountryCodeModel hk = CountryCodeModel(
    flag: "🇭🇰",
    dialingCode: "852",
    isoCode: "HK",
    name: "Hong Kong",
    currency: "Hong Kong dollar",
    currencyISO: "HKD",
  );
  static CountryCodeModel hm = CountryCodeModel(
    flag: "🇭🇲",
    dialingCode: "61",
    isoCode: "HM",
    name: "Heard and Mc Donald Islands",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel hn = CountryCodeModel(
    flag: "🇭🇳",
    dialingCode: "504",
    isoCode: "HN",
    name: "Honduras",
    currency: "Honduran lempira",
    currencyISO: "HNL",
  );
  static CountryCodeModel hr = CountryCodeModel(
    flag: "🇭🇷",
    dialingCode: "385",
    isoCode: "HR",
    name: "Croatia (Local Name: Hrvatska)",
    currency: "Croatian kuna",
    currencyISO: "HRK",
  );
  static CountryCodeModel ht = CountryCodeModel(
    flag: "🇭🇹",
    dialingCode: "509",
    isoCode: "HT",
    name: "Haiti",
    currency: "Haitian gourde",
    currencyISO: "HTG",
  );
  static CountryCodeModel hu = CountryCodeModel(
    flag: "🇭🇺",
    dialingCode: "36",
    isoCode: "HU",
    name: "Hungary",
    currency: "Hungarian forint",
    currencyISO: "HUF",
  );
  static CountryCodeModel id = CountryCodeModel(
    flag: "🇮🇩",
    dialingCode: "62",
    isoCode: "ID",
    name: "Indonesia",
    currency: "Indonesian rupiah",
    currencyISO: "IDR",
  );
  static CountryCodeModel ie = CountryCodeModel(
    flag: "🇮🇪",
    dialingCode: "353",
    isoCode: "IE",
    name: "Ireland",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel im = CountryCodeModel(
    flag: "🇮🇲",
    dialingCode: "44",
    isoCode: "IM",
    name: "Isle of Man",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel inn = CountryCodeModel(
    flag: "🇮🇳",
    dialingCode: "91",
    isoCode: "IN",
    name: "India",
    currency: "Indian rupee",
    currencyISO: "INR",
    phoneNumberLength: 10,
  );
  static CountryCodeModel io = CountryCodeModel(
    flag: "🇮🇴",
    dialingCode: "246",
    isoCode: "IO",
    name: "British Indian Ocean Territory",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel iq = CountryCodeModel(
    flag: "🇮🇶",
    dialingCode: "964",
    isoCode: "IQ",
    name: "Iraq",
    currency: "Iraqi dinar",
    currencyISO: "IQD",
  );
  static CountryCodeModel ir = CountryCodeModel(
    flag: "🇮🇷",
    dialingCode: "98",
    isoCode: "IR",
    name: "Iran (Islamic Republic Of)",
    currency: "Iranian rial",
    currencyISO: "IRR",
  );
  static CountryCodeModel iss = CountryCodeModel(
    flag: "🇮🇸",
    dialingCode: "354",
    isoCode: "IS",
    name: "Iceland",
    currency: "Icelandic króna",
    currencyISO: "ISK",
  );
  static CountryCodeModel it = CountryCodeModel(
      flag: "🇮🇹",
      dialingCode: "39",
      isoCode: "IT",
      name: "Italy",
      currency: "Euro",
      currencyISO: "EUR,");
  static CountryCodeModel je = CountryCodeModel(
    flag: "🇯🇪",
    dialingCode: "44",
    isoCode: "JE",
    name: "Jersey",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel jm = CountryCodeModel(
    flag: "🇯🇲",
    dialingCode: "1",
    isoCode: "JM",
    name: "Jamaica",
    currency: "Jamaican dollar",
    currencyISO: "JMD",
  );
  static CountryCodeModel jo = CountryCodeModel(
    flag: "🇯🇴",
    dialingCode: "962",
    isoCode: "JO",
    name: "Jordan",
    currency: "Jordanian dinar",
    currencyISO: "JOD",
  );
  static CountryCodeModel jp = CountryCodeModel(
    flag: "🇯🇵",
    dialingCode: "81",
    isoCode: "JP",
    name: "Japan",
    currency: "Japanese yen",
    currencyISO: "JPY",
  );
  static CountryCodeModel ke = CountryCodeModel(
    flag: "🇰🇪",
    dialingCode: "254",
    isoCode: "KE",
    name: "Kenya",
    currency: "Kenyan shilling",
    currencyISO: "KES",
  );
  static CountryCodeModel kg = CountryCodeModel(
    flag: "🇰🇬",
    dialingCode: "996",
    isoCode: "KG",
    name: "Kyrgyzstan",
    currency: "Kyrgyzstani som",
    currencyISO: "KGS",
  );
  static CountryCodeModel kh = CountryCodeModel(
    flag: "🇰🇭",
    dialingCode: "855",
    isoCode: "KH",
    name: "Cambodia",
    currency: "Cambodian riel",
    currencyISO: "KHR",
  );
  static CountryCodeModel ki = CountryCodeModel(
    flag: "🇰🇮",
    dialingCode: "686",
    isoCode: "KI",
    name: "Kiribati",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel km = CountryCodeModel(
    flag: "🇰🇲",
    dialingCode: "269",
    isoCode: "KM",
    name: "Comoros",
    currency: "Comorian franc",
    currencyISO: "KMF",
  );
  static CountryCodeModel kn = CountryCodeModel(
    flag: "🇰🇳",
    dialingCode: "1",
    isoCode: "KN",
    name: "Saint Kitts and Nevis",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel kp = CountryCodeModel(
    flag: "🇰🇵",
    dialingCode: "850",
    isoCode: "KP",
    name: "Democratic People's Republic Of Korea",
    currency: "North Korean won",
    currencyISO: "KPR",
  );
  static CountryCodeModel kr = CountryCodeModel(
    flag: "🇰🇷",
    dialingCode: "82",
    isoCode: "KR",
    name: "Republic Of Korea",
    currency: "South Korean won",
    currencyISO: "KRW",
  );
  static CountryCodeModel kw = CountryCodeModel(
    flag: "🇰🇼",
    dialingCode: "965",
    isoCode: "KW",
    name: "Kuwait",
    currency: "Kuwaiti dinar",
    currencyISO: "KWD",
  );
  static CountryCodeModel ky = CountryCodeModel(
    flag: "🇰🇾",
    dialingCode: "965",
    isoCode: "KY",
    name: "Cayman Islands",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel kz = CountryCodeModel(
    flag: "🇰🇿",
    dialingCode: "7",
    isoCode: "KZ",
    name: "Kazakhstan",
    currency: "Kazakhstani tenge",
    currencyISO: "KZT",
  );
  static CountryCodeModel la = CountryCodeModel(
    flag: "🇱🇦",
    dialingCode: "856",
    isoCode: "LA",
    name: "Lao People's Democratic Republic",
    currency: "Lao kip",
    currencyISO: "LAK",
  );
  static CountryCodeModel lb = CountryCodeModel(
    flag: "🇱🇧",
    dialingCode: "961",
    isoCode: "LB",
    name: "Lebanon",
    currency: "Lebanese pound",
    currencyISO: "LBP",
  );
  static CountryCodeModel lc = CountryCodeModel(
    flag: "🇱🇨",
    dialingCode: "1",
    isoCode: "LC",
    name: "Saint Lucia",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel li = CountryCodeModel(
    flag: "🇱🇮",
    dialingCode: "423",
    isoCode: "LI",
    name: "Liechtenstein",
    currency: "Swiss franc",
    currencyISO: "CHF",
  );
  static CountryCodeModel lk = CountryCodeModel(
    flag: "🇱🇰",
    dialingCode: "94",
    isoCode: "LK",
    name: "Sri Lanka",
    currency: "Sri Lankan rupee",
    currencyISO: "LKR",
  );
  static CountryCodeModel lr = CountryCodeModel(
    flag: "🇱🇷",
    dialingCode: "231",
    isoCode: "LR",
    name: "Liberia",
    currency: "Liberian dollar",
    currencyISO: "LRD",
  );
  static CountryCodeModel ls = CountryCodeModel(
    flag: "🇱🇸",
    dialingCode: "266",
    isoCode: "LS",
    name: "Lesotho",
    currency: "Lesotho loti",
    currencyISO: "LSL",
  );
  static CountryCodeModel lt = CountryCodeModel(
    flag: "🇱🇹",
    dialingCode: "370",
    isoCode: "LT",
    name: "Lithuania",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel lu = CountryCodeModel(
    flag: "🇱🇺",
    dialingCode: "352",
    isoCode: "LU",
    name: "Luxembourg",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel lv = CountryCodeModel(
    flag: "🇱🇻",
    dialingCode: "371",
    isoCode: "LV",
    name: "Latvia",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel ly = CountryCodeModel(
    flag: "🇱🇾",
    dialingCode: "218",
    isoCode: "LY",
    name: "Libyan Arab Jamahiriya",
    currency: "Libyan dinar",
    currencyISO: "LYD",
  );
  static CountryCodeModel ma = CountryCodeModel(
    flag: "🇲🇦",
    dialingCode: "212",
    isoCode: "MA",
    name: "Morocco",
    currency: "Moroccan dirham",
    currencyISO: "MAD",
  );
  static CountryCodeModel mc = CountryCodeModel(
    flag: "🇲🇨",
    dialingCode: "377",
    isoCode: "MC",
    name: "Monaco",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel md = CountryCodeModel(
    flag: "🇲🇩",
    dialingCode: "373",
    isoCode: "MD",
    name: "Moldova, Republic Of",
    currency: "Moldovan leu",
    currencyISO: "MDL",
  );
  static CountryCodeModel me = CountryCodeModel(
    flag: "🇲🇪",
    dialingCode: "382",
    isoCode: "ME",
    name: "Montenegro",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel mf = CountryCodeModel(
    flag: "🇲🇫",
    dialingCode: "1",
    isoCode: "MF",
    name: "Saint-Martin",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel mg = CountryCodeModel(
    flag: "🇲🇬",
    dialingCode: "261",
    isoCode: "MG",
    name: "Madagascar",
    currency: "Malagasy ariary",
    currencyISO: "MGA",
  );
  static CountryCodeModel mh = CountryCodeModel(
    flag: "🇲🇭",
    dialingCode: "692",
    isoCode: "MH",
    name: "Marshall Islands",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel mk = CountryCodeModel(
    flag: "🇲🇰",
    dialingCode: "389",
    isoCode: "MK",
    name: "Macedonia, The Former Yugoslav Republic Of",
    currency: "Macedonian denar",
    currencyISO: "MKD",
  );
  static CountryCodeModel ml = CountryCodeModel(
    flag: "🇲🇱",
    dialingCode: "223",
    isoCode: "ML",
    name: "Mali",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel mm = CountryCodeModel(
    flag: "🇲🇲",
    dialingCode: "95",
    isoCode: "MM",
    name: "Myanmar",
    currency: "Burmese kyat",
    currencyISO: "MMK",
  );
  static CountryCodeModel mn = CountryCodeModel(
    flag: "🇲🇳",
    dialingCode: "976",
    isoCode: "MN",
    name: "Mongolia",
    currency: "Mongolian tögrög",
    currencyISO: "MNT",
  );
  static CountryCodeModel mo = CountryCodeModel(
    flag: "🇲🇴",
    dialingCode: "853",
    isoCode: "MO",
    name: "Macau",
    currency: "Macanese pataca",
    currencyISO: "MOP",
  );
  static CountryCodeModel mp = CountryCodeModel(
    flag: "🇲🇵",
    dialingCode: "1",
    isoCode: "MP",
    name: "Northern Mariana Islands",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel mq = CountryCodeModel(
    flag: "🇲🇶",
    dialingCode: "596",
    isoCode: "MQ",
    name: "Martinique",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel mr = CountryCodeModel(
    flag: "🇲🇷",
    dialingCode: "222",
    isoCode: "MR",
    name: "Mauritania",
    currency: "Mauritanian ouguiya",
    currencyISO: "EUR",
  );
  static CountryCodeModel ms = CountryCodeModel(
    flag: "🇲🇸",
    dialingCode: "1",
    isoCode: "MS",
    name: "Montserrat",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel mt = CountryCodeModel(
    flag: "🇲🇹",
    dialingCode: "356",
    isoCode: "MT",
    name: "Malta",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel mu = CountryCodeModel(
    flag: "🇲🇺",
    dialingCode: "230",
    isoCode: "MU",
    name: "Mauritius",
    currency: "Mauritian rupee",
    currencyISO: "MUR",
  );
  static CountryCodeModel mv = CountryCodeModel(
    flag: "🇲🇻",
    dialingCode: "960",
    isoCode: "MV",
    name: "Maldives",
    currency: "Maldivian rufiyaa",
    currencyISO: "MVR",
  );
  static CountryCodeModel mw = CountryCodeModel(
    flag: "🇲🇼",
    dialingCode: "265",
    isoCode: "MW",
    name: "Malawi",
    currency: "Malawian kwacha",
    currencyISO: "MWK",
  );
  static CountryCodeModel mx = CountryCodeModel(
    flag: "🇲🇼",
    dialingCode: "52",
    isoCode: "MX",
    name: "Mexico",
    currency: "Mexican peso",
    currencyISO: "MXN",
  );
  static CountryCodeModel my = CountryCodeModel(
    flag: "🇲🇾",
    dialingCode: "60",
    isoCode: "MY",
    name: "Malaysia",
    currency: "Malaysian ringgit",
    currencyISO: "MYR",
  );
  static CountryCodeModel mz = CountryCodeModel(
    flag: "🇲🇿",
    dialingCode: "258",
    isoCode: "MZ",
    name: "Mozambique",
    currency: "Mozambican metical",
    currencyISO: "MZN",
  );
  static CountryCodeModel na = CountryCodeModel(
    flag: "🇳🇦",
    dialingCode: "264",
    isoCode: "NA",
    name: "Namibia",
    currency: "Namibian dollar",
    currencyISO: "NAD",
  );
  static CountryCodeModel nc = CountryCodeModel(
    flag: "🇳🇨",
    dialingCode: "687",
    isoCode: "NC",
    name: "New Caledonia",
    currency: "CFP franc",
    currencyISO: "XPF",
  );
  static CountryCodeModel ne = CountryCodeModel(
    flag: "🇳🇪",
    dialingCode: "227",
    isoCode: "NE",
    name: "Niger",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel nf = CountryCodeModel(
    flag: "🇳🇫",
    dialingCode: "672",
    isoCode: "NF",
    name: "Norfolk Island",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel ng = CountryCodeModel(
    flag: "🇳🇬",
    dialingCode: "234",
    isoCode: "NG",
    name: "Nigeria",
    currency: "Nigerian naira",
    currencyISO: "NGN",
  );
  static CountryCodeModel ni = CountryCodeModel(
    flag: "🇳🇮",
    dialingCode: "505",
    isoCode: "NI",
    name: "Nicaragua",
    currency: "Nicaraguan córdoba",
    currencyISO: "NIO",
  );
  static CountryCodeModel nl = CountryCodeModel(
    flag: "🇳🇱",
    dialingCode: "31",
    isoCode: "NL",
    name: "Netherlands",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel no = CountryCodeModel(
    flag: "🇳🇴",
    dialingCode: "47",
    isoCode: "NO",
    name: "Norway",
    currency: "Norwegian krone",
    currencyISO: "NOK",
  );
  static CountryCodeModel np = CountryCodeModel(
    flag: "🇳🇵",
    dialingCode: "977",
    isoCode: "NP",
    name: "Nepal",
    currency: "Nepalese rupee",
    currencyISO: "NPR",
  );
  static CountryCodeModel nr = CountryCodeModel(
    flag: "🇳🇷",
    dialingCode: "674",
    isoCode: "NR",
    name: "Nauru",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel nu = CountryCodeModel(
    flag: "🇳🇺",
    dialingCode: "683",
    isoCode: "NU",
    name: "Niue",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel nz = CountryCodeModel(
    flag: "🇳🇿",
    dialingCode: "64",
    isoCode: "NZ",
    name: "New Zealand",
    currency: "New Zealand dollar",
    currencyISO: "NZD",
  );
  static CountryCodeModel om = CountryCodeModel(
    flag: "🇴🇲",
    dialingCode: "968",
    isoCode: "OM",
    name: "Oman",
    currency: "Omani rial",
    currencyISO: "OMR",
  );
  static CountryCodeModel pa = CountryCodeModel(
    flag: "🇵🇦",
    dialingCode: "507",
    isoCode: "PA",
    name: "Panama",
    currency: "Panamanian balboa",
    currencyISO: "PAB",
  );
  static CountryCodeModel pe = CountryCodeModel(
    flag: "🇵🇪",
    dialingCode: "51",
    isoCode: "PE",
    name: "Peru",
    currency: "Peruvian sol",
    currencyISO: "PEN",
  );
  static CountryCodeModel pf = CountryCodeModel(
    flag: "🇵🇫",
    dialingCode: "689",
    isoCode: "PF",
    name: "French Polynesia",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel pg = CountryCodeModel(
    flag: "🇵🇬",
    dialingCode: "675",
    isoCode: "PG",
    name: "Papua New Guinea",
    currency: "Papua New Guinean kina",
    currencyISO: "PGK",
  );
  static CountryCodeModel ph = CountryCodeModel(
    flag: "🇵🇭",
    dialingCode: "63",
    isoCode: "PH",
    name: "Philippines",
    currency: "Philippine peso",
    currencyISO: "PHP",
  );
  static CountryCodeModel pk = CountryCodeModel(
    flag: "🇵🇰",
    dialingCode: "92",
    isoCode: "PK",
    name: "Pakistan",
    currency: "Pakistani rupee",
    currencyISO: "PKR",
  );
  static CountryCodeModel pl = CountryCodeModel(
    flag: "🇵🇱",
    dialingCode: "48",
    isoCode: "PL",
    name: "Poland",
    currency: "Polish zloty",
    currencyISO: "PLN",
  );
  static CountryCodeModel pm = CountryCodeModel(
    flag: "🇵🇲",
    dialingCode: "508",
    isoCode: "PM",
    name: "Saint Pierre and Miquelon",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel pn = CountryCodeModel(
    flag: "🇵🇳",
    dialingCode: "64",
    isoCode: "PN",
    name: "Pitcairn",
    currency: "New Zealand dollar",
    currencyISO: "ZND",
  );
  static CountryCodeModel pr = CountryCodeModel(
    flag: "🇵🇷",
    dialingCode: "1",
    isoCode: "PR",
    name: "Puerto Rico",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel ps = CountryCodeModel(
    flag: "🇵🇸",
    dialingCode: "970",
    isoCode: "PS",
    name: "Palestinian Territory, Occupied",
    currency: "Israeli new shekel",
    currencyISO: "ILS",
  );
  static CountryCodeModel pt = CountryCodeModel(
    flag: "🇵🇹",
    dialingCode: "351",
    isoCode: "PT",
    name: "Portugal",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel pw = CountryCodeModel(
    flag: "🇵🇼",
    dialingCode: "680",
    isoCode: "PW",
    name: "Palau",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel py = CountryCodeModel(
    flag: "🇵🇾",
    dialingCode: "595",
    isoCode: "PY",
    name: "Paraguay",
    currency: "Paraguayan guaraní",
    currencyISO: "PYG",
  );
  static CountryCodeModel qa = CountryCodeModel(
    flag: "🇶🇦",
    dialingCode: "974",
    isoCode: "QA",
    name: "Qatar",
    currency: "Qatari riyal",
    currencyISO: "QAR",
  );
  static CountryCodeModel re = CountryCodeModel(
    flag: "🇷🇪",
    dialingCode: "262",
    isoCode: "RE",
    name: "Reunion",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel ro = CountryCodeModel(
    flag: "🇷🇴",
    dialingCode: "40",
    isoCode: "RO",
    name: "Romania",
    currency: "Romanian leu",
    currencyISO: "RON",
  );
  static CountryCodeModel rs = CountryCodeModel(
    flag: "🇷🇸",
    dialingCode: "381",
    isoCode: "RS",
    name: "Serbia",
    currency: "Serbian dinar",
    currencyISO: "RSD",
  );
  static CountryCodeModel ru = CountryCodeModel(
    flag: "🇷🇺",
    dialingCode: "7",
    isoCode: "RU",
    name: "Russian Federation",
    currency: "Russian ruble",
    currencyISO: "RUB",
  );
  static CountryCodeModel rw = CountryCodeModel(
    flag: "🇷🇼",
    dialingCode: "250",
    isoCode: "RW",
    name: "Rwanda",
    currency: "Rwandan franc",
    currencyISO: "RWF",
  );
  static CountryCodeModel sa = CountryCodeModel(
    flag: "🇸🇦",
    dialingCode: "966",
    isoCode: "SA",
    name: "Saudi Arabia",
    currency: "Saudi riyal",
    currencyISO: "SAR",
  );
  static CountryCodeModel sb = CountryCodeModel(
    flag: "🇸🇧",
    dialingCode: "677",
    isoCode: "SB",
    name: "Solomon Islands",
    currency: "Solomon Islands dollar",
    currencyISO: "SBD",
  );
  static CountryCodeModel sc = CountryCodeModel(
    flag: "🇸🇨",
    dialingCode: "248",
    isoCode: "SC",
    name: "Seychelles",
    currency: "Seychellois rupee",
    currencyISO: "SCR",
  );
  static CountryCodeModel sd = CountryCodeModel(
    flag: "🇸🇩",
    dialingCode: "249",
    isoCode: "SD",
    name: "Sudan",
    currency: "Sudanese pound",
    currencyISO: "SDG",
  );
  static CountryCodeModel se = CountryCodeModel(
    flag: "🇸🇪",
    dialingCode: "46",
    isoCode: "SE",
    name: "Sweden",
    currency: "Swedish krona",
    currencyISO: "SEK",
  );
  static CountryCodeModel sg = CountryCodeModel(
    flag: "🇸🇬",
    dialingCode: "65",
    isoCode: "SG",
    name: "Singapore",
    currency: "Singapore dollar",
    currencyISO: "SGD",
  );
  static CountryCodeModel sh = CountryCodeModel(
    flag: "🇸🇭",
    dialingCode: "290",
    isoCode: "SH",
    name: "Saint Helena",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel si = CountryCodeModel(
    flag: "🇸🇮",
    dialingCode: "386",
    isoCode: "SI",
    name: "Slovenia",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel sj = CountryCodeModel(
    flag: "🇸🇯",
    dialingCode: "47",
    isoCode: "SJ",
    name: "Svalbard and Jan Mayen Islands",
    currency: "Norwegian krone",
    currencyISO: "NOK",
  );
  static CountryCodeModel sk = CountryCodeModel(
    flag: "🇸🇰",
    dialingCode: "421",
    isoCode: "SK",
    name: "Slovakia",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel sl = CountryCodeModel(
    flag: "🇸🇱",
    dialingCode: "232",
    isoCode: "SL",
    name: "Sierra Leone",
    currency: "Sierra Leonean leone",
    currencyISO: "SLL",
  );
  static CountryCodeModel sm = CountryCodeModel(
    flag: "🇸🇲",
    dialingCode: "378",
    isoCode: "SM",
    name: "San Marino",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel sn = CountryCodeModel(
    flag: "🇸🇳",
    dialingCode: "221",
    isoCode: "SN",
    name: "Senegal",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel so = CountryCodeModel(
    flag: "🇸🇴",
    dialingCode: "252",
    isoCode: "SO",
    name: "Somalia",
    currency: "Somali shilling",
    currencyISO: "SOS",
  );
  static CountryCodeModel sr = CountryCodeModel(
    flag: "🇸🇷",
    dialingCode: "597",
    isoCode: "SR",
    name: "Suriname",
    currency: "Surinamese dollar",
    currencyISO: "SRD",
  );
  static CountryCodeModel ss = CountryCodeModel(
    flag: "🇸🇸",
    dialingCode: "211",
    isoCode: "SS",
    name: "South Sudan",
    currency: "South Sudanese pound",
    currencyISO: "SSP",
  );
  static CountryCodeModel st = CountryCodeModel(
    flag: "🇸🇹",
    dialingCode: "239",
    isoCode: "ST",
    name: "Sao Tome and Principe",
    currency: "São Tomé and Príncipe dobra",
    currencyISO: "STD",
  );
  static CountryCodeModel sv = CountryCodeModel(
    flag: "🇸🇻",
    dialingCode: "503",
    isoCode: "SV",
    name: "El Salvador",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel sx = CountryCodeModel(
    flag: "🇸🇽",
    dialingCode: "1",
    isoCode: "SX",
    name: "Saint Maarten",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel sy = CountryCodeModel(
    flag: "🇸🇾",
    dialingCode: "963",
    isoCode: "SY",
    name: "Syrian Arab Republic",
    currency: "Syrian pound",
    currencyISO: "SYP",
  );
  static CountryCodeModel sz = CountryCodeModel(
    flag: "🇸🇿",
    dialingCode: "268",
    isoCode: "SZ",
    name: "Swaziland",
    currency: "Swazi lilangeni",
    currencyISO: "SZL",
  );
  static CountryCodeModel tc = CountryCodeModel(
    flag: "🇹🇨",
    dialingCode: "1",
    isoCode: "TC",
    name: "Turks and Caicos Islands",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel td = CountryCodeModel(
    flag: "🇹🇩",
    dialingCode: "235",
    isoCode: "TD",
    name: "Chad",
    currency: "Central African CFA franc",
    currencyISO: "XAF",
  );
  static CountryCodeModel tf = CountryCodeModel(
    flag: "🇹🇫",
    dialingCode: "262",
    isoCode: "TF",
    name: "French Southern Territories",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel tg = CountryCodeModel(
    flag: "🇹🇬",
    dialingCode: "228",
    isoCode: "TG",
    name: "Togo",
    currency: "West African CFA franc",
    currencyISO: "XOF",
  );
  static CountryCodeModel th = CountryCodeModel(
    flag: "🇹🇭",
    dialingCode: "66",
    isoCode: "TH",
    name: "Thailand",
    currency: "Thai baht",
    currencyISO: "THB",
  );
  static CountryCodeModel tj = CountryCodeModel(
    flag: "🇹🇯",
    dialingCode: "992",
    isoCode: "TJ",
    name: "Tajikistan",
    currency: "Tajikistani somoni",
    currencyISO: "TJS",
  );
  static CountryCodeModel tk = CountryCodeModel(
    flag: "🇹🇰",
    dialingCode: "690",
    isoCode: "TK",
    name: "Tokelau",
    currency: "New Zealand dollar",
    currencyISO: "NZD",
  );
  static CountryCodeModel tl = CountryCodeModel(
    flag: "🇹🇱",
    dialingCode: "670",
    isoCode: "TL",
    name: "Timor-leste",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel tm = CountryCodeModel(
    flag: "🇹🇲",
    dialingCode: "993",
    isoCode: "TM",
    name: "Turkmenistan",
    currency: "Turkmenistan manat",
    currencyISO: "TMT",
  );
  static CountryCodeModel tn = CountryCodeModel(
    flag: "🇹🇳",
    dialingCode: "216",
    isoCode: "TN",
    name: "Tunisia",
    currency: "Tunisian dinar",
    currencyISO: "TND",
  );
  static CountryCodeModel to = CountryCodeModel(
    flag: "🇹🇴",
    dialingCode: "676",
    isoCode: "TO",
    name: "Tonga",
    currency: "Tongan pa'anga",
    currencyISO: "TOP",
  );
  static CountryCodeModel tr = CountryCodeModel(
    flag: "🇹🇷",
    dialingCode: "90",
    isoCode: "TR",
    name: "Turkey",
    currency: "Turkish lira",
    currencyISO: "TRY",
  );
  static CountryCodeModel tt = CountryCodeModel(
    flag: "🇹🇹",
    dialingCode: "1",
    isoCode: "TT",
    name: "Trinidad and Tobago",
    currency: "Trinidad and Tobago dollar",
    currencyISO: "TTD",
  );
  static CountryCodeModel tv = CountryCodeModel(
    flag: "🇹🇻",
    dialingCode: "688",
    isoCode: "TV",
    name: "Tuvalu",
    currency: "Australian dollar",
    currencyISO: "AUD",
  );
  static CountryCodeModel tw = CountryCodeModel(
    flag: "🇹🇼",
    dialingCode: "886",
    isoCode: "TW",
    name: "Taiwan",
    currency: "New Taiwan dollar",
    currencyISO: "TWD",
  );
  static CountryCodeModel tz = CountryCodeModel(
    flag: "🇹🇿",
    dialingCode: "255",
    isoCode: "TZ",
    name: "Tanzania, United Republic Of",
    currency: "Tanzanian shilling",
    currencyISO: "TZS",
  );
  static CountryCodeModel ua = CountryCodeModel(
    flag: "🇺🇦",
    dialingCode: "380",
    isoCode: "UA",
    name: "Ukraine",
    currency: "Ukrainian hryvnia",
    currencyISO: "UKH",
  );
  static CountryCodeModel ug = CountryCodeModel(
    flag: "🇺🇬",
    dialingCode: "256",
    isoCode: "UG",
    name: "Uganda",
    currency: "Ugandan shilling",
    currencyISO: "UGX",
  );
  static CountryCodeModel um = CountryCodeModel(
    flag: "🇺🇲",
    dialingCode: "1",
    isoCode: "UM",
    name: "United States Minor Outlying Islands",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel us = CountryCodeModel(
    flag: "🇺🇸",
    dialingCode: "1",
    isoCode: "US",
    name: "United States",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel uy = CountryCodeModel(
    flag: "🇺🇾",
    dialingCode: "598",
    isoCode: "UY",
    name: "Uruguay",
    currency: "Uruguayan peso",
    currencyISO: "UYU",
  );
  static CountryCodeModel uz = CountryCodeModel(
    flag: "🇺🇿",
    dialingCode: "998",
    isoCode: "UZ",
    name: "Uzbekistan",
    currency: "Uzbekistani som",
    currencyISO: "UZS",
  );
  static CountryCodeModel va = CountryCodeModel(
    flag: "🇻🇦",
    dialingCode: "379",
    isoCode: "VA",
    name: "Vatican City State (Holy See)",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel vc = CountryCodeModel(
    flag: "🇻🇨",
    dialingCode: "1",
    isoCode: "VC",
    name: "Saint Vincent and The Grenadines",
    currency: "East Caribbean dollar",
    currencyISO: "XCD",
  );
  static CountryCodeModel ve = CountryCodeModel(
    flag: "🇻🇪",
    dialingCode: "58",
    isoCode: "VE",
    name: "Venezuela",
    currency: "Venezuelan bolívar",
    currencyISO: "VEF",
  );
  static CountryCodeModel vg = CountryCodeModel(
    flag: "🇻🇬",
    dialingCode: "1",
    isoCode: "VG",
    name: "Virgin Islands (British)",
    currency: "British pound",
    currencyISO: "GBP",
  );
  static CountryCodeModel vi = CountryCodeModel(
    flag: "🇻🇮",
    dialingCode: "1",
    isoCode: "VI",
    name: "Virgin Islands (U.S.)",
    currency: "United States dollar",
    currencyISO: "USD",
  );
  static CountryCodeModel vn = CountryCodeModel(
    flag: "🇻🇳",
    dialingCode: "84",
    isoCode: "VN",
    name: "Vietnam",
    currency: "Vietnamese dong",
    currencyISO: "VND",
  );
  static CountryCodeModel vu = CountryCodeModel(
    flag: "🇻🇺",
    dialingCode: "678",
    isoCode: "VU",
    name: "Vanuatu",
    currency: "Vanuatu vatu",
    currencyISO: "VUV",
  );
  static CountryCodeModel wf = CountryCodeModel(
    flag: "🇼🇫",
    dialingCode: "681",
    isoCode: "WF",
    name: "Wallis and Futuna Islands",
    currency: "CFP franc",
    currencyISO: "XPF",
  );
  static CountryCodeModel ws = CountryCodeModel(
    flag: "🇼🇸",
    dialingCode: "685",
    isoCode: "WS",
    name: "Samoa",
    currency: "Samoan tala",
    currencyISO: "WST",
  );
  static CountryCodeModel ye = CountryCodeModel(
    flag: "🇾🇪",
    dialingCode: "967",
    isoCode: "YE",
    name: "Yemen",
    currency: "Yemeni rial",
    currencyISO: "YER",
  );
  static CountryCodeModel yt = CountryCodeModel(
    flag: "🇾🇹",
    dialingCode: "262",
    isoCode: "YT",
    name: "Mayotte",
    currency: "Euro",
    currencyISO: "EUR",
  );
  static CountryCodeModel za = CountryCodeModel(
    flag: "🇿🇦",
    dialingCode: "27",
    isoCode: "ZA",
    name: "South Africa",
    currency: "South African rand",
    currencyISO: "ZAR",
  );
  static CountryCodeModel zm = CountryCodeModel(
    flag: "🇿🇲",
    dialingCode: "260",
    isoCode: "ZM",
    name: "Zambia",
    currency: "Zambian kwacha",
    currencyISO: "ZMW",
  );
  static CountryCodeModel zw = CountryCodeModel(
    flag: "🇿🇼",
    dialingCode: "263",
    isoCode: "ZW",
    name: "Zimbabwe",
    currency: "United States dollar",
    currencyISO: "USD",
  );

  /// All the countries in the picker list
  static final all = <CountryCodeModel>[
    ae,
    ad,
    af,
    ag,
    ai,
    al,
    am,
    ao,
    aq,
    ar,
    as,
    at,
    au,
    aw,
    ax,
    az,
    ba,
    bb,
    bd,
    be,
    bf,
    bg,
    bh,
    bi,
    bj,
    bl,
    bm,
    bn,
    bo,
    bq,
    br,
    bs,
    bt,
    bv,
    bw,
    by,
    bz,
    ca,
    cc,
    cd,
    cf,
    cg,
    ch,
    ci,
    ck,
    cl,
    cm,
    cn,
    co,
    cr,
    cu,
    cv,
    cw,
    cx,
    cy,
    cz,
    de,
    dj,
    dk,
    dm,
    doo,
    dz,
    ec,
    ee,
    eg,
    eh,
    er,
    es,
    et,
    fi,
    fj,
    fk,
    fm,
    fo,
    fr,
    ga,
    gb,
    gd,
    ge,
    gf,
    gg,
    gh,
    gi,
    gl,
    gm,
    gn,
    gp,
    gq,
    gr,
    gs,
    gt,
    gu,
    gw,
    gy,
    hk,
    hm,
    hn,
    hr,
    ht,
    hu,
    id,
    ie,
    il,
    im,
    inn,
    io,
    iq,
    ir,
    iss,
    it,
    je,
    jm,
    jo,
    jp,
    ke,
    kg,
    kh,
    ki,
    km,
    kn,
    kp,
    kr,
    kw,
    ky,
    kz,
    la,
    lb,
    lc,
    li,
    lk,
    lr,
    ls,
    lt,
    lu,
    lv,
    ly,
    ma,
    mc,
    md,
    me,
    mf,
    mg,
    mh,
    mk,
    ml,
    mm,
    mn,
    mo,
    mp,
    mq,
    mr,
    ms,
    mt,
    mu,
    mv,
    mw,
    mx,
    my,
    mz,
    na,
    nc,
    ne,
    nf,
    ng,
    ni,
    nl,
    no,
    np,
    nr,
    nu,
    nz,
    om,
    pa,
    pe,
    pf,
    pg,
    ph,
    pk,
    pl,
    pm,
    pn,
    pr,
    ps,
    pt,
    pw,
    py,
    qa,
    re,
    ro,
    rs,
    ru,
    rw,
    sa,
    sb,
    sc,
    sd,
    se,
    sg,
    sh,
    si,
    sj,
    sk,
    sl,
    sm,
    sn,
    so,
    sr,
    ss,
    st,
    sv,
    sx,
    sy,
    sz,
    tc,
    td,
    tf,
    tg,
    th,
    tj,
    tk,
    tl,
    tm,
    tn,
    to,
    tr,
    tt,
    tv,
    tw,
    tz,
    ua,
    ug,
    um,
    us,
    uy,
    uz,
    va,
    vc,
    ve,
    vg,
    vi,
    vn,
    vu,
    wf,
    ws,
    ye,
    yt,
    za,
    zm,
    zw,
  ];
}
