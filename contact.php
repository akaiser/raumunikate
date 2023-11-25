<?php

use PHPMailer\PHPMailer\PHPMailer;

//use PHPMailer\PHPMailer\SMTP;

require 'inc/PHPMailer/Exception.php';
require 'inc/PHPMailer/PHPMailer.php';
require 'inc/PHPMailer/SMTP.php';

if (array_key_exists('email', $_POST)) {
    date_default_timezone_set('Etc/UTC');

    $sender_host = '<sender_host>';
    $sender_email = '<sender_email>';
    $sender_pwd = '<sender_pwd>';
    $target_email = '<target_email>';

    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $mail = new PHPMailer();
    $mail->isSMTP();
    $mail->Host = $sender_host;
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER;
    $mail->SMTPSecure = 'ssl';
    $mail->SMTPAuth = true;
    $mail->Port = 465;
    $mail->Username = $sender_email;
    $mail->Password = $sender_pwd;

    $mail->setFrom($sender_email, 'Web-Kontaktanfrage');
    $mail->addAddress($target_email);
    $mail->addReplyTo($email, $name);
    $mail->isHTML(false);
    $mail->Subject = "Web-Kontaktanfrage: $name";
    $mail->Body = "Name: $name\n";
    $mail->Body .= "Email: $email\n\n";
    $mail->Body .= "Nachricht:\n$message";

    http_response_code($mail->send() ? 201 : 500);
}

exit();
