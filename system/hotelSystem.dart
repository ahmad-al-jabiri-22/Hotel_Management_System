import 'dart:io';

import '../models/guest.dart';
import '../models/room.dart';

class Hotelsystem {
  List<Guest> list_of_the_guest = [];
  List<Room> list_of_the_room = [];

  void addRoom(Room room) {
    list_of_the_room.add(room);
    print("new room has been added");
  }

  void addGuest(Guest guest) {
    list_of_the_guest.add(guest);
    print("new guest has been added");
  }

  void showAvailableRooms() {
    print("those rooms are avialabe");
    for (var room in list_of_the_room) {
      if (room.isAvailable == true) {
        stdout.write("${room.roomNumber}, ");
      }
    }
    print("");
  }

  void checkInGuest(int guestID, int roomNumber) {
    final guest = list_of_the_guest.firstWhere(
      (g) => g.id == guestID,
      orElse: () => throw Exception("can not find this id ${guestID} "),
    );

    final room = list_of_the_room.firstWhere(
      (r) => r.roomNumber == roomNumber,
      orElse:
          () =>
              throw Exception(
                "there is no room have this numebr ${roomNumber}",
              ),
    );

    guest.checkIn(room.roomNumber);
  }

  void checkOutGuest(int guestID) {
    final guest = list_of_the_guest.firstWhere(
      (g) => g.id == guestID,
      orElse: () => throw Exception("cant not find this id: ${guestID}"),
    );

    guest.checkOut();
  }
}
