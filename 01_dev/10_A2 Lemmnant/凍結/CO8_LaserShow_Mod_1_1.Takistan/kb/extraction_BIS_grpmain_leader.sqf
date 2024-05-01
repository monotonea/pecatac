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

case "extraction_P_0":
	{//Alpha team to Revolver, we have eliminated all resistance. Awaiting further orders, over.
	
_this kbtell [_from, "extraction","extraction_C_0"]; //You are to wait in the village, I'm sending a chopper your way to extract you. How copy?
	};

case "extraction_C_0":
	{//You are to wait in the village, I'm sending a chopper your way to extract you. How copy?
	
_this kbtell [_from, "extraction","extraction_P_1"]; //Copy that, waiting for extraction. Alpha out.
	};


};

// return the result
BIS_convMenu

