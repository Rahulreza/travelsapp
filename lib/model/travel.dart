class Travel{
  String name;
  String address;
  String img;

  Travel(this.name,this.address,this.img);

  static List<Travel> generatedTravelList() {
   return
       [
         Travel("Mohastangar", "Bogura", 'images/p1.png'),
         Travel("Sajek", "Khagrachori", 'images/p2.png'),
         Travel("Moynamoti", "Cumilla", 'images/p3.png'),
         Travel("Potengga", "Coxbazae", 'images/p4.png'),
         Travel("Sentmrtin", "Coxbazar", 'images/p5.png'),
         Travel("Vashu Bihar", "Rajshahi", 'images/p6.png'),

       ];
  }

  static List<Travel> mostPopularList() {
    return
      [
        Travel("Source d’Argent", "Seychelles", 'images/s1.png'),
        Travel("Dune du Pyla", "France", 'images/s2.png'),
        Travel("Shoal Bay ", "Antigua", 'images/s3.png'),
        Travel("Cala Saona ", "Formentera", 'images/s4.png'),
        Travel("Glass Beach", "California", 'images/s5.png'),
        Travel("Starfish Beach", "Panama", 'images/s6.png'),

      ];
  }
}
