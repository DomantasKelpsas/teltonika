
<div class="paging">
<?php

if (!empty($_GET['start'])) {
    $page = $_GET['start'];
} else {
    $page = 0;
}

if ($page-4<0) {
    for ($i=0;$i<$page+4;$i++) {
        echo '<a href="index.php?start='.$i.'">'.($i+1).' </a>';
    }
    echo '<a>'."...".' </a>';
    echo '<a href="index.php?start='.($pageNums-1).'">'.$pageNums.' </a>';
} elseif ($page+3<$pageNums) {
    echo '<a href="index.php?start='.(1).'">'.(1).' </a>';
    echo '<a>'."...".' </a>';

    for ($i=$page-2;$i<$page;$i++) {
        echo '<a href="index.php?start='.$i.'">'.($i+1).' </a>';
    }
    for ($i=$page;$i<$page+2;$i++) {
        echo '<a href="index.php?start='.$i.'">'.($i+1).' </a>';
    }
    echo '<a>'."...".' </a>';
    echo '<a href="index.php?start='.($pageNums-1).'">'.$pageNums.' </a>';
} else {
    echo '<a href="index.php?start='.(1).'">'.(1).' </a>';
    echo '<a>'."...".' </a>';
    for ($i=$pageNums-4;$i<$pageNums;$i++) {
        echo '<a href="index.php?start='.$i.'">'.($i+1).' </a>';
    }
}
?>
</div>