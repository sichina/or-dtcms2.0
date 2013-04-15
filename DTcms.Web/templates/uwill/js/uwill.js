// JavaScript Document
function AutoScroll(obj) {

	$(obj).find("ul:first").animate({
		marginTop: "-43px"
	}, 500, function() {
		$(this).css({ marginTop: "0px" }).find("li:first").appendTo(this);
	});
}
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay(){ //自动滚动 
 clearInterval(AutoPlayObj); 
 AutoPlayObj = setInterval('ISL_GoDown();ISL_StopDown();',5000); //间隔时间 
} 
function ISL_GoUp(){ //上翻开始
if(MoveLock) return;
clearInterval(AutoPlayObj);
MoveLock = true;
MoveTimeObj = setInterval('ISL_ScrUp();',Speed);
}
function ISL_StopUp(){ //上翻停止
clearInterval(MoveTimeObj);
if(GetObj('ISL_Cont').scrollLeft % PageWidth - fill != 0){
Comp = fill - (GetObj('ISL_Cont').scrollLeft % PageWidth);
CompScr();
}else{
MoveLock = false;
}
AutoPlay();
}
function ISL_ScrUp(){ //上翻动作
if(GetObj('ISL_Cont').scrollLeft <= 0){GetObj('ISL_Cont').scrollLeft = GetObj('ISL_Cont').scrollLeft + GetObj('List1').offsetWidth}
GetObj('ISL_Cont').scrollLeft -= Space ;
}
function ISL_GoDown(){ //下翻
clearInterval(MoveTimeObj);
if(MoveLock) return;
clearInterval(AutoPlayObj);
MoveLock = true;
ISL_ScrDown();
MoveTimeObj = setInterval('ISL_ScrDown()',Speed);
}
function ISL_StopDown(){ //下翻停止
clearInterval(MoveTimeObj);
if(GetObj('ISL_Cont').scrollLeft % PageWidth - fill != 0 ){
Comp = PageWidth - GetObj('ISL_Cont').scrollLeft % PageWidth + fill;
CompScr();
}else{
MoveLock = false;
}
AutoPlay();
}
function ISL_ScrDown(){ //下翻动作
if(GetObj('ISL_Cont').scrollLeft >= GetObj('List1').scrollWidth){GetObj('ISL_Cont').scrollLeft = GetObj('ISL_Cont').scrollLeft - GetObj('List1').scrollWidth;}
GetObj('ISL_Cont').scrollLeft += Space ;
}
function CompScr(){
var num;
if(Comp == 0){MoveLock = false;return;}
if(Comp < 0){ //上翻
if(Comp < -Space){
   Comp += Space;
   num = Space;
}else{
   num = -Comp;
   Comp = 0;
}
GetObj('ISL_Cont').scrollLeft -= num;
setTimeout('CompScr()',Speed);
}else{ //下翻
if(Comp > Space){
   Comp -= Space;
   num = Space;
}else{
   num = Comp;
   Comp = 0;
}
GetObj('ISL_Cont').scrollLeft += num;
setTimeout('CompScr()',Speed);
}
}

function openerLink(link){
	if(link!="-1"){
		window.open(link,'_blank');
	}
}

//图片切换广告
function PicHover(obj1, obj2) {
    var n = 0;
    var aCount = $(obj1 + " ul li").length;
    var adTimer;
    $(obj1 + " ul li").mouseover(function () {
        var i = $(obj1 + " ul li").index(this);
        PicRoll(obj1, obj2, i);
    });

    $(obj1).hover(function () {
        clearInterval(adTimer);
    }, function () {
        adTimer = setInterval(function () {
            n++;
            if (n == aCount) { n = 0 };
            PicRoll(obj1, obj2, n);
        }, 4000);
    }).trigger("mouseleave");
}

//图片切换广告
function PicRoll(obj1, obj2, i) {
    $(obj1 + " ul li a").attr("class","normal");
    $(obj1 + " ul li a").eq(i).attr("class","selected");

    $(obj2 + " ul li").hide();
    $(obj2 + " ul li").eq(i).fadeIn("normal");
}