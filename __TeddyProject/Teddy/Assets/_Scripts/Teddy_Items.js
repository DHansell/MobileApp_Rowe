

var totalStuffings : int;
var curStuffing : int;

var totalBonusStuffing : int;
var curBonusStuffing : int;

var collectionAudio : AudioClip;

var bonusCollectAudio : AudioClip;

var bronzeStar : GameObject;
var silverStar : GameObject;
var goldStar :	GameObject;
var platinumStar : GameObject;

var curStuffingText : UI.Text;
var curBonusStuffingText : UI.Text;

var stuffingText : UI.Text;
var bonusStuffingText : UI.Text;

var finalTotalText : UI.Text;
var finalBonusText : UI.Text;

function Awake()
{
	
		
}

function Start () {

	bronzeStar.SetActive (false);
	silverStar.SetActive (false);
	goldStar.SetActive (false);
	platinumStar.SetActive (false);
	stuffingText.GetComponent(UI.Text).text = totalStuffings.ToString();
	bonusStuffingText.GetComponent(UI.Text).text = totalBonusStuffing.ToString();
	

}

function Update () 
{
    
        curStuffingText.GetComponent(UI.Text).text = curStuffing.ToString();
        curBonusStuffingText.GetComponent(UI.Text).text = curBonusStuffing.ToString();
	
        finalTotalText.GetComponent(UI.Text).text = curStuffing.ToString() + " Total Out Of " + totalStuffings.ToString();
        finalBonusText.GetComponent(UI.Text).text = curBonusStuffing.ToString() + " Bonus Out Of " + totalBonusStuffing.ToString();
	
        if(curStuffing >= totalStuffings / 3)
        {
            bronzeStar.SetActive (true);
            goldStar.SetActive (false);
            silverStar.SetActive (false);
            platinumStar.SetActive (false);
        }
	
        if(curStuffing >= totalStuffings / 2)
        {
            silverStar.SetActive (true);
            bronzeStar.SetActive (false);
            goldStar.SetActive (false);
            platinumStar.SetActive (false);
        }
	
        if(curStuffing >= totalStuffings - 5)
        {
            goldStar.SetActive (true);
            silverStar.SetActive (false);
            bronzeStar.SetActive (false);
            platinumStar.SetActive (false);
        }
	
        if(curStuffing + curBonusStuffing == totalStuffings + totalBonusStuffing)
        {
            bronzeStar.SetActive (false);
            silverStar.SetActive (false);
            goldStar.SetActive (false);
            platinumStar.SetActive (true);
        }
    

}

function totalStuffingUpdate(stuffingAddition : int)
{
	totalStuffings += stuffingAddition;

}

function totalBonusStuffingUpdate(stuffingBonusAddition : int)
{
	totalBonusStuffing += stuffingBonusAddition;

}

function updateStuffingAmount(stuffingUpdateAdd : int)
{
	curStuffing += stuffingUpdateAdd;
	
		GetComponent.<AudioSource>().PlayOneShot(collectionAudio);
	
	
}


function updateBonusStuffingAmount(stuffingBonusUpdateAdd : int)
{
	curBonusStuffing += stuffingBonusUpdateAdd;
	{
		GetComponent.<AudioSource>().PlayOneShot(bonusCollectAudio);
	}
	
}



