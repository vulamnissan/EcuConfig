function togglePassword() {
    var passwordField = document.getElementById('password');
    var eye = document.getElementById('eye');
    var notEye = document.getElementById('not_eye');

    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        eye.style.display = 'none';
        notEye.style.display = 'block';
    } 
    else {
        passwordField.type = 'password';
        eye.style.display = 'block';
        notEye.style.display = 'none';
    }
}


document.getElementById('form_login').addEventListener('submit', function(event){
    event.preventDefault(); 
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const error_mess = document.getElementById('pass_word_error');

    // tên người dùng và mật khẩu là 'admin' và '1234'

    
    const validUsername = 'admin';
    const validPassword = '1234';
    // Kiểm tra 
    if (username === validUsername && password === validPassword) {
        error_mess.innerHTML = "";
        return true;
    } else {
        error_mess.innerHTML = "Your authentication information is incorrect. <br/> Please try again.";
        return false;
    }

})
