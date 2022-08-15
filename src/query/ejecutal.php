<?php
namespace barber\query;

use barber\Data\Database;
use PDO;
use PDOException;

class ejecutal
{
    public function ejecutar($qry)
    {
        try
        {
            $cc= new Database("barberia","root","1234");
             $objetopdo=$cc->getPDO();
             $resultado=$objetopdo->query($qry);
             $cc->desconectarDb();
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    public function verificareg($nombre_usuario)
    {
        try
        {
            $pase=0;
            $cc= new Database("barberia","root","1234");
            $objetopdo=$cc->getPDO();

            $query="SELECT* FROM cuenta WHERE nombre_usuario='$nombre_usuario'";
            $consulta=$objetopdo->query($query);
            while($renglon=$consulta->fetch(PDO::FETCH_ASSOC))
            {
                if ($nombre_usuario=$renglon['nombre_usuario']) {
                    $pase=1;
                }
                else {
                    $pase=0;
                }
            }

            if ($pase>0) 
            {
                
                echo"<div class='alert alert-danger'>";
                echo"<h2 align='center'>Usuario o correo ya registrados</h2>";
                echo"</div>";
            }
            else
            {
            header("location: ../../views/iniciosesion.php");
            }      
            $cc->desconectarDb();
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }

    } 
    
}
?>