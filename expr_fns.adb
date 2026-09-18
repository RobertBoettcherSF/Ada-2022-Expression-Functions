pragma Ada_2022;

package body Expr_Fns is

   function Abs_Diff (A, B : Integer) return Integer is (abs (A - B));

end Expr_Fns;
