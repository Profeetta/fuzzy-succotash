<?php

class Constants
{
    //DB 
    static $DB_SERVER="localhost";
    static $DB_NAME="worldofinfotable";
    static $USERNAME="root";
    static $PASSWORD="";

    static $SQL_SELECT_ALL="SELECT * FROM worldofinfotable";
}

class Classes
{
    public function connect(){
        $con=new mysqli(Constants::$DB_SERVER, Constants::$USERNAME, 
        Constants::$PASSWORD, Constants::$DB_NAME);
        if($con->connect_error){
            echo "Unable to Connect";
            return null;
        }else{
            echo "Connected";
            return $con;
        }
    }
    public function select(){
        $con = $this->connect();
        if($con != null){
            $result = $con  -> query(Constants::$SQL_SELECT_ALL);
            if($result->num_rows>0){
                $Classes=array();
                while($row=$result->fetch_array()){
                    array_push($Classes, array("idx"=>$row['idx'], "name"=>$row['name']);
                }print(json_encode(array(array_reverse($Classes)));
            }else{
                print(json_encode(array("PHP EXCEPTION: Can't retrieve from mySql")));
            }
            $con->close();
        }else{
            print(json_encode(array("PHP EXCEPTION : CAN'T CONNECT TO MYSQL. NULL CONNECTION.")));
        }
    }
}
$Classes = new Classes();
$Classes->select();