# Branch for BE
5/9.
+ Thay đổi cài đặt DATABASES, LOGIN_URL
+ Thay đổi url cho phù hợp.
+ Chức năng login BE đã tích hợp với FE, có tạo thêm page home đơn giản để redirect
+ Phần kết quả khi thông tin đăng nhập sai tạm thời để là là một httpresponse đơn giản sẽ thay đổi sau đề phụ hợp với đầu vào của js
+ phần forget_password chưa tích hợp, đang đợi FE
  Các yêu cầu khác:
    +Yêu cầu bảo mật: XSS, Sql injection, CSRF (Framework Django có sẵn)
    +check đầu thông tin các trường thông tin đầu vào: username, password, email : viết thêm pattern vào thẻ input trong html sẽ gửi     cho mận.
