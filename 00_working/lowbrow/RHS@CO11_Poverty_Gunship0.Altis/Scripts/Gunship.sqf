// ����ȍ~�̓T�[�o�[�������Ŏ��s
if(not isServer) exitWith{};
// �C���s�@�ɍڂ���
//	�O��1��
gun1_1 attachTo [plane, [-0.9, -0.4, -0.3]]; 
gun1_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];
//	SPG1��
gun1_2 attachTo [plane, [0, 3.5, 0.6]]; 
gun1_2 setVectorDirAndUp [[-0.45,0.6,-0.33],[0,0.33,0.6]];
//	�O��2��
gun2_1 attachTo [plane2, [-0.9, -0.4, -0.3]]; 
gun2_1 setVectorDirAndUp [[-1,0,-0.6],[0,0,1]];
//	SPG2��
gun2_2 attachTo [plane2, [0, 3.5, 0.6]]; 
gun2_2 setVectorDirAndUp [[-0.45,0.6,-0.33],[0,0.33,0.6]];