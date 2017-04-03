<?php
include_once('lib/alert.class.php');

// set var
if(isset($_POST['contact'])){
	$contact = $_POST['contact'];
} else {
	$contact = array(
		'name' => null,
		'subject' => null,
		'email' => null,
		'message' => null
	);
}
if(isset($_SESSION['account']['username'])){$contact['name'] = $_SESSION['account']['username'];}

// handled post
if(isset($_POST['contact'])) {
	$error = false;

	if(strlen($contact['name'])>0) {$contact['name'] = trim($contact['name']);} else { $alert->add('warning','Provide a valid name'); $error = true;}

	if(strlen($contact['subject'])>0) {$contact['subject'] = trim($contact['subject']);}

	if((strlen($contact['email'])>0)&&(preg_match('/^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$/i', $contact['email']))) {$contact['email'] = trim($contact['email']);} else {$alert->add('warning','Provide a valid email address'); $error = true;	}

	if(strlen($contact['message'])>10) {
		if(function_exists('stripslashes')) {
			$contact['message'] = stripslashes(trim($contact['message']));
		} else {
			$message = trim($contact['message']);
		}
	} else {
		$alert->add('warning','Provide a message longer than 10 charaters');
		$error = true;
	}

	if(!isset($_POST['norobot'])||(md5($_POST['norobot'])!=$_SESSION['code'])){
		$error = true;
		$alert->add('warning','Incorrect security code supplied');
	}

	if($error==false) {
		$headers = 'From: contact form <'.$contact['email'].'>'.PHP_EOL;
		$headers .= 'Reply-To: <'.$contact['email'].'>'.PHP_EOL;
		$headers .= 'MIME-Version: 1.0'.PHP_EOL;
		$headers .= 'Content-Type: text/html; charset=ISO-8859-1'.PHP_EOL;
		$message .= 'Name: '.$contact['name'].'<br/>';
		$message .= 'Subject: '.$contact['subject'].'<br/>';
		$message .= 'IP address: '.$_SERVER['REMOTE_ADDR'].'<br/><br/>';
		$message .= $contact['message'].PHP_EOL;
		mail($instance->website['email'], $contact['subject'], '<html><body>'.$message.'</body></html>', $headers);
		$alert->add('success','Your message was successfully sent. I will be in contact with you shortly');
		$contact['subject'] = '';
		$contact['message'] = '';
	}
}
if($alert->amount()>0){
	$alert->get();
}
?>

<div class="col-md-12 bg-1">
		<h2>Message</h2>
		<p>Complete the form below to send a message.</p>

		<form name="contact" id="contact" method="post" enctype="multipart/form-data">

			<fieldset class="form-group">
				<label for="name">Full Name:</label>
				<input name="contact[name]" id="name" value="<?php echo $contact['name'];?>" class="form-control" placeholder="Enter name" aria-required="true"/>
			</fieldset>

			<fieldset class="form-group">
				<label for="email">Email Address:</label>
				<input name="contact[email]" id="email" value="<?php echo $contact['email'];?>" type="email" class="form-control"  placeholder="Enter email" aria-required="true"/>
			</fieldset>

			<fieldset class="form-group">
				<label for="subject" style="display: block;">Subject:<div style="float:right">(optional)</div> </label>
				<input name="contact[subject]" id="subject" value="<?php echo $contact['subject'];?>" class="form-control" placeholder="Enter subject"/>
			</fieldset>

			<fieldset class="form-group">
				<label for="message">Message:</label>
				<textarea name="contact[message]" id="message" class="form-control" placeholder="Enter message" aria-required="true"><?php echo $contact['message'];?></textarea>
			</fieldset>

			<fieldset class="form-group">
				<label for="norobot">Security Code:</label>
				<br/>
				<img src="<?php echo $instance->href('images/captcha/norobot.png');?>" alt="security key"/>
				<input name="norobot" id="norobot" class="form-control" placeholder="Enter security code" aria-required="true"/>
				<small class="text-muted">Case-sensitive</small>
			</fieldset>
			<input type="submit" class="btn btn-lg" name="command" title="Send"/>
		</form>
</div>
