using {
  managed,
  sap
} from '@sap/cds/common';

namespace golf;

entity Rounds : managed {
  key ID      : UUID;
      title   : String(111);
      entrees : {
        firstname : String(100);
        lastname  : String(100);
      };
      holes   : Association to many Holes;
}

entity Holes : managed {
  key ID     : UUID;
      par    : Int16;
      score  : Int16;
      shots  : Association to many Shots;
      rounds : Association to many Rounds;
}

entity Shots : managed {
  key ID : UUID;
}
