var Master : GameObject;



function Update()
{

	if(Master.GetComponent.<Teddy_Animations>().Dead)
	{
	GetComponent.<Collider>().isTrigger = false;
	
	}

}

function OnTriggerEnter (other : Collider)
{

	if(other.tag == "Player")
    {
    Master.gameObject.SendMessage("KillPlayer", SendMessageOptions.DontRequireReceiver);
    other.gameObject.SendMessage("Die", SendMessageOptions.DontRequireReceiver);
    
    
    }
    
    }