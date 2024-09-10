document.getElementById('form_reset_pass').addEventListener('submit', function(event){
    event.preventDefault(); 
    const mail = document.getElementById('email').value;
    const error_mess = document.getElementById('message');

    // tên người dùng và mật khẩu là 'admin' và '1234'
    const validmail= 'admin@gmail.com';

    // Kiểm tra 
    if (mail === validmail) {
        error_mess.style.color = "#069606";
        error_mess.innerHTML = "Reset email was sent. Please check your email !";
        return true;
    } else {
        error_mess.style.color = "red";
        error_mess.innerHTML = "Your email is incorrect. Please try again.";
        return false;
    }  
})