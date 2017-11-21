<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--Bootstrap CDN Start-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <link rel="icon" type="image/png" href="favicon.ico"/>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link href="css/diseno.css" rel="stylesheet" type="text/css">
  <!--Bootstrap CDN Finish-->
<title>Banana Gest</title>
<script> 
function validate()
{ 
 var email = document.form.username.value; 
 var password = document.form.password.value;
 
 if (email==null || email=="")
 { 
 alert("Username cannot be blank"); 
 return false; 
 }
 else if(password==null || password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}
</script> 
</head>
<body>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img style="float:left;width: 13%; padding-right: 10px;" src="img/flor_lis.png">Banana GEST</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>    
</nav>
<!--Final del Navbar-->
<!--Inicio de pagina-->
<br>
<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-auto">
      <form id="myform" action="" method="post" class="jumbotron">
        <center><img style="width: 50%;" src="img/flor_lis.png"></center>
          <h1>Welcome</h1>
          <br>
            <div class="row justify-content-center">
              <a class="btn btn-primary" role="button" data-toggle="modal" data-target="#login"><i class="fa fa-sign-in" aria-hidden="true"></i> Log in</a>
            </div>
        <br>
            <div class="row justify-content-center">
              <a class="btn btn-primary" role="button" data-toggle="modal" data-target="#registersession"><i class="fa fa-users" aria-hidden="true" ></i> Sign in</a>
            </div>
      </form>
    </div>
  </div>
</div>
<!--Fin de pagina-->

<!--Modal para inicio de sesion-->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><img style="width: 10%;" src="img/flor_lis.png"> Banana GEST </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <!--Cuerpo de modal-->
      <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
		<!-- Do not use table to format fields. As a good practice use CSS -->
		<div class="form-group">
    <label>Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
  </div>
  <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
  </div>
			<div class="modal-footer">
         <div class="col-auto mr-auto">
           <button id="cancel-post" type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
         </div>
          <div class="col-auto">
           <button type="submit" class="btn btn-primary">Log-in</button>
          </div>
      </div>
			</form>
    </div>
  </div>
</div>  
<!--Final del Modal de inicio de sesion-->
<div class="modal fade" id="registersession" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><img style="width: 10%;" src="img/flor_lis.png"> Banana GEST </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <!--Imagen de modal-->
      <form>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Nombre</label>
      <input type="text" class="form-control" id="validationDefault01" placeholder="Nombre" value="Pancho" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Apellido</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Apellido" value="Lopez" required>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Codigo</label>
      <input type="number" class="form-control" id="validationDefault01" placeholder="Codigo" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Departamento</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Departamento" value="IT" required>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Email</label>
      <input type="email" class="form-control" id="validationDefault03" placeholder="Email" required>
      <div class="invalid-feedback">
        Please provide a valid email.
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault04">Password</label>
      <input type="password" class="form-control" id="validationDefault04" placeholder="Password" required>
    </div>
  </div>
  <div class="modal-footer">
    <div class="col-auto mr-auto">
           <button id="cancel-post" type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
         </div>
          <div class="col-auto">
            <a href="dashboard.html"><button class="btn btn-primary" type="submit">Submit form</button></a>
          </div>
  </div>
</form>
    </div>
  </div>
</div> 
<!--Final del Modal de registro de sesion-->
<!--Final del Inicio de pagina-->  


<!--Inicio de Scripts-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery/jquery.serializejson.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="https://use.fontawesome.com/3ad2555004.js"></script>
<!--Fin de Scripts--> 
</body>
</html>