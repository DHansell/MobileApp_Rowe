private var motor : CharacterMotor;

var curMoveSpeed : float = 0;
var jumpSpeed : float = 4;
var maxJumpHeight : float;
var curJumpHeight : float;

var animationsScript : Teddy_Animations;
var platformMotor : PlatformInputController;

var isTouchingGround : boolean;
var isAirbourne : boolean;

var isDead : boolean;

var lives : int = 3;


var currSpeed : float;
var maxSpeed : float = 7;

var climbObst : boolean;

var wallTransform : Transform;

var theForwardDirection : Vector3;

private var moveDirection : Vector3 = Vector3.zero;

var distToGround : float;

var CanMove : boolean;

private var LeftButton : GUITexture;
private var RightButton : GUITexture;
private var UpButton : GUITexture;
private var DownButton : GUITexture;
private var JumpButton : GUITexture;
private var SleepButton : GUITexture;


function Awake () {
	motor = GetComponent(CharacterMotor);
	platformMotor = GetComponent(PlatformInputController);
	animationsScript = GetComponent(Teddy_Animations);


}

function Start () {
}


function Update () {

	if(isDead)
	{
		currSpeed = 0;
	
	}
	
	if(currSpeed >= maxSpeed)
	{
		currSpeed = maxSpeed;
	}
	
	if(currSpeed <= 0)
	{
		currSpeed = 0;
	}
	
	if(animationsScript.frozen)
	{
		currSpeed = 0;
	
	}
	
	
	
	var controller : CharacterController = GetComponent(CharacterController);
	if(controller.isGrounded){
	    if(CanMove)
	    {
	        moveDirection = Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
	        moveDirection = transform.TransformDirection(moveDirection);
	        moveDirection *= curMoveSpeed;
	    }
	
	
	
	
		
		
	
		if(Input.GetButtonDown("Crouch"))
		{
   
		    CanMove = false;
		
		
		}
   
		if(Input.GetButtonUp("Crouch"))
		{
		    CanMove = true;   
		   

  
		}
	
														}
}




  	