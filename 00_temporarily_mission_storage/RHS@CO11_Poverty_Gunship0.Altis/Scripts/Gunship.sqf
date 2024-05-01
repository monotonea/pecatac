// これ以降はサーバー側だけで実行
if(not isServer) exitWith{};
// 砲を飛行機に載せる
//	グレ1号
gun1_1 attachTo [plane, [-0.9, -0.4, -0.3]]; 
gun1_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];
//	SPG1号
gun1_2 attachTo [plane, [0, 3.5, 0.6]]; 
gun1_2 setVectorDirAndUp [[-0.45,0.6,-0.33],[0,0.33,0.6]];
//	グレ2号
gun2_1 attachTo [plane2, [-0.9, -0.4, -0.3]]; 
gun2_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];
//	SPG2号
gun2_2 attachTo [plane2, [0, 3.5, 0.6]]; 
gun2_2 setVectorDirAndUp [[-0.45,0.6,-0.33],[0,0.33,0.6]];