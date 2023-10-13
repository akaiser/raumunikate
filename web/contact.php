<?php

use PHPMailer\PHPMailer\PHPMailer;

require 'inc/PHPMailer/Exception.php';
require 'inc/PHPMailer/PHPMailer.php';
require 'inc/PHPMailer/SMTP.php';

if (array_key_exists('email', $_POST)) {
    date_default_timezone_set('Etc/UTC');;

    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $mail = new PHPMailer();
    $mail->Host = 'smtp.strato.de';
    $mail->SMTPSecure = 'ssl';
    $mail->SMTPAuth = true;
    $mail->Port = 465;
    $mail->Username = '<fix_me>';
    $mail->Password = '<fix_me>';

    $mail->setFrom($email, $name);
    $mail->addAddress('ak@kaiserv.de');
    $mail->addReplyTo($email, $name);
    $mail->isHTML(false);
    $mail->Subject = "Web-Kontaktanfrage: $name";
    $mail->Body = "Name: $name\n";
    $mail->Body .= "Email: $email\n\n";
    $mail->Body .= "Nachricht:\n$message";

    http_response_code($mail->send() ? 201 : 500);
    exit();
}
