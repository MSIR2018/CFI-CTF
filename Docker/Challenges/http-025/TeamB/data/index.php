<html>
<head>
<title>

</title>
</head>
<body>
<p>Bienvenue</p>
<h1>
<center>CTF Login</center>
</h1>
<br /><br /><br /><br /><br />

<center> <form name="login">
Identification : <input type="text" name="userid"/>
Mot de passe : <input type="password" name="pswrd"/>
<input type="button" onclick="check(this.form)" value="Connection"/>
<input type="reset" value="Annuler"/>
</form> </center>

<script language="javascript">
function check(form)
{
 if(form.userid.value == "johnny.doe.ctf@gmail.com" && form.pswrd.value == "john1sth3b3s7")
  {
    window.open('bravo.html')
  }
 else
  {
   alert("Error Password or Username")
  }
}
</script>

</body>
</html>