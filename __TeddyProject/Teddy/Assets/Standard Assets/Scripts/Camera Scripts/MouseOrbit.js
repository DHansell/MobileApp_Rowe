var target : Transform;
var distance = 10.0;
var distanceOffset = 0.0;

var distanceUp = 2.0;

var xSpeed = 250.0;
var ySpeed = 120.0;

var yMinLimit = -20;
var yMaxLimit = 80;

var zoomSpeed = 2.0;

var originDist : float;

private var x = 0.0;
private var y = 0.0;

@script AddComponentMenu("Camera-Control/Mouse Orbit")

function Start () {
    var angles = transform.eulerAngles;
    x = angles.y;
    y = angles.x;

	// Make the rigid body not change rotation
   	if (GetComponent.<Rigidbody>())
		GetComponent.<Rigidbody>().freezeRotation = true;
}

function Update()
{
	
	CompensateForWalls();

}

function LateUpdate () {

	 distance -= Input.GetAxis("Mouse ScrollWheel")*zoomSpeed;
	 var characterOffset = target.position + Vector3(0f, distanceUp, 0f); 
	 
 if(distance <= 1)
 {
     distance = 1; // max zoom 
 }
 if(distance >= 10)
 {
     distance = 10; // min zoom
  }  
    if (target) {
        x += Input.GetAxis("Mouse X") * xSpeed * 0.02;
        y -= Input.GetAxis("Mouse Y") * ySpeed * 0.02;
 		
 		y = ClampAngle(y, yMinLimit, yMaxLimit);
 		       
        var rotation = Quaternion.Euler(y, x, 0);
        var position = rotation * Vector3(0.0, 0.0, -distance) + target.position;
        
        transform.rotation = rotation;
        transform.position = position;
    }
    
    
     
}

function CompensateForWalls()
{
	var relativePos = transform.position - (target.position);
    var hit : RaycastHit;
    if (Physics.Raycast (target.position, relativePos, hit, distance+0.5)) {
        Debug.DrawLine(target.position,hit.point, Color.red, 10f);
        distanceOffset = distance - hit.distance + 0.8; 
        distanceOffset = Mathf.Clamp(distanceOffset,0,distance);
        originDist = distance;
        distance -= distanceOffset * Time.deltaTime * 5;
    }else{
        distanceOffset = 0;
    }
    
    	

}

static function ClampAngle (angle : float, min : float, max : float) {
	if (angle < -360)
		angle += 360;
	if (angle > 360)
		angle -= 360;
	return Mathf.Clamp (angle, min, max);
}