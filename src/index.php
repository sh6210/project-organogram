<?php
//header("location: HandelLogin.php");
require '../vendor/autoload.php';

use Organogram\HandelLogin;

$handleLogin = new HandelLogin();
$handleLogin->isSubmitted() ? $handleLogin->calculateSubmission() : $handleLogin->showLogin();
