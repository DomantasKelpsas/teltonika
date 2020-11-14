
<div class="paging">
<?php
for($i=0;$i<$pageNums;$i++)
{
  $pageNum = $i +1;
  echo '<a href="index.php?start='.$i.'">'.$pageNum.' </a>';
}
?>
</div>