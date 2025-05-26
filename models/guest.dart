class Guest {
  int id;
  String name;
  int? roomNumber;

  Guest({
    required this.id,
    required this.name,
    required this.roomNumber
  });


  void checkIn(int _roomNumber )
  {
    roomNumber = _roomNumber;
    print("the coustomer have room number ${roomNumber}");
  }

  void checkOut()
  {
     print("the coustomer leaved the room number ${roomNumber}");
    roomNumber = null;
  }
}