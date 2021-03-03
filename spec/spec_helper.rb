# frozen_string_literal: true
require 'validates_zipcode'

TEST_DATA = {
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
      '1001 SA',
      '1001 aa',
      '6388sW',
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
      '58763000',
      '58935-000',
      '12345678',
    ],
    invalid: [
      nil,
      '',
      'invalid_zip',
      '1234',
      '123456789',
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
      'JMDEH00',
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
      'LV-8735',
      '8735'
    ],
    invalid: [
      nil,
      '',
      'invalid_zip',
      'LV-12345',
      'LV-123',
      'L-1234',
      '123'
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