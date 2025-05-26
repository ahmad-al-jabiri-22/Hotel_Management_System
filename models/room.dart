enum Type{
  Single,
  Double,
  Suite
}

class Room{
int roomNumber;
bool isAvailable;
Type type;

Room({
  required this.roomNumber,
  required this.isAvailable,
  required this.type
});

void markAsOccupied()
{
  isAvailable = false;
  print("this room is occupied now");
}


void markAsAvailable()
{
  isAvailable = true;
  print("this room is free now");
}
}