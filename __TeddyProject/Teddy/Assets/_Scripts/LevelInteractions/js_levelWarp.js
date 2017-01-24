#pragma strict

var levelName : String = "w_bedroom";

function Start () {
	
}

function Update () {
	
}

function OnTriggerEnter (other: Collider)
    {

        Application.LoadLevel(levelName);

    }