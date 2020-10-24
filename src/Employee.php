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
        // Showing the descendant employees if exists
        if ($result = Model::get()->employeeUnderMe($employeeId, $departmentId)){
            echo "<pre>";
            print_r($result);
            die;
        }

        // Setting key into session for showing the logged_in user info
        // as they don't have any descendant
        $_SESSION['info'] = 'Sorry, no record found';
        header("location: welcome.php");
        exit;
    }

    /**
     * @param $email
     * @param $password
     * @param $departmentId
     * @return $this
     */
    public function validateAndShowEmployeeResult($email, $password, $departmentId)
    {
        $result = Model::get()->validateEmployeeInfo($email, $departmentId);

        session_start();

        if ($result && password_verify($password, $result['password'])) {
            $_SESSION["loggedin"] = true;
            $_SESSION["id"] = $result['id'];
            $_SESSION["email"] = $email;

            // Getting descendant employees for logged in user
            $this->getEmployeeUnderMe($result['id'], $departmentId);
        } else {
            $_SESSION['error'] = "Opps, login error";
            header("Location: login.php");
            exit;
        }

        return $this;
    }
}
