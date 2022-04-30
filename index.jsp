<html>
<head>
    <link rel="shortcut icon" href="class.webp" type="image/x-icon">
<title>Sign In Form</title>
<style>
 body{margin: 0;font-family:Arial, Helvetica, sans-serif  }

.frm{width: 400px;height: 550px;color: #000;}
.tbl{width:40%;padding: 10px; color: #000;position: absolute;top: 20% ;left: 4%;}
.txt{width: 70%;padding:30px ;}
.col{list-style: none}
.cols{text-align: center;list-style-type: none;border-radius:20px}
h1{text-align: center;color: #ffe165}
.btn{background-color:#fff;color: #000;height: 50px;width: 40%;border-radius:20px }
.btns{background-color:#fff;color:#1f3646;height: 70px;width: 100%;border-radius: 5%  ; border: #ffe165 solid 5px;font-size: 30px; font-weight: 500px;}
a{text-decoration: none; color: #ffe165;}
.error{color: darkred;text-align: center;}

td{text-align: center;}
.parent{display: flex;height: 100%;}
.wlc{width: 50%;background-color: #fff;align-items: center; justify-content: center;color:#fff;display: flex;text-align: center;padding : 10px}
.login{width: 50%; height: 100% ;background-color:#1f3646;background-size:cover;}
</style>

</head>
<div class="parent">
    <div class="login">
        <div class="mains">
        <form class="frm" action="loginv.jsp">
        <table class="tbl">
           
            <tr>
                <td class="cols">
                    <h1 style="font-size: 50px;">SIGN-IN</h1>
                </td>
            </tr>
            <tr>
                <td><input type="text" placeholder="EMAIL" class="txt cols" id="un"  name="email"></td>
                <tr id="errum" class="error"></tr>
            
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
              
            
            <tr>
                <td>
                    <input type="password" placeholder="PASSWORD" onkeyup="chkpwd()" class="txt cols" name="password" >
                </td>
                <tr id="errpwd" class="error"></tr>
            </tr>
              
          </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td><a href="account.jsp">Create New Account</a></td> 
                
            </tr> 
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
        
            <tr>
                <td class="cols"  >
                  
                   <a href="loginv.jsp"> <span><input type="submit" value="Submit" class="btn" id="btd" ></span></a> 
                </td>
        </tr>
        
        
             
        
        </table>
        </form>
        </div>

    </div>
    <div class="wlc">
      <div>
        <a href=""><input type="button" value="Airline Ticket Reservations" class="btns" onclick="hello()"></a>
        
    </div>
    </div>
</div>



</div>

</script>
</body>
</html>