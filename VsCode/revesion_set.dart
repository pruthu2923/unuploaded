import 'dart:io';

void main()
{
  Set s ={1,2,3,4,5,6,32,10};
  
  s.add(11);
  s.addAll({11,22,33,44});
  //s.remove(11);
  //s.removeAll({22,44});
  //s.removeWhere((element) => element<43);
  Set b = {1,64,32,453};
  Set i = s.intersection(b);
  Set u = s.union(b);
  print(s);
  print(b);
  print(i);
  print(u);
}