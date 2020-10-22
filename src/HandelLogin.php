<?php

namespace Organogram;

class HandelLogin
{
    public function __construct()
    {

    }

    public function showLogin()
    {

    }

    public function calculateSubmission()
    {
        return $this;
    }

    public function showResult()
    {

    }

    public function isSubmitted()
    {
        return false;
    }
}

$handleLogin = new HandelLogin();

$handleLogin->isSubmitted() ? $handleLogin->showLogin() : $handleLogin->calculateSubmission()->showResult();


//$model = new Model();
//$model->validateEmployeeInfo($username);
//        $model->getLoggedInEmployeeInfo($username, $password, $departmentId);
