<?php //PHP 5.3.15 ?>
<?php //PHP 5.6.1 ?>
<?php //PHP 7.4.2 ?>
<?php
$summ=0;
for($item = 0; $item < 1000; $item++) {
  if ($item % 3 == 0 or $item % 5 == 0) {
    $summ += $item;
  }
}

echo "$summ";
?>
