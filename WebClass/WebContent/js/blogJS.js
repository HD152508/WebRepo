    $(document).ready(function () {
        $('#JoinInForm').submit(function (event) {
            event.preventDefault();
            var name = $('#name').val();
            console.log(name);

            $.post("http://httpbin.org/post",
                    { "name" : name },
                    function (data) {
                        var myModal = $('#JoinInResultModal');
                        myModal.modal();
                        myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.');
                    });
        });
    });
    
    $(document).ready(function () {
        $('#SigninForm').submit(function (event) {
        	// submit 자동으로 되는 기능 막기
            event.preventDefault();
            var id = $('#id').val();
            var pw = $('#pw').val();
            console.log("id : " + id + "\npw : " + pwd);

            $.post("/bloglogin", { "id" : id, "pw" : pw },
            		function(data) {
            			console.log(data);
            			if(data.msg == 'success') {
            				location.href = "jsp/login.jsp"
            			} else if (data.msg == 'error') {
            				var myModal = $('#myModal');
            				myModal.find('.modal-title').text('Sign Up Error');
            				myModal.find('.modal-body').text('회원 가입 시 오류가 발생하였습니다.');
            				myModal.modal();
            			}
            }
            )
        });
    });

