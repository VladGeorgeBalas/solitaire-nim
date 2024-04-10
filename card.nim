type card* = object
  number : char
  suit : char
  faceUp : bool
  next : ref card

proc newCard*() : ref card =
  return new card

iterator items*(self : ref card) : ref card =
  var tmp = self
  while tmp != nil :
    yield tmp
    tmp = tmp.next

proc number*(self : ref card) : char =
  return self.number

proc `number=`*(self : ref card, val : char) =
  self.number = val

proc suit*(self : ref card) : char =
  return self.suit

proc `suit=`*(self : ref card, val : char) =
  self.suit = val

proc faceUp*(self : ref card) : bool =
  return self.faceUp

proc `faceUp=`*(self : ref card, val : bool) =
  self.faceUp = val

proc next*(self : ref card) : ref card=
  return self.next

proc `next=`(self : ref card, val : ref card) =
  self.next = val