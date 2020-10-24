<?php
/**
 * Library which provide all kind of employee information and data
 *
 * @package Organogram
 * @author Sarwar Hossain <sarwar@instabd.com>
 * @copyright   Instalogic
 * @link URL description
 * @version 1.0.0
 *
 */

namespace Organogram;
require '../vendor/autoload.php';

/**
 * Employee Class provides all employee data.
 * Usages:
 * ```
 * use \Organogram\Employee <br />
 * $emp = new Employee(); <br />
 * call of your desire method from view or anywhere.
 */
class Employee
{
    /**
     * Get the employee array
     * @param $id
     * @return array|object
     */
    function getEmployee($id = Null)
    {
        return Model::get()->employees();
    }

    /**
     * TODO:: Complete this method and get all the id's under an employee
     *          Example: From our sample image(https://bit.ly/2AXmLRX),
     *                  if we pass department id 1 and employee id 5 it will show
     *                  all the id's under 5 which is 11,12, 23,24,25,26,27,40,40,42 .. .. .. .. .. 63,64,68
     *                  So you have to show the tree.
     * @param Integer $employeeId
     * @param Integer $departmentId
     * @return void List of employees
     */
    function getEmployeeUnderMe(int $employeeId, int $departmentId)
    {
        if ($result = Model::get()->employeeUnderMe($employeeId, $departmentId)){
            echo "<pre>";
            print_r($result);
            die;
        }

        $_SESSION['info'] = 'Sorry, no record found';
        header("location: welcome.php");
        exit;
    }

    public function validateAndShowEmployeeResult($email, $password, $departmentId)
    {
        $sql = <<<SQL
                select e.id, e.name, e.email, e.password, d.title
                from employee e 
                inner join employee_role er on e.id = er.employee_id
                inner join department d on er.department_id = d.id
                where email='$email' and department_id='$departmentId'
SQL;

        $result = Model::get()->validateEmployeeInfo($sql, $password);

        session_start();

        if ($result && password_verify($password, $result['password'])) {
            $_SESSION["loggedin"] = true;
            $_SESSION["id"] = $result['id'];
            $_SESSION["email"] = $email;

            $this->getEmployeeUnderMe($result['id'], $departmentId);
        } else {
            $_SESSION['error'] = "Opps, login error";
            header("Location: login.php");
            exit;
        }

        return $this;
    }
}
