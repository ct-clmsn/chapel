use driver;

class C {
  var dom: domain(2) distributed Dist2D = [1..5, 1..5];
  var arr: [dom] int;
}

var c = new C();

forall i in c.dom do
  c.arr(i) = next();

writeln(c);
