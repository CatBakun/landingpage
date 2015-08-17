<?php
class Contact extends CI_Controller {

        public function index()
        {
            $this->load->library('email');

            $this->email->from('contacto@conceptonea.com.ar', 'Concepto NEA');
            $this->email->to($this->input->post('email'));
            $this->email->subject('Mensaje recibido');
            $this->email->message('Gracias por contactarse con Concepto NEA. Nos comunicaremos a la brevedad.');
            $this->email->send();

            $this->email->from($this->input->post('email'), $this->input->post('nombre'));
            $this->email->to('contacto@conceptonea.com.ar');
            $this->email->subject('Mensaje desde formulario de contacto');
            $mensaje = "Mensaje recibido \nNombre: ". $this->input->post('nombre') . "\n:Email: " . $this->input->post('email') . "\nMensaje: " . $this->input->post('mensaje') . "\nTeléfono: " . $this->input->post('telefono');
            $this->email->message($mensaje);
            $this->email->send();

            echo 200;
        }
}
