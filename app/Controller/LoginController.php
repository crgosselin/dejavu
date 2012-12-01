<?php 
class LoginController extends AppController
{   	
	function index()
	{
		 if ($this->request->isPost())
         {
            if ($this->Auth->login())
            {
                return $this->redirect($this->Auth->redirect());
            }
            else
            {
                $this->Session->setFlash('Username or password is incorrect', 'default', array('class' => 'alert alert-error'));
            }
         }
	}

    
}

?> 