 <?php 
class LoginController extends AppController
{
	var $name = "Login";
    	
	function index()
	{
		 if(empty($this->data) == false)
        {
            if(($user = $this->User->validateLogin($this->data['User'])) == true)
            {
                $this->Session->write('User', $user);
                $this->redirect('home');
                exit();
            }
            else
            {
                exit();
            }
        }
	}
	
	function newUser()
	{
		if(empty($this->data) == false)
		{
			if(($user = $this->User->createUser($this->data['User'])) == true)
            {
                $this->Session->write('User', $user);
                $this->redirect('home');
                exit();
            }
            else
            {
                exit();
            }
		}
	}
    
}

?> 