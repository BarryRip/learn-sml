(* Complete the expression *)
fun isValidDate(d, m) = d >= 1 andalso case m of
"January" => d <= 31
| "February" => d <= 28
| "March" => d <= 31
| "April" => d <= 30
| "May" => d <= 31
| "June" => d <= 30
| "July" => d <= 31
| "August" => d <= 31
| "September" => d <= 30
| "October" => d <= 31
| "November" => d <= 30
| "December" => d <= 31
| _ => false;