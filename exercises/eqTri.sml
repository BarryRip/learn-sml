datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real)


fun showTriCood [] = []
| showTriCood(Triangle(a,b,c)::ps) = (a,b,c)::showTriCood(ps)
| showTriCood(p::ps) = showTriCood(ps)

fun distance(one: real*real, two: real*real) =
    Math.sqrt(Math.pow(#1one - #1two, 2.0) + Math.pow(#2one - #2two, 2.0))

fun areSidesEqual(a, b, c) =
    Real.compare(distance(a, b), distance(b, c)) = EQUAL
    andalso Real.compare(distance(b, c), distance(c, a)) = EQUAL;

fun showTriEq [] = false
| showTriEq(Triangle(a,b,c)::ps) = areSidesEqual(a, b, c)
| showTriEq(p::ps) = showTriEq(ps);

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);