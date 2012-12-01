<div class="login">
<div><a href="../login">Login</a></div>
<h2>Create User</h2>    
    <?php echo $this->Form->create('User', array('action' => 'newUser'));?>
        <?php echo $this->Form->input('email');?>
        <?php echo $this->Form->input('password');?>
		<?php echo $this->Form->input('passwordTwo');?>
		<?php echo $this->Form->input('firstName');?>
		<?php echo $this->Form->input('lastName');?>
        <?php echo $this->Form->submit('Create');?>
    <?php echo $this->Form->end(); ?>
</div> 