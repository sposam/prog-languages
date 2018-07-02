(* This is a comment. This is the first program *)

val x = 34;
(* static environment, x: int *)
(* dynamic environment, x --> 34 *)

val y = 17;
(* static environment, x: int, y: int *)
(* dynamic environment, x --> 34, y --> 17 *)

(* Earlier bindings *)
val z = (x+y) + (y+2);
(* evaluates the expression in the dynamic env*)
(* dynamic environment, x --> 34, y --> 17 , z --> 70 *)

val abs_of_z = if z<0 then 0-z else z;
val abs_of_z_simpler = abs z;
(* Both above statements return 70 *)
