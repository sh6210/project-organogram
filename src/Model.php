<?php
/**
 * Model - All kind of database query and fetching result.
 * PHP version 7.3
 * @category   CategoryName
 * @package    Organogram
 * @author     Sarwar Hossain <sarwar@instabd.com>
 * @copyright  2020 Intalogic Bangaldesh
 * @version    1.0.1
 */

namespace Organogram;

use MySQLi;

include_once 'config.php';

/**
 * Model Class Statically use to all over the system.
 * Usage: \Model::get()->
 */
class Model
{
    /**
     * @var MySQLi Object
     */
    private MySQLi $_dbcon;

    /**
     * Constructor
     */
    public function __construct()
    {
        try {
            $this->_dbcon = new MySQLi(env('DB_HOST', 'localhost'), env('DB_USER', 'dbuser'), env('DB_PASSWORD', 'password'), env('DB_NAME', 'dbname'));
        } catch (\Exception $e) {
            echo "Connection failed";
            die();
        }
    }

    /**
     * Static method get the Model Object
     * @return Model
     */
    public static function get()
    {
        return new Model();
    }

    /**
     * Query : Execute the base query
     * @param String $sql
     * @return mixed
     */
    private function query($sql)
    {
        return $this->_dbcon->query($sql);
    }

    public function getLoggedInEmployeeInfo(string $email, string $password, $departmentId)
    {
        $sql = "select e.id from employee e where e.email = '$email' and $password = '$password'";
        $result = $this->query($sql);

        echo "<pre>";
        var_dump($result);
        echo "</pre>";
        die();
    }

    public function validateEmployeeInfo($username, $password)
    {
        $sql = "select id, email, password from employee where email = '$username'";

        $result = $this->query($sql);

        $result = $result->num_rows ? $this->fetch($result) : false;
        $this->_dbcon->close();

        if ($result) {
            if (password_verify($password, $result['password'])) {
                session_start();

                $_SESSION["loggedin"] = true;
                $_SESSION["id"] = $result['id'];
                $_SESSION["username"] = $username;

                header("Location: welcome.php");
            }
        }

        $_SESSION['error'] = "Opps, login error";
        header("Location: login.php");
    }

    /**
     * fetch : get the first result
     * @param mixed $result
     * @return array
     */
    private function fetch($result)
    {
        $data = $result->fetch_assoc();
        $result->free_result();
//        $this->_dbcon->close();
        return $data;
    }

    /**
     * fetchAll : get the full result of query
     * @param $result
     * @return array|object
     */
    private function fetchAll($result)
    {
        $data = $result->fetch_all(MYSQLI_ASSOC);
        $result->free_result();
//        $this->_dbcon->close();
        return $data;
    }

    /**
     * employee: get the employee data
     * @param $id
     * @return array|object
     */
    public function employees($id = false)
    {
        $where = $id ? "WHERE id='$id'" : "";
        $sql = "SELECT * FROM employee $where";
        $result = $this->query($sql);
        return $this->fetchAll($result);
    }

    /**
     * ToDo:: // do something
     */
    public function roles()
    {
        // do something

    }

    /**
     * ToDo:: // do something
     */

    public function department()
    {
        // do something
    }

    /**
     * ToDo:: // do something
     * @param $employeeId
     * @param $departmentId
     */

    public function employeeUnderMe($employeeId, $departmentId)
    {
        // do something
    }

    public function __destruct()
    {
        $this->_dbcon->close();
    }


}


