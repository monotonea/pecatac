#define kndr_format(val)	((round (val * 100)) / 100)

clipboardText = "";

//---- COLOR CORRECTION ----------------------------------

sliderPageSpeed = 0.1;
sliderLineSpeed = 0.1;

// color correction:
brightness = 1.0;
contrast = 1.0;
offset = 0.0;

R1 = 0.0;
G1 = 0.0;
B1 = 0.0;
A1 = 0.0;

R2 = 1.8;
G2 = 1.8;
B2 = 0.3;
A2 = 0.7;

R3 = 0.20;
G3 = 0.59;
B3 = 0.11;
A3 = 0.0;

setColorCorrection = 
{
	"colorCorrections" ppEffectAdjust [brightness, contrast, offset, [R1, G1, B1, A1], [R2, G2, B2, A2], [R3, G3, B3, A3]];
	"colorCorrections" ppEffectCommit 0;
	clipboardText = format["""colorCorrections"" ppEffectAdjust[ %1, %2, %3, [%4, %5, %6, %7],[%8, %9, %10, %11],[%12, %13, %14, %15]]", 
			kndr_format(brightness), kndr_format(contrast), kndr_format(offset), 
			kndr_format(R1), kndr_format(G1), kndr_format(B1), kndr_format(A1), 
			kndr_format(R2), kndr_format(G2), kndr_format(B2), kndr_format(A2), 
			kndr_format(R3), kndr_format(G3), kndr_format(B3), kndr_format(A3)];
	hintSilent clipboardText;
};

setSliders = 
{
	private ["_i", "_varVal"];
	_varVal = [brightness, contrast, offset,
				R1, G1, B1, A1,
				R2, G2, B2, A2,
				R3, G3, B3, A3];
	for "_i" from 0 to 14 do
	{
		if (_i < 3) then
		{
			sliderSetPosition [8106 + _i, 10 * (_varVal select _i)];
		}
		else
		{
			sliderSetPosition [8106 + _i, (_varVal select _i) + 5];
		};
		sliderSetSpeed [8106 + _i, sliderLineSpeed, sliderPageSpeed];
	};
};

//---- RADIAL BLUR ----------------------------------

rb1 = 0;
rb2 = 0;
rb3 = 0;
rb4 = 0;

setRadialBlur =
{
	"RadialBlur" ppEffectAdjust [rb1, rb2, rb3, rb4];
	"RadialBlur" ppEffectCommit 0;
	clipboardText = format["""RadialBlur"" ppEffectAdjust[%1, %2, %3, %4]", 
			kndr_format(rb1), kndr_format(rb2), kndr_format(rb3), kndr_format(rb4)];
	hintSilent clipboardText;
};

//------- DynamicBlur ----------------------------------

db = 0;

setDynamicBlur =
{
	"DynamicBlur" ppEffectAdjust [db];
	"DynamicBlur" ppEffectCommit 0;
	clipboardText = format["""DynamicBlur"" ppEffectAdjust[%1]", kndr_format(db)];
};

//---- Film grain ----------------------------------

fg1 = 0;
fg2 = 0;
fg3 = 0;
fg4 = 0;
fg5 = 0;
fg6 = true;

setFilmGrain =
{
	"FilmGrain" ppEffectAdjust [fg1, fg2, fg3, fg4, fg5, fg6];
	"FilmGrain" ppEffectCommit 0;
	clipboardText = format["""FilmGrain"" ppEffectAdjust[%1, %2, %3, %4, %5, %6]", 
			kndr_format(fg1), kndr_format(fg2), kndr_format(fg3), kndr_format(fg4), kndr_format(fg5), fg6];
	hintSilent clipboardText;
};

//---- color inversion ----------------------------------

ci1 = 0;
ci2 = 0;
ci3 = 0;

setColorInversion =
{
	"ColorInversion" ppEffectAdjust [ci1, ci2, ci3];
	"ColorInversion" ppEffectCommit 0;
	clipboardText = format["""ColorInversion"" ppEffectAdjust[%1, %2, %3]", kndr_format(ci1), kndr_format(ci2), kndr_format(ci3)];
	hintSilent clipboardText;
};

//---- ChromAberration ----------------------------------

cha1 = 0;
cha2 = 0;
cha3 = true;

setChromAberration = 
{
	"ChromAberration" ppEffectAdjust [cha1, cha2, cha3];
	"ChromAberration" ppEffectCommit 0;
	clipboardText = format["""ChromAberration"" ppEffectAdjust[%1, %2, %3]", kndr_format(cha1), kndr_format(cha2), cha3];
	hintSilent clipboardText;
};


//---- WetDistortion ----------------------------------

wd1 = 0;
wd2 = 0;
wd3 = 0;
wd4 = 0;
wd5 = 0;
wd6 = 0;
wd7 = 0;
wd8 = 0;
wd9 = 0;
wd10 = 0;
wd11 = 0;
wd12 = 0;
wd13 = 0;
wd14 = 0;
wd15 = 0;

setWetDistortion =
{
	"WetDistortion" ppEffectAdjust [wd1,wd2,wd3,wd4,wd5,wd6,wd7,wd8,wd9,wd10,wd11,wd12,wd13,wd14,wd15 ];
	"WetDistortion" ppEffectCommit 0;
	clipboardText = format["""WetDistortion"" ppEffectAdjust[%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15]", 
		kndr_format(wd1), kndr_format(wd2), kndr_format(wd3), kndr_format(wd4),kndr_format(wd5), kndr_format(wd6),
		kndr_format(wd7), kndr_format(wd8), kndr_format(wd9), kndr_format(wd10),kndr_format(wd11), kndr_format(wd12),
		kndr_format(wd13),kndr_format(wd14), kndr_format(wd15)];
	hintSilent clipboardText;
};
