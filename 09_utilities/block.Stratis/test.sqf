ctX=position player select 0;
ctY=(position player select 1)+10;
ctZ=0;
counter=0;
while {ctZ<10}do{
				
				while{ctX < ((position player select 0)+30)}do
						{box="Land_CargoBox_V1_F"createVehicle [0,0,0];box setpos [ctX,ctY,ctZ];ctX=ctX+1.5};
				ctX=position player select 0;
				ctZ=ctZ+1.5}