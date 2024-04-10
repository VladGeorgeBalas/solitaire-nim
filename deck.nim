import card

type deck = object of RootObj
  top : ref card

proc cards*(self : deck) : ref card =
  return self.top

