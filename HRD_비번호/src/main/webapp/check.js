function check(){
	if(document.frm.playerno.value.length == 0){
		alert("선수 id가 입력되지 않았습니다.");
		frm.playerno.focus();
		return false;	
	}
	if(document.frm.playername.value.length == 0){
		alert("선수 이름이 입력되지 않았습니다.");
		frm.playername.focus();
		return false;	
	}
	if(document.frm.position.value.length == 0){
		alert("포지션이 입력되지 않았습니다.");
		frm.position.focus();
		return false;	
	}
	if(document.frm.date.value.length == 0){
		alert("선수 등록일이 입력되지 않았습니다.");
		frm.date.focus();
		return false;	
	}
	if(document.frm.team.value.length == 0){
		alert("소속팀이 입력되지 않았습니다.");
		frm.team.focus();
		return false;	
	}
	success();
	return true;
}