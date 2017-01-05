var addInt : int = 1;
var Teddy : GameObject;

var stuffingValue : int = 1;

var bonusCheck : boolean;




function Awake () {
	
		Teddy = GameObject.FindGameObjectWithTag("Player");
		
	if(bonusCheck)
	{
	
	Teddy.gameObject.SendMessage("totalBonusStuffingUpdate", stuffingValue);

	}
	if(!bonusCheck)
	{
	Teddy.gameObject.SendMessage("totalStuffingUpdate", stuffingValue);
	}
	
	
}

function OnTriggerEnter(col:Collider)
  {	
  		if(col.gameObject.tag == "Player")
  		{
  		if(!bonusCheck)
  		{
	  		Teddy.gameObject.SendMessage("updateStuffingAmount", stuffingValue);
	  	}	
	
	  		
	  	if(bonusCheck)	
	  	{
	  		Teddy.gameObject.SendMessage("updateBonusStuffingAmount", stuffingValue);
	  	}
	  	
	  	Destroy(gameObject);
	  	
	  	}
	  		
  }