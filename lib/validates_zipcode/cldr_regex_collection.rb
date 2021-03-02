# frozen_string_literal: true
# Regex source: http://unicode.org/cldr/trac/browser/trunk/common/supplemental/postalCodeData.xml
# 159 countries supported
#
module ValidatesZipcode
  module CldrRegexpCollection
    ZIPCODES_REGEX = {
      GB: /\AGIR ?0AA|((([A-Z]\d{1,2})|(([A-Z][A-HJ-Y]\d{1,2})|(([A-Z]\d[A-Z])|([A-Z][A-HJ-Y]\d?[A-Z])))) ?\d[A-Z]{2})\z/i,
      UK: /\AGIR ?0AA|((([A-Z]\d{1,2})|(([A-Z][A-HJ-Y]\d{1,2})|(([A-Z]\d[A-Z])|([A-Z][A-HJ-Y]\d?[A-Z])))) ?\d[A-Z]{2})\z/i,
      # GB: /\AGIR[ ]?0AA|((AB|AL|B|BA|BB|BD|BH|BL|BN|BR|BS|BT|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}))|BFPO[ ]?\d{1,4}\z/i,
      # UK: /\A([A-PR-UWYZ0-9][A-HK-Y0-9][AEHMNPRTVXY0-9]?[ABEHMNPRVWXY0-9]? {1,2}[0-9][ABD-HJLN-UW-Z]{2}|GIR 0AA)\z/,
      JE: /\AJE\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/,
      GG: /\AGY\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/,
      IM: /\AIM\d[\dA-Z]?[ ]?\d[ABD-HJLN-UW-Z]{2}\z/,
      US: /\A\d{5}([ \-](?:\d{4}|\d{6}))?\z/,
      IE: /\A([AC-FHKNPRTV-Y]\d{2}|D6W)\s?[0-9AC-FHKNPRTV-Y]{4}\z/,
      CA: /\A[ABCEGHJKLMNPRSTVXY]\d[ABCEGHJ-NPRSTV-Z][ ]?\d[ABCEGHJ-NPRSTV-Z]\d\z/,
      DE: /\A\d{5}\z/,
      AU: /\A\d{4}\z/,
      IT: /\A\d{5}\z/,
      CH: /\A\d{4}\z/,
      AT: /\A\d{4}\z/,
      ES: /\A\d{5}\z/,
      NL: /\A[1-9]\d{3}[ ]?(S[BCE-RT-Z]|[A-RT-Z][A-Z])\z/,
      BE: /\A\d{4}\z/,
      DK: /\A\d{4}\z/,
      NO: /\A\d{4}\z/,
      FI: /\A\d{5}\z/,
      AX: /\A22\d{3}\z/,
      KR: /\A(\d{5}|\d{3}[\-]\d{3})\z/,
      CN: /\A\d{6}\z/,
      SG: /\A\d{6}\z/,
      DZ: /\A\d{5}\z/,
      AD: /\AAD\d{3}\z/,
      AR: /\A[A-HJ-NP-Z]{1}\d{4}([A-Z]{3})?\z/,
      AM: /\A(37)?\d{4}\z/,
      # NOTE: Bahrain has no postal codes
      # BH: /\A((1[0-2]|[2-9])\d{2})?\z/,
      BD: /\A\d{4}\z/,
      BB: /\A(BB)\d{5}\z/,
      BY: /\A\d{6}\z/,
      BM: /\A[A-Z]{2}[ ]?[A-Z0-9]{2}\z/,
      BA: /\A\d{5}\z/,
      BN: /\A[BKTP]{1}[A-Z]{1}[ ]?\d{4}\z/,
      BG: /\A\d{4}\z/,
      KH: /\A\d{5}\z/,
      CV: /\A\d{4}\z/,
      CL: /\A\d{3}[-]?\d{4}\z/,
      HR: /\A\d{5}\z/,
      CY: /\A\d{4}\z/,
      CZ: /\A[1-7][0-9]{2}[ ]?\d{2}\z/,
      DO: /\A\d{5}\z/,
      EC: /\A\d{6}\z/,
      EE: /\A\d{5}\z/,
      FO: /\A\d{3}\z/,
      GE: /\A\d{4}\z/,
      GL: /\A39\d{2}\z/,
      GT: /\A\d{5}\z/,
      HT: /\A\d{4}\z/,
      HU: /\A\d{4}\z/,
      IS: /\A\d{3}\z/,
      IN: /\A\d{6}\z/,
      ID: /\A\d{5}\z/,
      IL: /\A\d{5}(\d{2})?\z/,
      JO: /\A\d{5}\z/,
      KZ: /\A\d{6}\z/,
      KE: /\A\d{5}\z/,
      KW: /\A\d{5}\z/,
      LA: /\A\d{5}\z/,
      # NOTE: Lebanon has no postal codes
      # LB: /\A(\d{4}([ ]?\d{4})?)?\z/,
      LU: /\A(L|L\-)?\d{4}\z/,
      MK: /\A\d{4}\z/,
      MY: /\A\d{5}\z/,
      MV: /\A\d{5}\z/,
      MT: /\A[A-Za-z]{3}[ ]?\d{2,4}\z/,
      MU: /\A[ARar1-9]\d{4}\z/,
      MX: /\A\d{5}\z/,
      MA: /\A\d{5}\z/,
      NZ: /\A\d{4}\z/,
      NI: /\A\d{5}\z/,
      NG: /\A\d{6}\z/,
      OM: /\A(PC )?\d{3}\z/,
      PK: /\A\d{5}\z/,
      PY: /\A\d{4}\z/,
      PH: /\A\d{4}\z/,
      PL: /\A\d{2}[ -]?\d{3}\z/,
      PR: /\A00[679]\d{2}([ \-]\d{4})?\z/,
      RO: /\A\d{6}\z/,
      RU: /\A\d{6}\z/,
      SM: /\A4789\d\z/,
      SA: /\A\d{5}\z/,
      SN: /\A\d{5}\z/,
      SI: /\A\d{4}\z/,
      ZA: /\A\d{4}\z/,
      LK: /\A\d{5}\z/,
      TJ: /\A\d{6}\z/,
      TH: /\A\d{5}\z/,
      TN: /\A\d{4}\z/,
      TR: /\A\d{5}\z/,
      TM: /\A\d{6}\z/,
      UA: /\A\d{5}\z/,
      UZ: /\A\d{6}\z/,
      VA: /\A00120\z/,
      VE: /\A\d{4}\z/,
      ZM: /\A\d{5}\z/,
      AS: /\A96799\z/,
      CC: /\A6799\z/,
      CK: /\A\d{4}\z/,
      RS: /\A\d{5}\z/,
      CS: /\A\d{5}\z/,
      YU: /\A\d{5}\z/,
      CX: /\A6798\z/,
      ET: /\A\d{4}\z/,
      FK: /\AFIQQ 1ZZ\z/,
      NF: /\A2899\z/,
      FM: /\A(9694[1-4])([ \-]\d{4})?\z/,
      GF: /\A9[78]3\d{2}\z/,
      GP: /\A9[78][01]\d{2}\z/,
      GS: /\ASIQQ 1ZZ\z/,
      GU: /\A969([1-3][0-9])([ \-]\d{4})?\z/,
      GW: /\A\d{4}\z/,
      HM: /\A\d{4}\z/,
      IQ: /\A\d{5}\z/,
      KG: /\A\d{6}\z/,
      LR: /\A\d{4}\z/,
      LS: /\A\d{3}\z/,
      MG: /\A\d{3}\z/,
      MN: /\A\d{6}\z/,
      MP: /\A9695[012]([ \-]\d{4})?\z/,
      MQ: /\A9[78]2\d{2}\z/,
      NC: /\A988\d{2}\z/,
      NE: /\A\d{4}\z/,
      PF: /\A987\d{2}\z/,
      PG: /\A\d{3}\z/,
      PM: /\A9[78]5\d{2}\z/,
      PN: /\APCRN[ ]?1ZZ\z/,
      PW: /\A96940\z/,
      RE: /\A((97)(4|7|8)[0-9][0-9])\z/,
      SH: /\A(ASCN|STHL|TDCU)[ ]?1ZZ\z/,
      SJ: /\A\d{4}\z/,
      SZ: /\A[HLMS]\d{3}\z/,
      TC: /\ATKCA[ ]?1ZZ\z/,
      WF: /\A986\d{2}\z/,
      XK: /\A\d{5}\z/,
      YT: /\A976\d{2}\z/,
      # NOTE: UAE has no postal codes
      # https://github.com/dgilperez/validates_zipcode/issues/28
      # AE: /\A([a-zA-Z\d\s]){3,}\z/,
      AF: /\A\d{4}\z/,
      AL: /\A\d{4}\z/,
      AG: /\A([a-zA-Z\d\s]){3,}\z/,
      AO: /\A([a-zA-Z\d\s]){3,}\z/,
      AZ: /\A([a-zA-Z\d\s]){3,}\z/,
      BF: /\A([a-zA-Z\d\s]){3,}\z/,
      BI: /\A([a-zA-Z\d\s]){3,}\z/,
      BS: /\A([a-zA-Z\d\s]){3,}\z/,
      BZ: /\A([a-zA-Z\d\s]){3,}\z/,
      BR: /\A\d{5}(-?\d{3})?\z/,
      BJ: /\A([a-zA-Z\d\s]){3,}\z/,
      BT: /\A\d{5}\z/,
      BQ: /\A([a-zA-Z\d\s]){3,}\z/,
      BO: /\A\d{4}\z/,
      BW: /\A([a-zA-Z\d\s]){3,}\z/,
      CF: /\A([a-zA-Z\d\s]){3,}\z/,
      CG: /\A([a-zA-Z\d\s]){3,}\z/,
      CI: /\A([a-zA-Z\d\s]){3,}\z/,
      # NOTE: Cameroon has no postal codes
      # CM: /\A([a-zA-Z\d]){3,7}\z/,
      CO: /\A([a-zA-Z\d\s]){3,}\z/,
      CR: /\A\d{5}\z/,
      CU: /\A\d{5}\z/,
      KM: /\A([a-zA-Z\d\s]){3,}\z/,
      DJ: /\A([a-zA-Z\d\s]){3,}\z/,
      DM: /\A([a-zA-Z\d\s]){3,}\z/,
      EG: /\A([a-zA-Z\d\s]){3,}\z/,
      GQ: /\A([a-zA-Z\d\s]){3,}\z/,
      EL: /\A\d{5}\z/,
      ER: /\A([a-zA-Z\d\s]){3,}\z/,
      FJ: /\A([a-zA-Z\d\s]){3,}\z/,
      FR: /\A\d{5}\z/,
      # https://www.gpost.ge/?site-lang=en&site-path=help%2Fzipcodes%2F&group=3
      GA: /\A\d{4}\z/,
      GD: /\A([a-zA-Z\d\s]){3,}\z/,
      GH: /\A([a-zA-Z\d\s]){3,}\z/,
      GM: /\A([a-zA-Z\d\s]){3,}\z/,
      GN: /\A([a-zA-Z\d\s]){3,}\z/,
      GI: /\A(GX11[ ]?1AA)\z/,
      GR: /\A\d{3}[ ]?\d{2}\z/,
      GY: /\A([a-zA-Z\d\s]){3,}\z/,
      HN: /\A(([a-zA-Z]){2}|\d{2})\d{4}\z/,
      IO: /\A\d{5}\z/,
      IR: /\A\d{5}\z/,
      JP: /\A\d{3}\-?\d{4}\z/,
      # https://en.youbianku.com/Jamaica#:~:text=Jamaica%20has%20no%20postcode%20system,the%20name%20of%20the%20town.
      JM: /\A((JM)(DCN|CHR|AKN|DMR|BPD|AAW|CAN|ACE|DEH|CJS|BMY|BTS|CTY|DWD)([0-2][1-9]))\z/,
      KI: /\A(KI)\d{4}\z/,
      KN: /\A(KN)\d{4}\z/,
      KP: /\A([a-zA-Z\d\s]){3,8}\z/,
      LI: /\A\d{4}\z/,
      LV: /\A(LV)?\-?\d{4}\z/,
      LY: /\A\d{5}\z/,
      LT: /\A(LT-)?\d{5}\z/,
      LC: /\A([a-zA-Z\d\s]){3,}\z/,
      MC: /\A\d{5}\z/,
      MD: /\A(([a-zA-Z]){2})(|\s)\d{4}\z/,
      ME: /\A([a-zA-Z\d\s]){3,}\z/,
      MH: /\A\d{5}\z/,
      MR: /\A([a-zA-Z\d\s]){3,}\z/,
      MM: /\A([a-zA-Z\d\s]){3,}\z/,
      MW: /\A([a-zA-Z\d\s]){3,}\z/,
      MZ: /\A\d{4}\z/,
      NA: /\A\d{5}\z/,
      NP: /\A\d{6}\z/,
      NR: /\A([a-zA-Z\d\s]){3,}\z/,
      PT: /\A\d{4}([\-]\d{3})?\z/,
      PS: /\A\d{3}\z/,
      PA: /\A\d{4}\z/,
      PE: /\A\d{5}\z/,
      QA: /\A([a-zA-Z\d\s]){3,}\z/,
      RW: /\A([a-zA-Z\d\s]){3,}\z/,
      SC: /\A([a-zA-Z\d\s]){3,}\z/,
      SE: /\A\d{3}[ ]?\d{2}\z/,
      SK: /\A[089]\d{2}[ ]?\d{2}\z/,
      SL: /\A([a-zA-Z\d\s]){3,}\z/,
      SB: /\A([a-zA-Z\d\s]){3,}\z/,
      SR: /\A([a-zA-Z\d\s]){3,}\z/,
      SO: /\A([a-zA-Z\d\s]){3,}\z/,
      SV: /\A([a-zA-Z\d\s]){3,}\z/,
      SD: /\A\d{5}\z/,
      ST: /\A([a-zA-Z\d\s]){3,}\z/,
      SY: /\A([a-zA-Z\d\s]){3,}\z/,
      SS: /\A\d{5}\z/,
      TD: /\A\d{5}\z/,
      TG: /\A([a-zA-Z\d\s]){3,}\z/,
      TO: /\A([a-zA-Z\d\s]){3,}\z/,
      TZ: /\A([a-zA-Z\d\s]){3,}\z/,
      TT: /\A\d{6}\z/,
      TW: /\A\d{3}(\d{2})?\z/,
      UG: /\A([a-zA-Z\d\s]){3,}\z/,
      UM: /\A([a-zA-Z\d\s]){3,}\z/,
      UY: /\A([a-zA-Z\d\s]){3,}\z/,
      VC: /\A(VC)\d{4}\z/,
      VI: /\A\d{5}\z/,
      VG: /\A([a-zA-Z\d\s]){3,}\z/,
      VN: /\A\d{6}\z/,
      VU: /\A([a-zA-Z\d\s]){3,}\z/,
      WS: /\A([a-zA-Z\d\s]){3,}\z/,
      YE: /\A([a-zA-Z\d\s]){3,}\z/,
      ZW: /\A([a-zA-Z\d\s]){3,}\z/
    }.freeze

    ZIPCODE_VALUES = {
      GB: {
        valid: [
          'ID1 1QD',
          'M32 0JG',
          'NE30 1DP',
          'OX49 5NU',
          'SW1A 2AA',
          'W1K 7DA',
          'id1 1qd',
          'Sw1A 2aA',
          'id11qd',
          'SW1A2AA'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'id11qd1000',
          '28001'
        ]
      },
      UK: {
        valid: [
          'ID1 1QD',
          'M32 0JG',
          'NE30 1DP',
          'OX49 5NU',
          'SW1A 2AA',
          'W1K 7DA',
          'id1 1qd',
          'Sw1A 2aA',
          'id11qd',
          'SW1A2AA'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'id11qd1000',
          '28001'
        ]
      },
      JE: {
        valid: [
          'JE1 1QD',
          'JE32 0JG',
          'JE30 1DP',
          'JE49 5NU',
          'je1 2aA',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'id11qd1000',
          '28001'
        ]
      },
      GG: {
        valid: [
          'GY1 1QD',
          'GY32 0JG',
          'GY30 1DP',
          'GY49 5NU',
          'gy1 2aA',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'id11qd1000',
          '28001'
        ]
      },
      IM: {
        valid: [
          'IM1 1QD',
          'IM32 0JG',
          'IM30 1DP',
          'IM49 5NU',
          'im1 2aA',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'id11qd1000',
          '28001'
        ]
      },
      US: {
        valid: [
          12_345,
          '12345',
          '12345-1234',
          '12345-123456',
          '12345 1234',
          '12345 123456'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      IE: {
        valid: [
          'D02 AF30',
          'X91 PK81',
          'V94 H2PP',
          'D07 R6YE',
          'D6W1234',
          'A230984',
          'D00AV92',
          'Y631FHK',
          'A000000',
          'D44N4X4'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345'
        ]
      },
      CA: {
        valid: [
          'A1J2Z9',
          'P5R3E3',
          'S9G 6S0',
          'V8G3K9'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'C1424CHN',
          '12345',
          'D0D0D0'
        ]
      },
      DE: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      AU: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      IT: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CH: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      AT: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      ES: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      NL: {
        valid: [
          '1001 AA',
          '6388SW',
          '7144SX',
          '1001 AA',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '0100 AA',
          '1001 SS',
          '1111 SD',
          '1001 SA'
        ]
      },
      BE: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      DK: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      NO: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      FI: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      AX: {
        valid: [
          '22113',
          '22566',
          '22261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '07113',
          '2234',
          '22113-22113',
          'D0D0D0'
        ]
      },
      KR: {
        valid: [
          '72315',
          '723-150',
          '11011',
          '110-110'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '723155'
        ]
      },
      CN: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      SG: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      DZ: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      AD: {
        valid: [
          'AD113',
          'AD566',
          'AD261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AD34',
          'AD113-AD113',
          'D0D0D0'
        ]
      },
      AR: {
        valid: [
          'C1234CHN',
          'C1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'I1234'
        ]
      },
      AM: {
        valid: [
          '375010',
          '0010',
          '1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '123456'
        ]
      },
      BD: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      BB: {
        valid: [
          'BB12345',
          'BB54837',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY12345'
        ]
      },
      BY: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      BM: {
        valid: [
          'ABCD',
          'AB12',
          'AB CD',
          'AB 12'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'ABC 12',
          '1234',
          '12 34'
        ]
      },
      BA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      BN: {
        valid: [
          'BC1234',
          'KX 1234',
          'TC1234',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XC1234',
          'XC 1234'
        ]
      },
      BG: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      KH: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CV: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      CL: {
        valid: [
          '123-1233',
          '000-0000',
          '1234567'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345',
          'C1424CHN',
          '122-12345'
        ]
      },
      HR: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CY: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      CZ: {
        valid: [
          '12000',
          '721 00'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '981 32'
        ]
      },
      DO: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      EC: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      EE: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      FO: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      GE: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      GL: {
        valid: [
          '3900',
          '3973'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234'
        ]
      },
      GT: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      HT: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      HU: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      IS: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      IN: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      ID: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      IL: {
        valid: [
          '12345',
          '1234567'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '123456'
        ]
      },
      JO: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      KZ: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      KE: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      KW: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      LA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      LU: {
        valid: [
          'L-5635',
          'L5635',
          '5635'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '124',
          '-1234',
        ]
      },
      MK: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      MY: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      MV: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      MT: {
        valid: [
          'IDA 1234',
          'idA 1234',
          'idA1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'nope',
          'MX92XP',
          'MX9 1234'
        ]
      },
      MU: {
        valid: [
          '42602',
          'A2101',
          'r6414'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '05678',
          'B4242'
        ]
      },
      MX: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      MA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      NZ: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      NI: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      NG: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      OM: {
        valid: [
          '123',
          'PC 123',
          '847',
          'PC 847'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12',
          '1234',
          'PC123'
        ]
      },
      PK: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      PY: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      PH: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      PL: {
        valid: [
          '12-345',
          '12 345',
          '12345',
          '54-321'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123456',
          '123-45',
          '12-3456',
          '12-34'
        ]
      },
      PR: {
        valid: [
          '00731',
          '00690',
          '00690-4321',
          '00731-1234',
          '00731 1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '12345-1234',
          '12345 1234'
        ]
      },
      RO: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      RU: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      SM: {
        valid: [
          '47890',
          '47895',
          '47899'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      SA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      SN: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      SI: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      ZA: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      LK: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      TJ: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      TH: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      TN: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      TR: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      TM: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      UA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      UZ: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      VA: {
        valid: [
          '00120'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      VE: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      ZM: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      AS: {
        valid: [
          '96799'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234'
        ]
      },
      CC: {
        valid: [
          '6799'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234'
        ]
      },
      CK: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      RS: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CS: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      YU: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CX: {
        valid: [
          '6798'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234'
        ]
      },
      ET: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      FK: {
        valid: [
          "FIQQ 1ZZ",
          "FIQQ1ZZ"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      NF: {
        valid: [
          '2899'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234'
        ]
      },
      FM: {
        valid: [
          '96942',
          '96942-1234',
          '96942 1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      GF: {
        valid: [
          '97321',
          '97347'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      GP: {
        valid: [
          '97139',
          '97160'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      GS: {
        valid: [
          "SIQQ 1ZZ",
          "SIQQ1ZZ"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      GU: {
        valid: [
          '96910',
          '96916',
          '96920',
          '96929',
          '96932',
          '96920-1234',
          '96920 1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '96940',
          '96942'
        ]
      },
      GW: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      HM: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      IQ: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      KG: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      LR: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      LS: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      MG: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      MN: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      MP: {
        valid: [
          '96950',
          '96951',
          '96952',
          '96952-1234',
          '96952 1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '96959',
          '96952-12345'
        ]
      },
      MQ: {
        valid: [
          '97216'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      NC: {
        valid: [
          '98814'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      NE: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      PF: {
        valid: [
          '98730',
          '98733'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      PG: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      PM: {
        valid: [
          '97500',
          '97502'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      PN: {
        valid: [
          "PCRN 1ZZ",
          "PCRN1ZZ"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      PW: {
        valid: [
          '96939',
          '96940'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345'
        ]
      },
      RE: {
        valid: [
          '97419',
          '97764',
          '97885',
          '97419',
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '97119',
          '98419',
        ]
      },
      SH: {
        valid: [
          "ASCN 1ZZ",
          "ASCN1ZZ",
          "STHL 1ZZ",
          "STHL1ZZ",
          "TDCU 1ZZ",
          "TDCU1ZZ"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      SJ: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      SZ: {
        valid: [
          'H113',
          'L566',
          'M261',
          'S261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'HM113',
          'L34',
          'H113-H113',
          'D0D0D0'
        ]
      },
      TC: {
        valid: [
          "TKCA 1ZZ",
          "TKCA1ZZ"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      WF: {
        valid: [
          '98613',
          '98666',
          '98661'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '98666-98666',
          '12345',
          'D0D0D0'
        ]
      },
      XK: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      YT: {
        valid: [
          '97613',
          '97666',
          '97661'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '97666-97666',
          '12345',
          'D0D0D0'
        ]
      },
      AF: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      AL: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      AG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      AO: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BF: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BI: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BS: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BZ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BR: {
        valid: [
          '58397-000',
          '58915-000',
          '58763-000',
          '58935-000'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345000'
        ]
      },
      BJ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BT: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      BQ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      BO: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      BW: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      CF: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      CG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      CI: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      CO: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      CR: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      CU: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      KM: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      DJ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      DM: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      EG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      GQ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      EL: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      ER: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      FJ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      FR: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      GA: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      GD: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      GH: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      GM: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      GN: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      GI: {
        valid: [
          "GX11 1AA",
          "GX111AA"
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'XY1 5SJ'
        ]
      },
      GR: {
        valid: [
          '048 80',
          '50039',
          '67183'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '123456'
        ]
      },
      GY: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      HN: {
        valid: [
          'BV2722',
          'XY1234'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'B2722',
          'XY12345',
          'XY123'
        ]
      },
      IO: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      IR: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      JP: {
        valid: [
          '1029200',
          '102-9200',
          '408-0301',
          '207-1000'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1200'
        ]
      },
      JM: {
        valid: [
          'JMDEH01',
          'JMCJS10',
          'JMDWD08',
          'JMCAN20',
          'JMDCN29'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'JMDWD30',
          'JMDCN91',
          'JMXYZ05',
        ]
      },
      KI: {
        valid: [
          'KI2181',
          'KI6376',
          'KI4702'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'KI281',
          'KI63726',
          'IK4702'
        ]
      },
      KN: {
        valid: [
          'KN2181',
          'KN6376',
          'KN4702'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'KN281',
          'KN63726',
          'NK4702'
        ]
      },
      KP: {
        valid: [
          '123',
          'ABC',
          '12345678',
          '123sd678'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12',
          'AB',
          '123456789',
          '12f3sd678'
        ]
      },
      LI: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      LV: {
        valid: [
          'LV-1234',
          'LV-8735'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'LV-12345',
          'LV-123',
          'L-1234',
          '8735'
        ]
      },
      LY: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      LT: {
        valid: [
          'LT-00110',
          '00110'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'LT-2100',
          '2100',
          'LT21006'
        ]
      },
      LC: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      MC: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      MD: {
        valid: [
          'MD2001'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'MD-2100'
        ]
      },
      ME: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      MH: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      MR: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      MM: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      MW: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      MZ: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      NA: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      NP: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      NR: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      PT: {
        valid: [
          '4500',
          '4500-250'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '4500-2500'
        ]
      },
      PS: {
        valid: [
          '711',
          '256',
          '626',
          '711'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '123-123',
          'D0D0D0'
        ]
      },
      PA: {
        valid: [
          '7113',
          '2566',
          '6261',
          '7113'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '1234-1234',
          'D0D0D0'
        ]
      },
      PE: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      QA: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      RW: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SC: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SE: {
        valid: [
          '048 80',
          '50039',
          '67183'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '123456'
        ]
      },
      SK: {
        valid: [
          '83102',
          '911 05',
          '094 12'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '120 00'
        ]
      },
      SL: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SB: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SR: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SO: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SV: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SD: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      ST: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SY: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      SS: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      TD: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      TG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      TO: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      TZ: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      TT: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      TW: {
        valid: [
          '833',
          '74144'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '4329'
        ]
      },
      UG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      UM: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      UY: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      VC: {
        valid: [
          'VC2181',
          'VC6376',
          'VC4702'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'VC281',
          'VC63726',
          'CV4702'
        ]
      },
      VI: {
        valid: [
          '07113',
          '02566',
          '66261'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '1234',
          '12345-12345',
          'D0D0D0'
        ]
      },
      VG: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      VN: {
        valid: [
          '071134',
          '025663',
          '662612',
          '071135'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          '12345',
          '123456-123456',
          'D0D0D0'
        ]
      },
      VU: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      WS: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      YE: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      },
      ZW: {
        valid: [
          '42511',
          'AZ42511',
          'XY12Z',
          'A12',
          '123',
          'ABC'
        ],
        invalid: [
          nil,
          '',
          'invalid_zip',
          'AB',
          '12'
        ]
      }
    }.freeze

    def regexp_for_country_alpha2(alpha2)
      alpha2 = alpha2.to_s.upcase.to_sym

      ZIPCODES_REGEX[alpha2]
    end

    def values_for_country_alpha2(alpha2)
      alpha2 = alpha2.to_s.upcase.to_sym

      ZIPCODE_VALUES[alpha2]
    end
  end
end
