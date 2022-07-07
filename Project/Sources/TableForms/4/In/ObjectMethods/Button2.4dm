$ds:=ds:C1482.Company.all()
$n:=$ds.length

$c:=$ds[Random:C100%$n]
WP SET DATA CONTEXT:C1786([Templates:4]wp:3; New object:C1471("company"; $c))
WP COMPUTE FORMULAS:C1707([Templates:4]wp:3)

