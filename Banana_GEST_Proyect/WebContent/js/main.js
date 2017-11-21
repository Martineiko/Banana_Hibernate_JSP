$(document).ready( function(){ //Esto se va a cargar hasta que entra y se carga la pagina totalmente
    
    //Variables para hacer la función de abajo
    var arregloDeObjetos=[];
    var numeroPost = 1;

   //--------Validar un evento click de nuestro boton: guardar post  
  //-----$ este signo indica que vamos a trabajar con el DOM (aquí buscamos un id #add-post especificando primero que esta dentro de un button)
 $("button#add-post")// este es el selector
   // on espera una acción
     .on( //metodo on
          "click", // estos son los eventos que maneja el selector
    function(event){ //Función manejadora

                                                    //.val trae los valores que se captan del boton textoPost en html (cuando el usuario escribe)a nuestra función
                var postText= $("textarea#textoPost").val(); //devuelve un String

                postText = $.trim(postText);// con esto (trim)quitamos los espacios en blanco a la hora de escribir en el post(para que no los tome como un post)
        
        if(postText !==''){ 
        //nuestro nuevo post
            var nuevoPost ={
                numero:$('div.mi-post').length + 1,
                //numero: numeroPost,
                contenido: postText
                };

                //console.log($('div.mi-post').length + 1); // esto era para ver numero: numeroPost,

                /*arregloDeObjetos[arregloDeObjetos.length]=nuevoPost;
                numeroPost++;
                console.log(arregloDeObjetos); ////// este bloque me muestra el indice de post y sus valores (lo que escribieron)*/

            //todo esto es poner la información que ya recibimos del usuario y ponerla en la pagina principal al mismo tiempo
            //var html = $("div#post").html(); // esta linea es un ejemplo

                      //.prpend organiza la informacion del #post y la regresa al idex
          $("div#post").prepend(//poner todo lo del html de la sección de post (todo esto es el template)
            '<div id="mi-post-' + nuevoPost.numero+'"class="countainer mi-post" style=" margin: 5px; padding: 9px; border: 3px solid white; border-radius: 15px">'+
                '<div class="row">'+
                   '<div class="col-lg-4">'+
                        '<img src= "images/Whats.jpeg"/>'+
                    '</div>'  +

                    '<div class="col-lg-4">'+
                           'Texto 1<br>' +
                           'Texto 2' +
                    '</div>' +

                       '<div class="col-lg-3">' +
                          '<b>POST'+ nuevoPost.numero + '</b>'+
                       '</div>'+
                       // Aquí abajo agregamos(creamos con bootstrap) un botón para borrar algun post
                     '<div class="col-lg-1">'+
                        '<button class="btn btn-outline-danger btn-sm post-delete" data-numero="'+ nuevoPost.numero +'">&times;</button>'+
                     '</div>'+
               '</div>'+
              /////////////
                '<div class="row" >' +
                    '<div class="col-lg-12" align="center">'+
                        nuevoPost.contenido +
                    '</div>'+
                '</div>'+
            '</div>'    
            );

            $("textarea#textoPost").val(''); //esta ultima acción limpia el text area

             // esto ace referencia al boton de cerrar para que cuando clikemos en guardar tambien se cierre
             // $("button#close-post").click(); //
             //este otro es otro modo de hacer lo de cerrar la ventana
             $("div#exampleModal").modal("hide");

        } 
        else {
            alert("Escribe algo!");

            $("textarea#textoPost").val(''); //esta acción limpia despues de que te muestra la alerta para que puedas escribir en limpio de nuevo
        }

   });
   //Creamos aquí otro evento para darle una función al botón que creamos para borrar un post
   $("div#post" //En que contenedor lo vamos a buscar, en donde se in
              ).on("click", //Evento a validar
                           "button.post-delete", //Botón o elemento a validar
                           function(event){ //Función manejadora
                                 //console.log("Te vas a ir!");
                                 //$("div.mi-post").remove();
                                 //$(this).parent();
                          if(confirm("Are you shure?")){   
                             var numero = $(this).data("numero");
                             
                             var miId = "div#mi-post-" + numero;

                             //console.log(miId);
                             $(miId).remove();
                          }

   })

});