var spotLight : GameObject;

var flickerRatioHi : float = 6.0; //this has to be higher than the low ration, it is basically the time in between
var flickerRatioLo : float = 1.2; // lights off and on

var nextShutOffTime : float;
var nextTurnOnTime : float;

var hasWon : boolean = false;

var period : float;

var lightOn : boolean;

var teddy : GameObject;

var warnTime : float;

var warnUs : boolean;

var warningSound : AudioClip;

var animationsScript : Teddy_Animations;

var tedLost : Teddy_Lost;


function Awake()
{
	spotLight.SetActive (false);
	lightOn = false;
	Teddy = GameObject.FindGameObjectWithTag("Player");
	animationsScript = GetComponent(Teddy_Animations);
	tedLost = GetComponent(Teddy_Lost);
}

function Start () 
{
	
	spotLight.SetActive (false);
	
}

function Update () 
{
	
	if(lightOn)
	{
		
	}
	
	
	if(hasWon)
	{
		lightOn = false;
	
	}
	
	if(warnUs)
	{
		GetComponent.<AudioSource>().PlayOneShot(warningSound);
	}
	
	if(lightOn)
	{
		spotLight.SetActive (true);
		WaitToCheckPlayerSleep(1);
	}
	else
	{
		spotLight.SetActive (false);
	
	}
	
	if (Time.time >= nextTurnOnTime - 2 && lightOn == false && warnUs == false) {
		
		warnUs = true;

	}
	else
	{
		warnUs = false;
	}
	

	if (Time.time > nextTurnOnTime) {
		warnUs = false;
		lightOn = true;
		period = Random.Range(flickerRatioLo, flickerRatioHi);
       WaitToTurnOff();
       
       	 nextTurnOnTime += period + 6;
       

       
	}
	
	
}

function WaitToCheckPlayerSleep(waitTime : int)
{
	yield WaitForSeconds(waitTime);
	if(animationsScript.anim.GetBool("Frozen") == false && lightOn == true)
	{
		tedLost.lostGame = true;
	
	}

}


function WaitToTurnOff()
{

	yield WaitForSeconds(3);
	lightOn = false;
}