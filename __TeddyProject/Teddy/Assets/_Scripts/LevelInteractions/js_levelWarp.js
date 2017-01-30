#pragma strict
import UnityEngine.SceneManagement;

var levelName : String = "w_bedroom";

function Start () {
	
}

function Update () {
	
}

function OnTriggerEnter (other: Collider)
    {

         SceneManager.LoadScene(levelName, LoadSceneMode.Additive);

    }