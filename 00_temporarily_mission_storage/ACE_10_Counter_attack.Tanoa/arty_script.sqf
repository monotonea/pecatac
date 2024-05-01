_dialog = createdialog "arty_dialog";
disableserialization;

	AMMO1_btn = false;
	AMMO2_btn = false;
	FireTest_btn = false;
	Fire_btn = false;
	_Fire_btn_Pic		= (findDisplay 1000 displayCtrl 1202);
	_FireTest_btn_Pic	= (findDisplay 1000 displayCtrl 1203);
	_Ammo1_btn_Pic		= (findDisplay 1000 displayCtrl 1600);
	_Ammo2_btn_Pic		= (findDisplay 1000 displayCtrl 1601);
	_OK_light_Pic		= (findDisplay 1000 displayCtrl 1206);
	_Ammo1_left_txt		= (findDisplay 1000 displayCtrl 1003);
	_Ammo2_left_txt		= (findDisplay 1000 displayCtrl 1004);
	_EW_txt			= (findDisplay 1000 displayCtrl 1100);
	_SN_txt			= (findDisplay 1000 displayCtrl 1101);
	_EW_txt	ctrlsettext format ["%1",missionnamespace getvariable "EW"];
	_SN_txt	ctrlsettext format ["%1",missionnamespace getvariable "SN"];

	_Arty_Wait1	= missionnamespace getvariable "Arty_Wait1";
	_Arty_Wait2	= missionnamespace getvariable "Arty_Wait2";

	_AMMO_type	= 1;
	_fire = 0;
	_firecount = 0;
while{dialog}do		//dialogが開いてる間は実行
{
	_AMMO1_count	= missionnamespace getvariable "Arty_Ammo1";
	_AMMO2_count	= missionnamespace getvariable "Arty_Ammo2";
	_Ammo1_left_txt ctrlsettext str _AMMO1_count;	//strコマンドで数字を文字にする
	_Ammo2_left_txt ctrlsettext str _AMMO2_count;
	_Reload		= missionnamespace getvariable "Arty_Reload";
	missionnamespace setvariable ["EW",ctrltext _EW_txt];
	missionnamespace setvariable ["SN",ctrltext _SN_txt];

	if(_AMMO1_count == 0)then{
		if(_AMMO2_count == 0)then{
			_Reload = 0;
		};
	};	
	if(AMMO1_btn)then{
		_AMMO_type	= 1;
		_Ammo1_btn_Pic ctrlsettext "arty_gui\botten_HE_push.pac";
		_Ammo2_btn_Pic ctrlsettext "arty_gui\botten_SMOKE_nomal.pac";
		AMMO1_btn = false;
	};
	if(AMMO2_btn)then{
		_AMMO_type	= 2;
		_Ammo1_btn_Pic ctrlsettext "arty_gui\botten_HE_nomal.pac";
		_Ammo2_btn_Pic ctrlsettext "arty_gui\botten_SMOKE_push.pac";
		AMMO2_btn = false;
	};
	if(FireTest_btn)then{
		if(_Reload == 1)then{
			if(_AMMO_type == 1)then{
				if(_AMMO1_count > 0)then{
					if(_AMMO1_count >= ARTY_test_shot_count)then{
						_firecount = ARTY_test_shot_count;
					}else{
						_firecount = _AMMO1_count;
					};
					_fire = 1;
				}else{	_fire = 0;};
			}else{
				if(_AMMO2_count > 0)then{
					if(_AMMO2_count >= ARTY_test_shot_count)then{
						_firecount = ARTY_test_shot_count;
					}else{
						_firecount = AMMO2_count;
					};
					_fire = 1;
				}else{	_fire = 0;};
			};
			if(_fire == 1)then{
				missionnamespace setvariable ["Arty_Reload",0];
				publicvariable "Arty_Reload";
				_FireTest_btn_Pic ctrlsettext "arty_gui\botten_circle_Push.pac";
				_EW = ctrltext _EW_txt;
				_SN = ctrltext _SN_txt;
				//[_firecount,_EW,_SN,_AMMO_type,_Arty_Wait1] execVM "arty_gui\fire_arty.sqf";
				missionnamespace setvariable ["Arty_Fire",[_firecount,_EW,_SN,_AMMO_type,_Arty_Wait1]];
				publicvariable "Arty_Fire";
			}else{
				player sidechat "no ammo";
			};
		};
		FireTest_btn = false;
	};
	if(Fire_btn)then{
		if(_Reload == 1)then{
			if(_AMMO_type == 1)then{
				if(_AMMO1_count > 0)then{
					if(_AMMO1_count >= ARTY_fire_shot_count)then{
						_firecount = ARTY_fire_shot_count;
					}else{
						_firecount = _AMMO1_count;
					};
					_fire = 1;
				}else{	_fire = 0;};
			}else{
				if(_AMMO2_count > 0)then{
					if(_AMMO2_count >= ARTY_fire_shot_count)then{
						_firecount = ARTY_fire_shot_count;
					}else{
						_firecount = _AMMO2_count;
					};
					_fire = 1;
				}else{	_fire = 0;};
			};
			if(_fire == 1)then{
				missionnamespace setvariable ["Arty_Reload",0];
				publicvariable "Arty_Reload";
				_Fire_btn_Pic ctrlsettext "arty_gui\botten_circle_Push.pac";
				_EW = ctrltext _EW_txt;
				_SN = ctrltext _SN_txt;
				//[_firecount,_EW,_SN,_AMMO_type,_Arty_Wait2] execVM "arty_gui\fire_arty.sqf";
				missionnamespace setvariable ["Arty_Fire",[_firecount,_EW,_SN,_AMMO_type,_Arty_Wait1]];
				publicvariable "Arty_Fire";
			}else{
				player sidechat "no ammo";
			};
		};
		Fire_btn = false;
	};

	if(_Reload == 0)then{
		_OK_light_Pic ctrlsettext "";
	};

	if(_Reload == 2)then{
		_OK_light_Pic ctrlsettext "arty_gui\OK_light.pac";
		_Fire_btn_Pic ctrlsettext "arty_gui\botten_circle_nomal.pac";
		_FireTest_btn_Pic ctrlsettext "arty_gui\botten_circle_nomal.pac";
		_Reload = 1;
		missionnamespace setvariable ["Arty_Reload",1];
	};
	sleep 0.1;

};