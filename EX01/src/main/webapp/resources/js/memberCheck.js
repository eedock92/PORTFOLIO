    $(document).ready(function(){
        $(".btn-secondary").click(function(){
       
            // 폼 내부의 데이터를 전송할 주소
            document.logout.action="logout.do"
            // 제출
            document.logout.submit();
        });
    });