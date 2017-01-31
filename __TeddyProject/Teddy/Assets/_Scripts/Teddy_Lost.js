

var lostGame : boolean = false;
var loseUI : GameObject;

var UIObjects : GameObject[];

var losebuttonUI : GameObject[];

function Start () {
    Time.timeScale = 1;
	loseUI.SetActive (false);
	for(var i = 0; i< losebuttonUI.Length; i++)
	{
		if(losebuttonUI[i] !=null)
		{
			losebuttonUI[i].SetActive (false);
		}
	}
}

function Update () 
{

	if(lostGame)
	{
		loseUI.SetActive (true);
		Time.timeScale = 0;
		turnOffUI();
		ShowLoseUI();
		
	}
	else
	{
		loseUI.SetActive (false);
	}

}

function ShowLoseUI()
{
	for(var i = 0; i< losebuttonUI.Length; i++)
	{
		if(losebuttonUI[i] !=null)
		{
			losebuttonUI[i].SetActive (true);
		}
	}

}


function turnOffUI()
{

	for(var i = 0; i< UIObjects.Length; i++)
	{
		if(UIObjects[i] !=null)
		{
			UIObjects[i].SetActive (false);
		}
	}

}