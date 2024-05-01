// collect reactions to BIS_convMenu _this _from _topic _sentenceid
BIS_convMenu = [];

//debug
if (!isNil "BIS_DEBUG_DIALOG") then
{
	if (_sentenceId!="") then
	{
  debugLog format["DIAL SQF _sentenceId %1 _this %2 _from %3 _topic %4",_sentenceId,_this,_from,_topic];
  };
};

switch (_sentenceId) do
{



case "beginning_P_0":
	{//Alfa ready to engage. Moving toward the objective, over
	
_this kbtell [BIS_grpmain_leader, "beginning","beginning_Q_0"]; //Bravo ready to move in, approaching village, over.
	};

};

// return the result
BIS_convMenu

