$(document).ready(function(){

	$('a').bind('click', function(event){
		event.preventDefault();
	});

	$('.cube a').bind('click', function(){
		if ($('body').hasClass('triggered'))
		{
			$('body').removeClass('triggered');
			$(this).parent().removeClass('active');
		}
		else
		{
			$('body').addClass('triggered');
			$(this).parent().addClass('active');
		}
	});
});