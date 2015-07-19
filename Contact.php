<?php
class Contact extends CI_Controller {

        public function index()
        {
            $this->load->library('email');

            $this->email->from('your@example.com', echo $this->input->post('nombre'));
            $this->email->to(echo $this->input->post('email'));
            $this->email->cc(echo $this->input->post('email'));
            //$this->email->bcc('them@their-example.com');

            $this->email->subject('Mensaje de contacto en entorno-pruebas.com');
            $this->email->message(echo $this->input->post('mensaje'));

            $this->email->send();

            echo 200;
        }
}
