<?php

namespace Organogram;
require '../vendor/autoload.php';

class HandelLogin
{
    /**
     * Redirect to the login page
     */
    public function showLogin()
    {
        header('Location: login.php');
    }

    /**
     * Validate the $_POST entries and
     * show the results if applicable
     */
    public function calculateSubmission()
    {
        $email = $_POST['email'] ?? false;
        $password = $_POST['password'] ?? false;
        $department = $_POST['department'] ?? false;

        if ($email) $email = trim($email);
        if ($password) $password = trim($password);
        if ($department) $department = trim($department);

        if (!$email or !$password or !$department) {
            header("Location: login.php");
            exit;
        }

        $employee = new Employee();
        $employee->validateAndShowEmployeeResult($email, $password, $department);
    }

    /**
     * @return bool
     */
    public function isSubmitted()
    {
        $email = $_POST['email'] ?? false;
        $password = $_POST['password'] ?? false;

        return $email and $password ?: false;
    }
}
