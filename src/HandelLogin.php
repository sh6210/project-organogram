<?php

namespace Organogram;
require '../vendor/autoload.php';

class HandelLogin
{
    public function showLogin()
    {
        header('Location: login.php');
    }

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

    public function isSubmitted()
    {
        $email = $_POST['email'] ?? false;
        $password = $_POST['password'] ?? false;

        return $email and $password ?: false;
    }
}

$handleLogin = new HandelLogin();
$handleLogin->isSubmitted() ? $handleLogin->calculateSubmission() : $handleLogin->showLogin();
