package AdderPkg is
        type MY_ARRAY is array(INTEGER range <>) of FLOAT;
        procedure Add_Em_Up(In_Dat : in     MY_ARRAY;
                            Sum    :    out FLOAT);
end AdderPkg;
