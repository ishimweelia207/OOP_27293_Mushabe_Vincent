class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int discount;

  StudentCard(String owner, int balance, this.discount) : super(owner, balance);

  @override
  void pay(int fare) {
    int discountAmount = fare * discount ~/ 100;
    int discountedFare = fare - discountAmount;

    print('Student discount: $discountAmount RWF');
    super.pay(discountedFare);
  }

  void showDiscount() {
    print('Student discount: $discount%');
  }
}

void main() {
  // My numbers: D = 93, L = 3
  // Starting balance = 1930 RWF, Bus fare = 293 RWF, Discount = 13%

  // Create a card and test the setter
  BusCard card = BusCard('Ama', 1930);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change the owner to my full name
  card.owner = 'Mushabe Vincent';
  card.showInfo();

  // TODO 6: Top up 100 RWF, then 2000 RWF
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay the bus fare two times
  card.pay(293);
  card.pay(293);
  card.showInfo();

  // TODO 8: Create a StudentCard
  StudentCard studentCard = StudentCard('Mushabe Vincent', 1930, 13);

  // TODO 9: Pay the bus fare and show information
  studentCard.pay(293);
  studentCard.showInfo();
  studentCard.showDiscount();
}
