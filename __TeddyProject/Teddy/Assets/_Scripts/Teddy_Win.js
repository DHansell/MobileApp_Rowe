
var winGame : boolean = false;
var winUI : GameObject;

var UIObjects : GameObject[];

var winbuttonUI : GameObject[];

var bronzeStar : GameObject;
var silverStar : GameObject;
var goldStar : GameObject;
var platinumStar : GameObject;


var itemsScript : Teddy_Items;

function Awake()
{
	itemsScript = GetComponent(Teddy_Items);

}

function Start () {
	
	winUI.SetActive (false);
	for(var i = 0; i< winbuttonUI.Length; i++)
	{
		if(winbuttonUI[i] !=null)
		{
			winbuttonUI[i].SetActive (false);
		}
	}
	bronzeStar.SetActive (false);
	silverStar.SetActive (false);
	goldStar.SetActive (false);
	platinumStar.SetActive (false);
}

function Update () 
{

	if(winGame)
	{
		winUI.SetActive (true);
		Time.timeScale = 0;
		turnOffUI();
		ShowwinUI();
		
		
		if(itemsScript.curStuffing >= itemsScript.totalStuffings / 3)
	{
		bronzeStar.SetActive (true);
		goldStar.SetActive (false);
		silverStar.SetActive (false);
		platinumStar.SetActive (false);
	}
	
	if(itemsScript.curStuffing >= itemsScript.totalStuffings / 2)
	{
		silverStar.SetActive (true);
		bronzeStar.SetActive (false);
		goldStar.SetActive (false);
		platinumStar.SetActive (false);
	}
	
	if(itemsScript.curStuffing >= itemsScript.totalStuffings - 5)
	{
		goldStar.SetActive (true);
		silverStar.SetActive (false);
		bronzeStar.SetActive (false);
		platinumStar.SetActive (false);
	}
	
	if(itemsScript.curStuffing + itemsScript.curBonusStuffing == itemsScript.totalStuffings + itemsScript.totalBonusStuffing)
	{
		bronzeStar.SetActive (false);
		silverStar.SetActive (false);
		goldStar.SetActive (false);
		platinumStar.SetActive (true);
	}
		
		
		
	}
	else
	{
		winUI.SetActive (false);
	}

}

function ShowwinUI()
{
	for(var i = 0; i< winbuttonUI.Length; i++)
	{
		if(winbuttonUI[i] !=null)
		{
			winbuttonUI[i].SetActive (true);
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