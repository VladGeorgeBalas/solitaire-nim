type card* = object
  number : char
  suit : char
  faceUp : bool
  next : ref card

#constructor
proc newCard*() : ref card =
  return new card

#iterate all items of the linked list
iterator items*(self : ref card) : ref card =
  var tmp = self
  while tmp != nil :
    yield tmp
    tmp = tmp.next

#number getter/setter
proc number*(self : ref card) : char =
  return self.number

proc `number=`*(self : ref card, val : char) =
  self.number = val

#suit getter/setter
proc suit*(self : ref card) : char =
  return self.suit

proc `suit=`*(self : ref card, val : char) =
  self.suit = val

#faceUp getter/setter
proc faceUp*(self : ref card) : bool =
  return self.faceUp

proc `faceUp=`*(self : ref card, val : bool) =
  self.faceUp = val

#next getter/setter
proc next*(self : ref card) : ref card=
  return self.next

proc `next=`(self : ref card, val : ref card) =
  self.next = val