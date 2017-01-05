var player : GameObject;
var tedMove : Teddy_Movement;

var ClimbObj : Transform;

function Awake()
{
	player = GameObject.FindGameObjectWithTag("Player");
	tedMove = player.GetComponent(Teddy_Movement);
}

function OnCollisionEnter(col:Collision)
  {	
  		if(col.gameObject.tag == "player")
  		{
	  		player.tedMove.wallTransform = ClimbObj;
	  	}
	  		
  }
