<?php 
include $_SERVER['DOCUMENT_ROOT']."/Box/lib/Database.php";

class Shout
{
	private $db;

	public function __construct()
	{
		$this->db = new Database;
	}
	public function getAlldata(){
		$query = "select * from tbl_box order by id desc";
		$result = $this->db->select($query);
		return $result;
	}
	public function insertData($data){
		$name = mysqli_real_escape_string($this->db->link,$data['name']);
		$body = mysqli_real_escape_string($this->db->link,$data['body']);
		date_default_timezone_set('Asia/Dhaka');
		$time = date('h:i:s a',time());
		$query = "insert into tbl_box(name,body,time) values('$name', '$body', '$time')";
		$this->db->insert($query);
		header("location:index.php");
	}
}

 ?>