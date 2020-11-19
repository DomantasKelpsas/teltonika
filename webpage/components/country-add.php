

<form action="../db/country-add.php" method="post">
<p>
        <label for="country-name">Šalies pavadinimas:</label>
        <input type="text" name="country-name" id="country-name">
    </p>
    <p>
        <label for="area">Šalies plotas:</label>
        <input type="number" name="area" id="area">
    </p>
    <p>
        <label for="population">Šalies gyv. skaičius:</label>
        <input type="number" name="population" id="population">
    </p>
    <p>
        <label for="phonecode">Šalies Tel. kodas:</label>
        <input type="number" name="phonecode" id="phonecode">
    </p>
    <p>
        <label for="flag">Šalies vėliavos URL:</label>
        <input type="text" name="flag" id="flag">
    </p>
    <input type="submit" value="Įtraukti">
</form>