#pragma strict
import UnityEngine.SceneManagement;

var mainUI : GameObject[];
var creditsUI : GameObject[];
var how2PlayUI : GameObject[];

var levelName : String = "w_bedroom";

function Awake()
{
	
	ReturnToMenu();

}

function Startlvl1()
{
	levelName = "w_Hub";
	SceneManager.LoadScene(levelName);
}

function ReturnToHub()
{
	levelName = "w_Hub";
	SceneManager.LoadScene(levelName);
}

function ExitGame()
{
	Debug.Log("Quit");
	Application.Quit();
	
}

function ShowCredits()
{
	for(var i = 0; i< creditsUI.Length; i++)
	{
		if(creditsUI[i] !=null)
		{
			creditsUI[i].SetActive (true);
		}
	}
	
	for(var d = 0; d< mainUI.Length; d++)
	{
		if(mainUI[d] !=null)
		{
			mainUI[d].SetActive (false);
		}
	}
	
	for(var p = 0; p< how2PlayUI.Length; p++)
	{
		if(how2PlayUI[p] !=null)
		{
			how2PlayUI[p].SetActive (false);
		}
	}
	
	

}

function ShowTutorial()
{
	for(var i = 0; i< creditsUI.Length; i++)
	{
		if(creditsUI[i] !=null)
		{
			creditsUI[i].SetActive (false);
		}
	}
	
	for(var d = 0; d< mainUI.Length; d++)
	{
		if(mainUI[d] !=null)
		{
			mainUI[d].SetActive (false);
		}
	}
	
	
	for(var p = 0; p< how2PlayUI.Length; p++)
	{
		if(how2PlayUI[p] !=null)
		{
			how2PlayUI[p].SetActive (true);
		}
	}
	

}

function ReturnToMenu()
{

	for(var i = 0; i< mainUI.Length; i++)
	{
		if(mainUI[i] !=null)
		{
			mainUI[i].SetActive (true);
		}
	}

	for(var d = 0; d< creditsUI.Length; d++)
	{
		if(creditsUI[d] !=null)
		{
			creditsUI[d].SetActive (false);
		}
	}
	
	for(var p = 0; p< how2PlayUI.Length; p++)
	{
		if(how2PlayUI[p] !=null)
		{
			how2PlayUI[p].SetActive (false);
		}
	}

}

function ReloadCurrentScene()
{
	Time.timeScale = 1;

	SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
	

}

function OpenFacebook()
{

	Application.OpenURL("https//www.facebook.com/AscendenceStudios");
	
}