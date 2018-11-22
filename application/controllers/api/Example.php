<?php
use Restserver\Libraries\REST_Controller;
if (!defined('BASEPATH')) exit('No direct script access allowed');

//include Rest Controller library
//echo APPPATH . '/libraries/REST_Controller.php';
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';
class Example extends REST_Controller {

    public function __construct() { 
        parent::__construct();
        
        //load user model
        $this->load->model('api/user');
    }
    

    public function userlogin_post() {


        $userData = array();
        $userData['emp_id'] = $this->post('emp_id');
        $userData['pass']   = $this->post('pass');
        //$userData['email'] = $this->post('email');
        //$userData['phone'] = $this->post('phone');
        if(!empty($userData['emp_id']) && !empty($userData['pass'])){
            //insert user data
            $insert = $this->user->getUser($userData);
            
            //check if the user data inserted
            if(!empty($insert)){
            //set the response and exit
                $this->response($insert, REST_Controller::HTTP_OK);
            }else{
                //set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'No user were found.'
                ], REST_Controller::HTTP_NOT_FOUND);
            }
        }else{
            //set the response and exit
            $this->response("Provide complete user information to create.", REST_Controller::HTTP_BAD_REQUEST);
        }

    }
    
    
}

?>