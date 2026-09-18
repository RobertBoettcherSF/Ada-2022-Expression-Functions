--  Ada 2022 topic: expression functions (spec and body forms).
pragma Ada_2022;

package Expr_Fns is

   function Max (A, B : Integer) return Integer is
     (if A >= B then A else B);

   function Min (A, B : Integer) return Integer is
     (if A <= B then A else B);

   function Clamp (X, Lo, Hi : Integer) return Integer is
     (Max (Lo, Min (X, Hi)))
     with Pre => Lo <= Hi;

   function Square (X : Integer) return Integer is (X * X);

   type Pair is record
      Left, Right : Integer := 0;
   end record;

   function Sum (P : Pair) return Integer is (P.Left + P.Right);

   --  Completion in the body (declaration only here).
   function Abs_Diff (A, B : Integer) return Integer;

   function Is_Unit_Square (X, Y : Integer) return Boolean is
     (Square (X) + Square (Y) = 1);

end Expr_Fns;
