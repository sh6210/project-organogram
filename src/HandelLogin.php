<?php

namespace Organogram;
require '../vendor/autoload.php';

class HandelLogin
{
    public function __construct()
    {

    }

    public function showLogin()
    {
        header('Location: login.php');
    }

    public function calculateSubmission()
    {
        $username = $_POST['username'] ?? false;
        $password = $_POST['password'] ?? false;

        if ($username) $username = trim($username);
        if ($password) $password = trim($password);

        if (!$username or !$password) {
            header("Location: login.php");
        } else {
            $model = new Model();
            $model->validateEmployeeInfo($username, $password);
        }

        return $this;
    }

    public function showResult()
    {

    }

    public function isSubmitted()
    {
        $username = $_POST['username'] ?? false;
        $password = $_POST['password'] ?? false;

        return $username and $password ?: false;
    }
}

$handleLogin = new HandelLogin();

$handleLogin->isSubmitted() ? $handleLogin->calculateSubmission()->showResult() : $handleLogin->showLogin();

//$model = new Model();
//$model->validateEmployeeInfo($username);
//        $model->getLoggedInEmployeeInfo($username, $password, $departmentId);
