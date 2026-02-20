<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | AceBank</title>



</head>

<body >
<div>

    <header>
        <div >
            <h1 \>Ace<span>Bank</span></h1>
        </div>

        <div class="header-actions">



            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="sign-up.jsp">Join Now</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main >
        <div >
            <h2>Welcome Back</h2>
            <p>Enter your credentials to access your account.</p>
        </div>

        <form action="Login" method="POST">
            <div >
                <label for="accNo">Account Number</label>
                <input type="text" id="accNo" name="accountNumber"
                       required
                       placeholder="Enter Account Number">
            </div>

            <div >
                <label for="pass">Password</label>
                <input type="password" id="pass" name="password"
                       required placeholder="••••••••">
            </div>

            <div >
                <div>
                    <input type="checkbox" name="rememberMe" id="remember">
                    <label for="remember">Remember Me</label>
                </div>
                <a href="ForgotPassword.jsp" >Forgot Password?</a>
            </div>

            <button type="submit" >Login to Account</button>
        </form>

        <p >
            New to Ace Bank? <a href="sign-up.jsp">Create an account</a>
        </p>
    </main>
</div>



</body>
</html>