<html>
<head>
	<meta charset="utf-8">
<title>SIGN UP FORM</title>

<style>
 body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background-color:#1f3646;
	background-size: cover;
}
.login-box{
	width: 400px;
	position: absolute;
	top: 15%;
	left: 33%;
    background-color:#1d262da3;
    border-radius: 3%;
    border: solid 1px white;
	color: white;
	padding: 20px;

}
.login-box h1{
	float: top;
	font-size: 40px;
	border-bottom: 6px solid white;
	margin-bottom: 50px;
	padding: 13px 0;

}
.textbox{
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 3px solid white;
}
.textbox input{
	border: none;
	outline:none;
	background: none;
	color:#fff;
	font-size: 18px;
	width:90%;
	padding-left: 30px;
	margin: 0 10px;
}
.btn{
	width:50%;
	background: white;
    border: 3px solid white;
    border-radius: 3%;
	color: black;
	padding: 5px;
	font-size: 18px;
	cursor: pointer;
	margin: 12px 0;
}
::placeholder { 
    color: #fff;}
h1{color: #fff;}
a{color: white;
  text-decoration: none;
}

</style>
</head>
 <body>
     <div class="header">

     </div>
     <form name="form"method="post" action="accountv.jsp" >
 	<div class="login-box">
 		<h1>Create New Account</h1>
 		<div class="textbox">
 			<input type="text" placeholder="First Name" name="firstname" value="">
         </div>
         <div class="textbox">
            <input type="text" placeholder="Last Name" name="lastname" value="">
        </div>

        <div class="textbox">
            <input type="date" placeholder="Birth Date" name="birthdate" value="">
        </div>
        <div class="textbox">
            <input type="text" placeholder="Email" name="email" value="">
        </div>
        <div class="textbox">
 			<input type="password" placeholder="Password" name="password" value="">
         </div>
         <div class="textbox">
            <input type="tel" placeholder="Contact no" name="contact" value="">
        </div>
       <center> <a href="classes.html"><input class="btn" type="submit" name="" value="login"> </a>  </center>
      <center> <a href="index.jsp"> Already have an Account </a></center> 
         </div>
        </form>
   


</html>