import card

type deck* = object of RootObj
  top : ref card

#returns iterator for the list
proc cards*(self : deck) : ref card =
  return self.top

#top getter/setter
proc top(self : deck) : ref card =
  return self.top

proc `top=`(self : var deck, val : ref card) =
  self.top = val