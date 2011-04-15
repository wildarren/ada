with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

with AdderPkg;
use AdderPkg;

procedure Adder1 is

	FIRST : constant := 2;
	LAST  : constant := 7;
	Sum_Of_Values : FLOAT;

	New_Array : MY_ARRAY(FIRST..LAST);

	procedure Summer(In_Dat : MY_ARRAY;
			 Sum    : out FLOAT) renames AdderPkg.Add_Em_Up;
begin
	for Index in New_Array'FIRST..New_Array'LAST loop
		New_Array(Index) := FLOAT(Index);
	end loop;

	Put_Line("Call Add_Em_Up now");
	Add_Em_Up(New_Array, Sum_Of_Values);
	Put("Backup from Add_Em_Up, total is");
	Put(Sum_Of_Values, 5, 2, 0);
	New_Line;

	Add_Em_Up(New_Array, Sum_Of_Values);
	AdderPkg.Add_Em_Up(New_Array, Sum_Of_Values);
	Summer(New_Array, Sum_Of_Values);

end Adder1;
