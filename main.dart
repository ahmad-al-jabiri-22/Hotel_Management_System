import 'models/guest.dart';
import 'models/room.dart';
import 'system/hotelSystem.dart';

void main() {
  final system = Hotelsystem();

  // Creating guests
  final g1 = Guest(id: 1, name: "Ahmad", roomNumber: null);
  final g2 = Guest(id: 2, name: "Ibrahim", roomNumber: null);

  // Creating rooms
  final room1 = Room(roomNumber: 1, isAvailable: true, type: Type.Single);
  final room2 = Room(roomNumber: 2, isAvailable: true, type: Type.Double);
  final room3 = Room(roomNumber: 3, isAvailable: true, type: Type.Suite);
  final room4 = Room(roomNumber: 4, isAvailable: true, type: Type.Single);

  // Adding guests to the system
  system.addGuest(g1);
  system.addGuest(g2);

  // Adding rooms to the system
  system.addRoom(room1);
  system.addRoom(room2);
  system.addRoom(room3);
  system.addRoom(room4);

  // Display available rooms
  system.showAvailableRooms();

  // Check-in guest
  system.checkInGuest(1, 2); // Ahmad gets room 2

  // Check-in the second guest
  system.checkInGuest(2, 1); // Ibrahim gets room 1

  // Show current room assignments
  print("${g1.name} is in room ${g1.roomNumber}");
  print("${g2.name} is in room ${g2.roomNumber}");

  // Check-out first guest
  system.checkOutGuest(1);

  // Show available rooms again
  system.showAvailableRooms();
}
