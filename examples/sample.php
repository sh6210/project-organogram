<?php
//Loading Autoload file 
require '../vendor/autoload.php'; 

use Organogram\employee;

// Example to show some employee
$emp = new Employee();
$data = $emp->getEmployee();        
echo "<pre>"; 
print_r($data); 
echo "</pre>"; 

// ToDo:: call your getEmployeeUnderMe(EMP_ID, DPT_ID) and print all the ids here
// $data = $emp->getEmployeeUnerMe(5,1); 
// echo "<pre>"; 
// print_r($data); 
// echo "</pre>"; 
