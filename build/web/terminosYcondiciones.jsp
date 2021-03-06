<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <script src="https://kit.fontawesome.com/cccf91c3da.js" crossorigin="anonymous"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <link rel="stylesheet" href="css/estilos.css"/>

        <title>DIRECTV'S TaskManager - Terms and conditions</title>
    </head>
    <body>
        <%if (session.getAttribute("user") != null && session.getAttribute("permiso").equals(2)) { %>
        <nav class="header navbar navbar-expand-sm navbar-light bg-light">
            <div class="container ">
                <a class="navbar-brand" href="#"><img src="images/dtvTaskMan.png" alt="DIRECTV'S TaskManager" width="200"></a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link mx-2 headlinks">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="servRequest" class="nav-link mx-2 headlinks">Requests</a>
                    </li>
                    <li class="nav-item">
                        <a href="servFix" class="nav-link mx-2 headlinks">Fix Verification</a>
                    </li>
                    <li class="nav-item">
                        <a href="servAdhoc" class="nav-link mx-2 headlinks">ADHOC</a>
                    </li>
                </ul>
                <form class="form-inline mt-3">
                    <input class="form-control-sm" type="text" placeholder="Buscar">
                    <button class="btn btn-outline-info btn-sm">Buscar</button>
                </form>
                
                <div class="float-lg-right mt-1 circulo dropdown">
                    <h4 class="align-middle mx-2 my-2">
                        <a href="#" class="sesion" data-toggle="dropdown">${user}</a>
                        <div class="dropdown-menu">
                            <a href="servMyAccount" class="dropdown-item">My account</a>
                            <a href="servLogin?control=a" class="dropdown-item">Log out</a>
                        </div>
                    </h4>
                </div>
            </div>
        </nav>
        
        <div class="container cuerpo">
            <div class="row">
                <div class="bg-secondary text-white container-fluid"><h2 class="text-center p-3">T??rminos y condiciones</h2></div>
                <div class="col-lg-10 card mx-auto mt-5 mb-5">
                    <h3>??Bienvenido!</h3>
                    <p>Bienvenido a "DirecTv's TaskManager" proporcionado por Loomie Soft. Nos complace ofrecerle acceso al Servicio (como se define m??s
                    abajo), sujeto a estos t??rminos y condiciones (los "T??rminos de Servicio") y a la Pol??tica
                    de Privacidad correspondiente de XXXX. Al acceder y utilizar el Servicio, usted expresa
                    su consentimiento, acuerdo y entendimiento de los T??rminos de Servicio y la Pol??tica de
                    Privacidad. Si no est?? de acuerdo con los T??rminos de Servicio o la Pol??tica de
                    Privacidad, no utilice el Servicio.
                    Si utiliza el servicio est?? aceptando las modalidades operativas en vigencia descriptas
                    m??s adelante, las declara conocer y aceptar, las que se habiliten en el futuro y en los
                    t??rminos y condiciones que a continuaci??n se detallan: 
                    </p>
                    <br>
                    <h4>Operaciones habilitadas.</h4>
                    <p>Las operaciones habilitadas son aquellas que estar??n disponibles para los clientes,
                    quienes deber??n cumplir los requisitos que se encuentren vigentes en su momento para
                    operar el Servicio. Las mismas podr??n ser ampliadas o restringidas por el proveedor,
                    comunic??ndolo previamente con una antelaci??n no menor a 60 d??as, y comprenden
                    entre otras, sin que pueda entenderse taxativamente las que se indican a continuaci??n:
                    ???................................. 
                    </p>
                    <h4>Transacciones : ???............................................ </h4>
                    <p> En ning??n caso debe entenderse que la solicitud de un producto o servicio implica
                        obligaci??n alguna para el Acceso y uso del Servicio.
                        Para operar el Servicio se requerir?? siempre que se trate de clientes de .........., quienes
                        podr??n acceder mediante cualquier dispositivo con conexi??n a la Red Internet. El cliente
                        deber?? proporcionar el n??mero de documento de identidad y la clave personal, que ser??
                        provista por la aplicaci??n como requisito previo a la primera operaci??n, en la forma que
                        le sea requerida. La clave personal y todo o cualquier otro mecanismo adicional de
                        autenticaci??n personal provisto por el Banco tiene el car??cter de secreto e intransferible,
                        y por lo tanto asumo las consecuencias de su divulgaci??n a terceros, liberando a.........
                        de toda responsabilidad que de ello se derive. En ning??n caso .......... requerir?? que le
                        suministre la totalidad de los datos, ni enviara mail requiriendo informaci??n personal
                        alguna. 
                    </p>
                    <h4>Costo del Servicio</h4>
                    <p>
                        La empresa XXXX podr?? cobrar comisiones por el mantenimiento y/o uso de este
                        Servicio o los que en el futuro implemente, entendi??ndose facultado expresamente para
                        efectuar los correspondientes d??bitos en mis cuentas, a??n en descubierto, por lo que
                        presto para ello mi expresa conformidad. En caso de cualquier modificaci??n a la
                        presente previsi??n, lo comunicar?? con al menos 60 d??as de antelaci??n. 
                    </p>
                    <h4>Vigencia</h4>
                    <p>
                       El Usuario podr?? dejar sin efecto la relaci??n que surja de la presente, en forma
                        inmediata, sin otra responsabilidad que la derivada de los gastos originados hasta ese
                        momento. Si el cliente incumpliera cualquiera de las obligaciones asumidas en su
                        relaci??n contractual con empresa XXXX, o de los presentes T??rminos y Condiciones, el
                        Banco podr?? decretar la caducidad del presente Servicio en forma inmediata, sin que
                        ello genere derecho a indemnizaci??n o compensaci??n alguna. empresa XXX podr?? dejar
                        sin efecto la relaci??n que surja de la presente, con un preaviso m??nimo de 60 d??as, sin
                        otra responsabilidad.  
                    </p>
                    <h4>Validez de operaciones y notificaciones</h4>
                    <p>
                        Los registros emitidos por la app ser??n prueba suficiente de las operaciones cursadas
                        por dicho canal. Renuncio expresamente a cuestionar la idoneidad o habilidad de ese
                        medio de prueba. A los efectos del cumplimiento de disposiciones legales o
                        contractuales, se otorga a las notificaciones por este medio el mismo alcance de las
                        notificaciones mediante documento escrito.
                    </p>
                    <h4>Propiedad intelectual</h4>
                    <p>
                        El software en Argentina est?? protegido por la ley 11.723, que regula la propiedad
                        intelectual y los derechos de autor de todos aquellos creadores de obras art??sticas,
                        literarias y cient??ficas.
                    </p>
                    <h4>Privacidad de la informaci??n</h4>
                    <p>
                        Para utilizar los Servicios ofrecidos por XXXX, los Usuarios deber??n facilitar
                        determinados datos de car??cter personal. Su informaci??n personal se procesa y
                        almacena en servidores o medios magn??ticos que mantienen altos est??ndares de
                        seguridad y protecci??n tanto f??sica como tecnol??gica. Para mayor informaci??n sobre la
                        privacidad de los Datos Personales y casos en los que ser?? revelada la informaci??n
                        personal, se pueden consultar nuestras pol??ticas de privacidad
                    </p>
                </div>
            </div>
        </div>

        <% } else if(session.getAttribute("user") != null && session.getAttribute("permiso").equals(1)) {%>
        <nav class="header navbar navbar-expand-sm navbar-light bg-light">
            <div class="container ">
                <a class="navbar-brand" href="#"><img src="images/dtvTaskMan.png" alt="DIRECTV'S TaskManager" width="200"></a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link mx-2 headlinks">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="servRequest" class="nav-link mx-2 headlinks">Requests</a>
                    </li>
                    <li class="nav-item">
                        <a href="servFix" class="nav-link mx-2 headlinks">Fix Verification</a>
                    </li>
                    <li class="nav-item">
                        <a href="servAdhoc" class="nav-link mx-2 headlinks">ADHOC</a>
                    </li>
                    <li class="nav-item">
                        <a href="servUsers" class="nav-link mx-2 headlinks">Users</a>
                    </li>
                    <li class="nav-item">
                        <a href="servSprints" class="nav-link mx-2 headlinks">Sprints</a>
                    </li>
                   <li class="nav-item">
                        <a href="servReportes" class="nav-link mx-2 headlinks">Reports</a>
                    </li>
                </ul>
                <form class="form-inline mt-3">
                    <input class="form-control-sm" type="text" placeholder="Buscar">
                    <button class="btn btn-outline-info btn-sm">Buscar</button>
                </form>
                <div class="float-lg-right mt-1 circulo dropdown">
                    <h4 class="align-middle mx-2 my-2">
                        <a href="#" class="sesion" data-toggle="dropdown">${user}</a>
                        <div class="dropdown-menu">
                            <a href="servMyAccount" class="dropdown-item">My account</a>
                            <a href="servLogin?control=a" class="dropdown-item">Log out</a>
                        </div>
                    </h4>
                </div>
            </div>
        </nav>
        
        <div class="container cuerpo">
            <div class="row">
                <div class="bg-secondary text-white container-fluid"><h2 class="text-center p-3">T??rminos y condiciones</h2></div>
                <div class="col-lg-10 card mx-auto mt-5 mb-5">
                    <h3>??Bienvenido!</h3>
                    Bienvenido a "DirecTv's TaskManager" proporcionado por Loomie Soft. Nos complace ofrecerle acceso al Servicio, 
                    sujeto a estos t??rminos y condiciones (los "T??rminos de Servicio") y a la Pol??tica
                    de Privacidad correspondiente de Loomie Soft. Al acceder y utilizar el Servicio, usted expresa
                    su consentimiento, acuerdo y entendimiento de los T??rminos de Servicio y la Pol??tica de
                    Privacidad. Si no est?? de acuerdo con los T??rminos de Servicio o la Pol??tica de
                    Privacidad, no utilice el Servicio.
                    Si utiliza el servicio est?? aceptando las modalidades operativas en vigencia descriptas
                    m??s adelante, las declara conocer y aceptar, las que se habiliten en el futuro y en los
                    t??rminos y condiciones que a continuaci??n se detallan: 
                    <ol>
                        <li>El uso del servicio est?? limitado ??nica y exclusivamente al grupo Quality Control "UAT House" que terciariza 
                            servicios de testing para DirecTv a trav??s de Sistemas Globales S.A. - Globant.
                        </li>
                        <li>
                            La informaci??n del cliente que es utilizada dentro del sistema es de car??cter <i>Confidencial</i>, por lo que su divulgaci??n
                            no autorizada de la misma ser?? penada por la ley.
                        </li>
                        <li>
                            El acceso al sistema requerir?? una cuenta de e-mail corporativa con el dominio <i>@globant.com</i> y una clave
                            que ser?? asignada previamente.
                        </li>
                    </ol>
                    
                    <br><br>
                    <h4>Operaciones habilitadas.</h4>
                    <p>Las operaciones habilitadas son aquellas que estar??n disponibles para los usuarios,
                        quienes deber??n cumplir los requisitos que se encuentren vigentes en su momento para
                        operar el Servicio. Las mismas podr??n ser ampliadas o restringidas por el proveedor,
                        comunic??ndolo previamente con una antelaci??n no menor a 60 d??as, y comprenden
                        entre otras, sin que pueda entenderse taxativamente las que se indican a continuaci??n:
                    </p>
                    <br><br>
                    <h5>Operaciones del usuario normal</h5>
                        <ol>
                            <li>Correr tickets internos para cada una de las tareas: Adhoc, Fix Verification y request</li>
                            <li>Generar y eliminar comentarios en los tickets</li>
                            <li>Autoasignaci??n de los tickets</li>
                            <li>Cambiar de la contrase??a del propio usuario</li>
                        </ol>
                    <br><br>
                    <h5>Operaciones del usuario Administrador</h5>
                        <ol>
                            <li>Crear, abrir, editar y eliminar tickets nuevos para cada una de las tareas: Adhoc, Fix Verification y request</li>
                            <li>Generar comentarios en los ticket de las tareas de request y fix verification</li>
                            <li>Asignar los tickets a otros usuarios</li>
                            <li>Generar reportes correspondientes a las tareas</li>
                            <li>Gestionar usuarios as?? tambien como sus datos y privilegios de acceso al sistema</li>
                            <li>Generar la informaci??n correspondiente a los sprints que deben probarse</li>
                            <li>Cambiar la contrase??a del propio usuario</li>
                        </ol>
                    <br><br>
                    <h4>Transacciones : Acerca del acceso al servicio </h4>
                    <p> En ning??n caso debe entenderse que la solicitud de un producto o servicio implica
                        obligaci??n alguna para el Acceso y uso del Servicio.
                        Para operar el Servicio se requerir?? siempre que se trate de usuarios de DIRECTV'S Task Manager, quienes
                        podr??n acceder mediante cualquier dispositivo con conexi??n a la Red Internet. El usuario
                        deber?? proporcionar el email corporativo y la clave personal, que ser??
                        provista por la aplicaci??n como requisito previo a la primera operaci??n, en la forma que
                        le sea requerida. La clave personal y todo o cualquier otro mecanismo adicional de
                        autenticaci??n personal provisto por el Banco tiene el car??cter de secreto e intransferible,
                        y por lo tanto asumo las consecuencias de su divulgaci??n a terceros, liberando a Loomie Soft
                        de toda responsabilidad que de ello se derive. En ning??n caso LoomieSoft requerir?? que le
                        suministre la totalidad de los datos, ni enviara mail requiriendo informaci??n personal
                        alguna. 
                    </p>
                    <br><br>
                    <h4>Costo del Servicio</h4>
                    
                        La empresa Loomie Soft no cobrar?? comisiones por el mantenimiento y/o uso de este
                        Servicio o los que en el futuro implemente.
                    <br><br>
                    <h4>Vigencia</h4>
                    <p>
                       El Usuario podr?? dejar sin efecto la relaci??n que surja de la presente, en forma
                        inmediata, sin otra responsabilidad. Si el cliente incumpliera cualquiera de las obligaciones asumidas en su
                        relaci??n contractual con empresa Loomie Soft, o de los presentes T??rminos y Condiciones, el
                        Banco podr?? decretar la caducidad del presente Servicio en forma inmediata, sin que
                        ello genere derecho a indemnizaci??n o compensaci??n alguna. empresa XXX podr?? dejar
                        sin efecto la relaci??n que surja de la presente, con un preaviso m??nimo de 60 d??as, sin
                        otra responsabilidad.  
                    </p>
                    <br><br>
                    <h4>Validez de operaciones y notificaciones</h4>
                    <p>
                        Los registros emitidos por la app ser??n prueba suficiente de las operaciones cursadas
                        por dicho canal. Renuncio expresamente a cuestionar la idoneidad o habilidad de ese
                        medio de prueba. A los efectos del cumplimiento de disposiciones legales o
                        contractuales, se otorga a las notificaciones por este medio el mismo alcance de las
                        notificaciones mediante documento escrito.
                    </p>
                    <br><br>
                    <h4>Propiedad intelectual</h4>
                    <p>
                        El software en Argentina est?? protegido por la ley 11.723, que regula la propiedad
                        intelectual y los derechos de autor de todos aquellos creadores de obras art??sticas,
                        literarias y cient??ficas.
                    </p>
                    <br><br>
                    <h4>Privacidad de la informaci??n</h4>
                    <p>
                        Para utilizar los Servicios ofrecidos por Loomie soft, los Usuarios deber??n facilitar
                        determinados datos de car??cter personal. Su informaci??n personal se procesa y
                        almacena en servidores o medios magn??ticos que mantienen altos est??ndares de
                        seguridad y protecci??n tanto f??sica como tecnol??gica. Para mayor informaci??n sobre la
                        privacidad de los Datos Personales y casos en los que ser?? revelada la informaci??n
                        personal, se pueden consultar nuestras pol??ticas de privacidad
                    </p>
                </div>
            </div>
        </div>
                <%
                    }
                %>

        <footer>
                <div class="row bg-dark justify-content-center">
                    <h2 class="text-white">Links of Interests</h2>
                </div>
            <div class="container">
                <div class="row">
                    <!--links UAT -->
                    <ul class="col-4 list-unstyled text-center mt-4">
                        <li class="font-weight-bold text-uppercase">UAT</li>
                        <li><a href="#" class="linkFoot">Enter daily worklog</a></li>
                        <li><a href="#" class="linkFoot">Worklog entries</a></li>
                        <li><a href="#" class="linkFoot">Mariano/Jos?? asignments</a></li>
                        <li><a href="#" class="linkFoot">Daily meetings</a></li>
                    </ul>
                    <!--links SPIRA -->
                    <ul class="col-4 list-unstyled text-center mt-4" >
                        <li class="font-weight-bold text-uppercase">SPIRA</li>
                        <li><a href="#" class="linkFoot">Sitio de Spira</a></li>
                    </ul>
                    <!--links JIRA -->
                    <ul class="col-4 list-unstyled text-center mt-4">
                        <li class="font-weight-bold text-uppercase" >JIRA</li>
                        <li><a href="#" class="linkFoot">Jira OTT</a></li>
                        <li><a href="#" class="linkFoot">Jira DTVLA</a></li>
                    </ul>
                </div>
            </div>
            <div class="row justify-content-center bg-dark">
                    <p class="lead text-white">
                        Created By Loomie Soft &COPY; - <i>All Rights reserved</i>
                    </p>
                </div>
        </footer>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="js/main.js"></script>
    </body>
</html>