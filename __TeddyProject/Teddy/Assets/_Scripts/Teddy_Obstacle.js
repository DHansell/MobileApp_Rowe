var spotLight : GameObject;
var spotLight1 : GameObject;
var spotLight2 : GameObject;
var spotLight3 : GameObject;

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

var openLight : boolean;

var collidedWithLight : boolean;

var playAudioOnce : boolean = true;


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
	
	
	
    if(hasWon)
    {
        lightOn = false;
	
    }
	
    if(warnUs)
    {
        if(playAudioOnce == true)
        {
            GetComponent.<AudioSource>().PlayOneShot(warningSound);
            playAudioOnce = false;
        }
    }
	
    if(lightOn)
    {
         
        WaitToCheckPlayerSleep(1);
        spotLight.SetActive (true);
        spotLight1.SetActive (true);
        spotLight2.SetActive (true);
        spotLight3.SetActive (true);

		
        
    }
	else
    {
        WaitToCheckPlayerSleep(1);
        spotLight.SetActive (false);
        spotLight1.SetActive (false);
        spotLight2.SetActive (false);
        spotLight3.SetActive (false);
        
	    
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

    if(openLight == true)
    {

        if(animationsScript.anim.GetBool("Crouch") == false && lightOn == true && collidedWithLight)
        {
            tedLost.lostGame = true;
	
        }
    }
    else if(animationsScript.anim.GetBool("Crouch") == false && lightOn == true)
    {
        tedLost.lostGame = true;
	
    }
}


function WaitToTurnOff()
{

	yield WaitForSeconds(3);
	lightOn = false;
	playAudioOnce = true;
}

function OnCollisionEnter(collision: Collision) 
    {
        if (collision.GameObject.tag == "Light")
        {
            collidedWithLight = true;
    }
        else
        {
               collidedWithLight = false;
        }

        if (collision.GameObject.tag == "DeathZone")
        {
            tedLost.lostGame = true;
        }
    
    }

