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
        $this->_dbcon = new MySQLi(env('DB_HOST', 'localhost'), env('DB_USER', 'dbuser'), env('DB_PASSWORD', 'password'), env('DB_NAME', 'dbname'));

        if ($this->_dbcon->connect_errno) {
            echo "Failed to connect to MySQL: {$this->_dbcon->connect_error}";
            die;
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

    /**
     * @param $email
     * @param $departmentId
     * @return array|false
     */
    public function validateEmployeeInfo($email, $departmentId)
    {
        $sql = <<<SQL
                select e.id, e.name, e.email, e.password, d.title
                from employee e 
                inner join employee_role er on e.id = er.employee_id
                inner join department d on er.department_id = d.id
                where email='$email' and department_id='$departmentId'
SQL;

        $result = $this->query($sql);
        return $result->num_rows ? $this->fetch($result) : false;
    }

    /**
     * @param $sql
     * @return mixed
     */
    public function insertEmployee($sql)
    {
        return $this->query($sql);
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
     * Getting all roles
     */
    public function roles()
    {
        $sql = "select title from role";
        $result = $this->query($sql);
        return $result->num_rows ? $this->fetchAll($result) : [];
    }

    /**
     * Getting all departments
     */
    public function department()
    {
        $sql = "select id, title from department";
        $result = $this->query($sql);
        return $result->num_rows ? $this->fetchAll($result) : [];
    }

    /**
     * ToDo:: // do something
     * @param $employeeId
     * @param $departmentId
     * @return array|false|object
     */
    public function employeeUnderMe($employeeId, $departmentId)
    {
        $sql=<<<SQL
                with recursive children as (
                select e.name, er.employee_id, r.title
                from employee_role er 
                    inner join employee e on er.employee_id = e.id
                    inner join role r on er.role_id = r.id
                where parent_employee_id = '$employeeId' and department_id = '$departmentId'
                union
                select e2.name, er2.employee_id, r2.title
                from children c 
                    join employee_role er2 on er2.parent_employee_id = c.employee_id
                    join employee e2 on er2.employee_id = e2.id
                    join role r2 on er2.role_id = r2.id
                where department_id = '$departmentId'
            ) select * from children  
SQL;

        $result = $this->query($sql);

        return $result->num_rows ? $this->fetchAll($result) : false;

    }

    /**
     * Closing the DB connection
     */
    public function __destruct()
    {
        $this->_dbcon->close();
    }


}


