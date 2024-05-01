// これ以降はサーバー側だけで実行
if(not isServer) exitWith{};

spg1_1 attachTo [plane1, [-3, 3.35, -1.3]];   
spg1_1 setVectorDirAndUp [[0,0.66,-0.33],[0,0.33,0.66]];  
spg1_2 attachTo [plane1, [3, 3.35, -1.3]];   
spg1_2 setVectorDirAndUp [[0,0.66,-0.33],[0,0.33,0.66]]; 
ags1_1 attachTo [plane1, [-0.9, -0.4, -0.3]]; 
ags1_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];

spg2_1 attachTo [plane2, [-3, 3.35, -1.3]];   
spg2_1 setVectorDirAndUp [[0,0.66,-0.33],[0,0.33,0.66]];  
spg2_2 attachTo [plane2, [3, 3.35, -1.3]];   
spg2_2 setVectorDirAndUp [[0,0.66,-0.33],[0,0.33,0.66]]; 
ags2_1 attachTo [plane2, [-0.9, -0.4, -0.3]]; 
ags2_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];