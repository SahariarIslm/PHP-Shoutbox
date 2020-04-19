<?php 
	include 'classes/Shout.php';
	$shout = new Shout();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Basic Shout Box</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
 <div class="wrapper clr">
 	<header class="headersection clr">
 		<h2>Basic Shoutbox with php oop & mysqli</h2>
 	</header>
 	<section class="content clr">
 		<div class="box">
 			<ul>
 				<?php 
 					$getdata = $shout->getAlldata();
 					if ($getdata) {
 						while ($data = $getdata->fetch_assoc()) { ?>
 				<li>
 					<span><?php echo $data['time']; ?></span> - <b><?php echo $data['name']; ?></b> <?php echo $data['body']; ?>
 				</li>
 				<?php } } ?>
 			</ul>
 		</div>



 		<?php if ($_SERVER['REQUEST_METHOD']=='POST') {
 			$shoutdata = $shout->insertData($_POST);
 		} ?>
 		<div class="shoutform clr">
 			<form action="#" method="post">
 				<table>
 				<tr>
 					<td>Name</td>
 					<td>:</td>
 					<td><input type="text" name="name" placeholder="please enter your name" required></td>
 				</tr>
 				<tr>
 					<td>Body</td>
 					<td>:</td>
 					<td><input type="text" name="body" placeholder="please enter your text"  required></td>
 				</tr><tr>
 					<td></td>
 					<td></td>
 					<td><input type="submit" value="shout it" required></td>
 				</tr>
 				</table>
 			</form>
 			
 		</div>
 	</section>
 	<footer class="footsection clr">
 		<h2>&copy; Copyright Plumeria Yellow</h2>
 	</footer>
 </div>
</body>
</html>
