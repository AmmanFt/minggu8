<html>
<head>
	<title>Membuat Pagination</title>
</head>
<body>
<h1>Membuat Trigger hapus data dan Pagination | Amman Fathoni A22.2018.02715 </h1>
	<table border="1">
		<tr>
			<th>no</th>
			<th>nama</th>
			<th>alamat</th>
			<th>pekerjaan</th>		
		</tr>
		<?php 
		$no = $this->uri->segment('3') + 1;
		foreach($user as $u){ 
		?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $u->nama ?></td>
			<td><?php echo $u->alamat ?></td>
			<td><?php echo $u->pekerjaan ?></td>
		</tr>
	<?php } ?>
	</table>
	<br/>
	<?php 
	echo $this->pagination->create_links();
	?>
</body>
</html>