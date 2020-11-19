<div class="search-box">
    <form action="./index.php" method="post">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
      
    </form>
  </div>

  <?php
    
    if (!empty($_POST['search'])) {
       $countryString = $_POST['search'];
       $countries = getCountriesBySearch($countryString,$conn);
    }