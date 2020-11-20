
<div class="paging">
<?php

if (!empty($_GET['start'])) {
    $page = $_GET['start'];
} else {
    $page = 0;
}
if (isset($_GET['sortby'])) {
    $sortby = $_GET['sortby'];
}
else{
    $sortby = "nameASC";
}

$paginglink = '<a href="index.php?sortby='.$sortby.'&start=';

if ($page-4<0) {
    for ($i=0;$i<$page+4;$i++) {
        echo $paginglink.$i.'">'.($i+1).' </a>';
    }
    echo '<a>'."...".' </a>';
    echo $paginglink.($pageNums-1).'">'.$pageNums.' </a>';
} elseif ($page+3<$pageNums) {
    echo $paginglink.(1).'">'.(1).' </a>';
    echo '<a>'."...".' </a>';

    for ($i=$page-2;$i<$page;$i++) {
        echo $paginglink.$i.'">'.($i+1).' </a>';
    }
    for ($i=$page;$i<$page+2;$i++) {
        echo $paginglink.$i.'">'.($i+1).' </a>';
    }
    echo '<a>'."...".' </a>';
    echo $paginglink.($pageNums-1).'">'.$pageNums.' </a>';
} else {
    echo $paginglink.(1).'">'.(1).' </a>';
    echo '<a>'."...".' </a>';
    for ($i=$pageNums-4;$i<$pageNums;$i++) {
        echo $paginglink.$i.'">'.($i+1).' </a>';
    }
}
?>
</div>