namespace golf;

entity Rounds {
  key ID : UUID;
  title  : String(111);
  entrees: {
    firstname : String(100);
    lastname : String (100);
  }
  holes : Assocation to many Holes;
}

entity Holes {
  key ID : UUID;
  shots : Assocation to many Shots;
  par : Int4;
  score : Int4;
}

entity Shots {
  key ID : UUID;
}