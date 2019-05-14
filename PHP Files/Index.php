
<html>
<head>
<meta charset="UTF-8">
	<title>Dateiupload</title>

</head>
<body>
<h1>Auf dieser Seite k&oumlnnen Sie Ihre Datei hochladen</h1>
<form action="DataUpload.php" method="Post" enctype="multipart/form-data">
<label>Geben Sie einen Namen der Aktivit&aumlt ein
    <input name="Inputname" type="text"  size="50"> 
  </label>
  <p>
  <label>Geben Sie an, wann Sie die Aktivit&aumlt aufgenommen haben 
    <input name="Inputdate" type="date" > 
  </label>
  <p>
  <label>Geben Sie die Bahnenl&aumle Ihrer Aktivit&aumlt ein
  <p> 
    <input type="radio" value="50" name="Auswahl"> 50m Bahn
    <p>
	<input type="radio" value="25" name="Auswahl"> 25m Bahn
  </label>
 <p>
  <label>W&aumlhlen Sie eine CSV.datei von Ihrem Rechner aus.
    <input name="Filename" type="file" size="50" accept="text/comma-separated-values"> 
  </label>
  <button>Dateiupload</button>
</form>

</body>
</html>
