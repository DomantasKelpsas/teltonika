<div class="search-container">
    <form action="./index.php" method="post">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>

  <?php
    
    if (!empty($_POST['search'])) {
        $countryString = $_POST['search'];
        $getCountriesByString = $conn->prepare("SELECT * FROM country WHERE country.name LIKE \"%$countryString%\"");
        $getCountriesByString->execute();
        $countries = $getCountriesByString->fetchAll();
        $countries;
    }