pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Expr_Fns; use Expr_Fns;

procedure Tests is
   P : constant Pair := (Left => 3, Right => 4);
begin
   Assert (Max (2, 5) = 5);
   Assert (Min (2, 5) = 2);
   Put_Line ("PASS Max / Min expression functions");

   Assert (Clamp (5, 0, 10) = 5);
   Assert (Clamp (-1, 0, 10) = 0);
   Assert (Clamp (99, 0, 10) = 10);
   Put_Line ("PASS Clamp composed from Max/Min");

   Assert (Square (7) = 49);
   Assert (Sum (P) = 7);
   Assert (Abs_Diff (10, 3) = 7);
   Assert (Is_Unit_Square (0, 1));
   Assert (not Is_Unit_Square (2, 2));
   Put_Line ("PASS Square / Sum / Abs_Diff / predicate-style");

   Put_Line ("All Expression Functions topic tests passed.");
end Tests;
