<?php
require_once("model/tablas1.php");
require_once("model/tablas2.php");

class Controller{
    // mostrar
    static function index(){
      require_once("view/index.php");
    }

    //PETICIONES----------------------------------------------------------------------
    static function TABLA1(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'GET':
          echo json_encode(Tablas1::getAll());
          break;
        
        default:
          break;
      }
    }

    static function TABLA1CREATE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas1::create($datos->descripcion, $datos->nombres, $datos->apellidos)){
              http_response_code(200);
            }
          }
          break;
        default:
          break;
      }
    }

    static function TABLA1DELETE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas1::delete($datos->id)){
              http_response_code(200);
            }
          }
          break;
        
        default:
          break;
      }
    }

    static function TABLA1READ(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'GET':
          if(isset($_GET['id'])){
            echo json_encode(Tablas1::getById($_GET['id']));
          }
          break;
        default:
          break;
      }
    }
    
    static function TABLA1UPDATE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas1::update($datos->id, $datos->descripcion, $datos->nombres, $datos->apellidos)){
              http_response_code(200);
            }
          }
          break;
        
        default:
          break;
      }
    }

    static function TABLA2(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'GET':
          echo json_encode(Tablas2::getAll());
          break;
        
        default:
          break;
      }
    }

    static function TABLA2CREATE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas2::create(
                $datos->tabla1_id, 
                $datos->descripcion, 
                $datos->titulo,
                $datos->horario,
                $datos->fecha,
                $datos->unidades,
                $datos->precio,
                $datos->email
              )
            ){
              http_response_code(200);
            }
          }
          break;
        default:
          break;
      }
    }

    static function TABLA2DELETE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas2::delete($datos->id)){
              http_response_code(200);
            }
          }
          break;
        
        default:
          break;
      }
    }

    static function TABLA2READ(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'GET':
          if(isset($_GET['id'])){
            echo json_encode(Tablas2::getById($_GET['id']));
          }
          break;
        default:
          break;
      }
    }

    static function TABLA2UPDATE(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas2::update($datos->id, $datos->descripcion, $datos->titulo, $datos->horario, $datos->fecha, $datos->unidades, $datos->precio, $datos->email)){
              http_response_code(200);
            }
          }
          break;
        
        default:
          break;
      }
    }

    static function REPORTES(){
      switch ($_SERVER['REQUEST_METHOD']){
        case 'POST':
          $datos = json_decode(file_get_contents('php://input'));
          if($datos != null){
            if(Tablas2::crear_reporte(
                $datos->tabla1_id, 
                $datos->descripcion, 
                $datos->titulo,
                $datos->horario,
                $datos->fecha,
                $datos->unidades,
                $datos->precio,
                $datos->email,
                $datos->fecha_ini,
                $datos->fecha_fin
              )
            ){
              http_response_code(200);
            }
          }
          break;
        default:
          break;
      }
    }







    //----------------------------------------------------------------------------




    //nuevo


    /*
    static function nuevo(){        
        require_once("vista/nuevo.php");
    }
    //guardar
    static function guardar(){
        $nombre= $_REQUEST['nombre'];
        $precio= $_REQUEST['precio'];
        $data = "'".$nombre."',".$precio;
        $producto = new Modelo();
        $dato = $producto->insertar("productos",$data);
        header("location:".urlsite);
    }



    //editar
    static function editar(){    
        $id = $_REQUEST['id'];
        $producto = new Modelo();
        $dato = $producto->mostrar("productos","id=".$id);        
        require_once("vista/editar.php");
    }
    //actualizar
    static function actualizar(){
        $id = $_REQUEST['id'];
        $nombre= $_REQUEST['nombre'];
        $precio= $_REQUEST['precio'];
        $data = "nombre='".$nombre."',precio=".$precio;
        $producto = new Modelo();
        $dato = $producto->actualizar("productos",$data,"id=".$id);
        header("location:".urlsite);
    }


    //eliminar
    static function eliminar(){    
        $id = $_REQUEST['id'];
        $producto = new Modelo();
        $dato = $producto->eliminar("productos","id=".$id);
        header("location:".urlsite);
    }
*/

}