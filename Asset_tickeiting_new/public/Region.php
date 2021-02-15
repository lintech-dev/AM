
<?php

include('conn.php');
//include('connect-string_PDO.php');
if(isset($_GET['term']))
{
	$return_arr = array();
	try
	{
		//$stmt = $conn->prepare('select fullname from masterdate_update where fullname like :term AND FLAG = 1');
		$stmt = $conn->prepare('select region_name from region_info where region_name like :term');
		$stmt->execute(array('term' => '%'.$_GET['term'].'%'));

		while($row = $stmt->fetch())
		{
			$return_arr[] =  $row['region_name'];
			
		}

	}
	catch(PDOException $e)
	{
		echo 'ERROR: ' .$e->getMessage();
	}

	echo json_encode($return_arr);
}
?>
