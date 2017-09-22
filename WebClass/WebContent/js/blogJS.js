    $(document).ready(function () {
        $('#SigninForm').submit(function (event) {
            event.preventDefault();
            var id = $('#id').val();
            var pw = $('#pw').val();

            $.post("http://httpbin.org/post",
                    { "id" : id , "pww" : pw },
                    function (data) {
                        var myModal = $('#loginResultModal');
                        myModal.modal();
                        myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다.');
                    });
        });
    });

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
