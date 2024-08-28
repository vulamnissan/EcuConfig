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