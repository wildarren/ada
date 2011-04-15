package body AdderPkg is
	procedure Add_Em_Up(In_Dat : in     MY_ARRAY;
	                    Sum    :    out FLOAT) is
	Total : FLOAT;
	begin
		Total := 0.0;
		for Index in In_Dat'FIRST..In_Dat'LAST loop
			Total := Total + In_Dat(Index);
		end loop;
		Sum := Total;
	end Add_Em_Up;
end AdderPkg;
