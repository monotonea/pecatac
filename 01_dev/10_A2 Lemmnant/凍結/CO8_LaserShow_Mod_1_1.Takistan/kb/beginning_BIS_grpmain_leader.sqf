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

case "beginning_Q_0":
	{//Bravo ready to move in, approaching village, over.
	
bis_command kbtell [BIS_grpmain_leader, "beginning","beginning_C_0"]; //All units proceed to objective. Leave no one alive. Command out.
	};



};

// return the result
BIS_convMenu

