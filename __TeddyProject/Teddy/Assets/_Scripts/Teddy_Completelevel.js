var ted_Win : Teddy_Win;

function Awake () 
{
	
	ted_Win = GetComponent(Teddy_Win);
	
}



function OnTriggerEnter (other : Collider)
{

	if(other.tag == "WinFlag")
    {
    	ted_Win.winGame = true;
    }
    
    
}