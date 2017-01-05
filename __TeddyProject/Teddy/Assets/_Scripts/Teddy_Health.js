var hip : boolean;
var head : boolean;
var body : boolean;
var tail : boolean;
var neck : boolean;

var masterObj : GameObject;

var curDamage : float;

var multiplier : float;

function Awake()
{
	if(hip)
	{
		multiplier = 1.5;
	}
	
	if(head)
	{
		multiplier = 3.5;
	}
	
	if(body)
	{
		multiplier = 1;
	}
	
	if(tail)
	{
		multiplier = 0.5;
	}
	
	if(neck)
	{
		multiplier = 3;
	}

}

function SendDamageToMaster (damageToSend : float)
{
	damageToSend *= multiplier;
	Debug.Log("Sent Damage");
	masterObj.gameObject.SendMessage("UpdateHealth",damageToSend, SendMessageOptions.DontRequireReceiver);

}