$(document).ready(function () {

	$('#username').select().focus();

	if ($('#login-error').html() != '') {
		$('#login-error').css({ 'display': 'block' }).animate({ 'height': '2%' });
	}

	$('#login').validate({

		messages: {
			'username': { required: 'Required.' },
			'password': { required: 'Required.' }
		},

		submitHandler: function (form) {

			$('img.load').fadeIn();

			$.ajax({
				type: 'POST',
				data: $('#login').serialize(),
				url: base_url + 'admin/validate',
				success: function (html) {
					$('img.load').fadeOut();

					if (html == 'warning') {
						$('#login-error').html('Invalid username or password').css({ 'display': 'block' }).animate({ 'height': '2%' });
						//alert('test');
					}
					else {
						$('body').fadeOut();
						window.location = base_url + 'admin/dashboard';
						//alert('test');
					}
				}
			});
		}
	});
});