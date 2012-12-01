 <?php 
class User extends AppModel
{
    public $name = 'User';
	public $useTable = 'user';
    
    function validateLogin($data)
    {
        $user = $this->find(array('email' => $data['email'], 'password' => md5($data['password'])), array('id', 'username'));
        if(empty($user) == false)
            return $user['User'];
        return false;
    }
}
?> 