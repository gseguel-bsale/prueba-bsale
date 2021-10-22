<h1>prueba-bsale </br>"Carro de compras conectarse a Bsale por API REST"</h1>

<h2>Bienvenidos a la Documentacion</h2></br>
<h3>Resumen de la aplicacion</h3>
<p>El backend de esta aplicacion se conecta con una base de datos que contiene productos y sus categorias. 
Ademas se generaron diferentes endpoints que entregan las consultas objetnidas en la base de datos a traves de JSON.
Por el lado del frontend, el documento index.js obtiene la informacion de los endpoints para poder desplegarlas visualmente en un navegador</p>


<h3>Para generar esta aplicacion se utilizo:</h3>
<li>Backend Ruby Sinatra</li>
<li>Fronend JS, CSS, HTML</li>
<li>Deploy en Heroku</li>
<li>Visual se utilizo la herramienta de Github y para levantar la interfaz se utilizo GithubPages</li>

<h3>Detalle de documentos de la aplicacion:</h3>
<p>Backend<p>
<li>app.rb (aplicacion que se utiliza para conexion con BD, mostrar elementos por JSON,  levantamiento de endpoiints.</li></br>
<p>Deploy<p>
<li>config.ru documento utilizado para hacer el deploy que oermite inciar la aplicacion</li>
<li>Gemfile documento generado para hacer el deploy, contiene las gemas o versiones a utilizar por el servidor</li>
<li>Prockfile documento solicitado por el server para el deploy</li></br>
<p>Frontend<p>
<li>index.js documento que utiliza los endpoints y obtiene la informacion para presentarla en la visual al cliente</li>
<li>index.html documento que es utilizado para mostrar la informacion.</li>
<li>style.css documento que entrega el diseno de la pagina web.</li>

________________________________________________________________________________________________________________________________________________

<h3>Herramientas instaladas</h3>
<p>Para que la app funcione correctamente deben tener instalado:</p>
<li>Ruby version 2.7.2</li></br>
<p>Ademas de las siguientes gemas:</p>
<li>sinatra version 2.1.0</li>
<li>mysql2 version 0.5.3</li>
<li>json version 2.6.0</li>
<li>cross_origin version 0.0.2</li>
<li>sinatra-cross_origin version 0.4.0</li>
<li>rack version 2.2.3</li></br>

<p>para hacer el archivo Gemfile.lock  se debe instalar bundler</p>
<p>ademas se debe instalar mysqlclient-dev para la gema mysql2<p>
<p>Para levantar la API  se utiliza rackup -p 3000 -E production</p>

________________________________________________________________________________________________________________________________________________

<h3>Detalle del codigo en los documentos</h3>
<li><b>app.rb</b></li>
<p>-Resumen:</p>
<p>Este archvo es el encargado de:</br>
conectarse con la base de datos, hacer consultas a la base de datos y exponer los resultados en los endpoints a traves del lenguaje JSON</p>

<p>-Detalle:</p>
<p>Es el archivo prinicipal generado en Ruby con Sinatra.
Dentro del archivo se encuentra la ejecucion de diferentes endpoint disponibles.
Ademas encontraran la informacion de como conectarnos a la BD entregada.</p>

<p>1)Para conectarme a la Base de datos se utilizo mysql2 "require "mysql2"
Con la siguiente linea Podemos hacer la conexion a la base de datos. 
db = Mysql2::Client.new(:host => "Servidor alojado BD", :username => "Usuario", :password => "password", :database => "nombre BD")</p>

2)Luego para poder realizar una consulta a la BD utilizamos
db.query(consulta SQL)

3)Dentro de las peticiones HTML solo esta disponible GET
URL principal es:
https://prueba-bsale.herokuapp.com
<li>GET /</li>   :Entrega todo el listado de productos y categorias
El JSON entregado mostrara la DATA completa de productos y categorias
<li>GET /categories<li>   
entrega todo el listado de categorias
<li>GET /products  Parametro 'name':   Se puede buscar un producto por nombre por ejemplo
https://prueba-bsale.herokuapp.com/products?name=big</li></br></br>

<li><b>index.js</b></li>
<p>-Resumen:</p>
<p>Este archvo es el encargado de:</br>
<p>realiza el GET a https://prueba-bsale.herokuapp.com/ para obtener la DATA completa de los productos y categorias </p>
<p>-Detalle:</p>
El archivo realiza el GET a / para rescatar toda la informacion del JSON que entraga el endpoints disponible por la API
Esto lo hace con la siguiente linea
onst API_URL = "https://prueba-bsale.herokuapp.com/";
instanciamos un objeto de XMLHttpRequest();
realizamos xhttp.open("GET", API_URL);

Dentro de la funcion obtenerProductosClasificadosIniciales()
Se realiza un parseo de Json a String para poder trabajar en un Array.
let dataJson = JSON.parse(this.responseText);
Esta funion realiza la accion de mostrar todos los productos y mostrar los productos por categorias.



Fin Documentacion
