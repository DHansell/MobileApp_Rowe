var player : GameObject;
var tedMove : Teddy_Movement;

var ClimbObj : Transform;

function Awake()
{
	player = GameObject.FindGameObjectWithTag("Player");
	tedMove = player.GetComponent(Teddy_Movement);
}

