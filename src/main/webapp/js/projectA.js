// 약관 동의 체크
$(document).ready(function() {
    $("#cb1").click(function() {
        if($("#cb1").is(":checked")) $("input[name=agree2]").prop("checked", true);
        else $("input[name=agree2]").prop("checked", false);
    });
    
    $("input[name=agree2]").click(function() {
        var total = $("input[name=agree2]").length;
        var checked = $("input[name=agree2]:checked").length;
        
        if(total != checked) $("#cb1").prop("checked", false);
        else $("#cb1").prop("checked", true); 
    });
});

// 약관 동의 체크 유효성 확인
$(document).ready(function(){
    
    $(".box2").click(function(){    
        if($("#cb2").is(":checked") == false){
            alert("이용 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return false;
        }else if($("#cb3").is(":checked") == false){
            alert("개인정보 수집 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return false;
        }else{
            $("#signup_btn").submit();
        }
    });    
});

function checks() {
    var getId= RegExp(/^[a-zA-Z0-9]{4,16}$/);
    var getPw= RegExp(/^(?=.[a-zA-Z])(?=.[^a-zA-Z0-9]|.*[0-9]).{8,16}$/);
    var getName= RegExp(/^[가-힣]+$/);
    var getMail = RegExp(/^[A-Za-z0-9_.-]+@[A-Za-z0-9-]+.[A-Za-z0-9-]+/);


// 아이디 공백 확인
if($("#id").val() == "") {
    alert("아이디를 입력해주세요.");
    $("#id").focus();
    return false;
  }
       
       
// 아이디 유효성검사
if(!getId.test($("#id").val())) {
    alert("아이디는 4~16자, 영문 대소문자, 숫자만 가능합니다.");
    $("#id").focus();
    return false;
  }
  

// 비밀번호 공백 확인
if($("#pw").val() == "") {
    alert("비밀번호를 입력해주세요.");
    $("#pw").focus();
    return false;
  }
       

// 아이디 비밀번호 같음 확인
if($("#id").val() == $("#pw1").val()) {
    alert("아이디와 비밀번호가 같습니다");
    $("#id").val("");
    $("#pw1").focus();
    return false;
  }
  
  
// 비밀번호 유효성검사
if(!getPw.test($("#pw1").val())) {
    alert("비밀번호는 8~16자 영문 대소문자, 숫자, 특수문자 혼합해서 사용해야 됩니다.");
    $("#pw1").val("");
    $("#pw1").focus();
    return false;
  }
       
// 비밀번호 확인란 공백 확인
if($("#pw2").val() == ""){
    alert("비밀번호를 다시 입력해주세요.");
    $("#pw2").focus();
    return false;
  }
       
       
// 비밀번호 확인
if($("#pw1").val() != $("#pw2").val()){
      alert("비밀번호가 다릅니다. 다시 입력해주세요.");
      $("#pw1").val("");
      $("#pw2").val("");
      $("#pw1").focus();
      return false;
  }
      
      
// 이름 공백 검사
if($("#name").val() == ""){
    alert("이름을 입력해주세요.");
    $("#name").focus();
    return false;
  }


// 이름 유효성 검사
if(!getName.test($("#name").val())){
    alert("이름은 한글만 입력 가능합니다.")
    $("#name").focus();
    return false;
  }
  
  
// 이메일 공백 확인
if($("#email").val() == ""){
    alert("이메일을 입력해주세요.");
    $("#email").focus();
    return false;
  }
       
       
// 이메일 유효성 검사
if(!getMail.test($("#email").val())){
    alert("이메일 형식에 맞게 입력해주세요.")
    $("#email").focus();
    return false;
  }
}