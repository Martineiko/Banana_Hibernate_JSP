<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/diseno.css" rel="stylesheet" type="text/css">
    <script src="https://use.fontawesome.com/70a4723319.js"></script>
<title>Banana GEST</title>
</head>
<body>
<!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="dashboard.jsp"><img style="float:left;width: 13%; padding-right: 10px;" src="img/flor_lis.png">Banana GEST</a>
  Welcome <%=request.getAttribute("email") %>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="#"><i class="fa fa-home fa-1x" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
        </li>
       
        <li class="nav-item active">
            <a class="nav-link" href="#"><i class="fa fa-user" aria-hidden="true"></i>  Profile <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
              <a class="nav-link" href="#"><i class="fa fa-contao" aria-hidden="true"></i>  Contact</a>
        </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button style="margin-right: 10px;" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">     
    </form>
    <form class="form-inline my-2 my-lg-0">
        <a class="btn btn-outline-success my-2 my-sm-0" href="LogoutServlet">Log-out</a>
    </form>
  </div>
</nav>
<!--Final del Navbar-->

<div class="container-fluid">   
    <div class="row" >    
	<div class="col-5">
        <div class="etiqueta" style="height: 227px; width: 80%; background-color:rgb(85, 186, 253); border-radius: 18px; padding: 15px; margin:35px;">
                <div class="container" align="center">
                        <strong style="font-size:18pt; color:rgb(255, 255, 255)">Add a New Proyect</strong> 
                </div>
                    <br>
                <div class="container" align="center" style="padding:15px">
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#exampleModal">+</button>
                </div>
        </div>
	

        <div id="post"> 


        </div>

        

       
    </div>
      
</div> 





    
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">New Proyect</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
        
                  <form class="container" id="needs-validation" novalidate>
                    <div class="row">
                      <div class="col-md-6 mb-3">
                        <label for="validationCustom01">Proyect Name</label>
                        <input type="text" class="form-control" id="tituloProyecto" placeholder="Proyect Name" required>
                      </div>

                      <div class="col-md-3 mb-3">
                        <label for="validationCustom04">Start Date</label>
                        <input type="date" class="form-control" id="fechaInicio" placeholder="Start" required>
                        <div class="invalid-feedback">
                          Please provide a valid date.
                        </div>
                      </div>
                      <div class="col-md-3 mb-3">
                        <label for="validationCustom05" >Final Date</label>
                        <input type="date" class="form-control" id="fechaFinal" placeholder="Final" required>
                        <div class="invalid-feedback">
                          Please provide a valid final.
                        </div>
                      </div>                      
                    </div>
                    <div class="row">
                      <div class="col-md-11 mb-3">
                        <label for="validationCustom03">Description</label>
                        <textarea class="form-control" id="descripcion" placeholder="Description"required></textarea>                                          
                      </div>                     
                    </div>

                    <!-- <button class="btn btn-primary" type="submit">Submit form</button> -->
                  </form>

                </div>

                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close-post">Close</button>
                  <button type="button" class="btn btn-primary" id="add-post">Save</button>
                </div>
              </div>
            </div>
    </div>


<!--Inicio de Scripts-->
 <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/funciones.js"></script>
    <!--Fin de Scripts--> 
</body>
</html>