<div class="login">
<div><a href="login/newUser">Create a User</a></div>
<h2>Login</h2>    
    <?php echo $this->Form->create('User', array('action' => 'index'));?>
        <?php echo $this->Form->input('email');?>
        <?php echo $this->Form->input('password');?>
        <?php echo $this->Form->submit('Login');?>
    <?php echo $this->Form->end(); ?>
</div>