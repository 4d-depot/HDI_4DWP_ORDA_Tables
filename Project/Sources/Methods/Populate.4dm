//%attributes = {"invisible":true}
//FakeData_ArraysInit


//$companyTemplate:=New object()
//$companyTemplate.name:="company"
//$companyTemplate.address:="address"
//$companyTemplate.zipCode:="zipCode"
//$companyTemplate.city:="city"
//$companyTemplate.phone:="phone"


//$peopleTemplate:=New object()
//$peopleTemplate.title:="title"
//$peopleTemplate.lastname:="lastname"
//$peopleTemplate.firstname:="firstname"
//$peopleTemplate.city:="city"
//$peopleTemplate.phone:="phone"
//$peopleTemplate.address:="address"
//$peopleTemplate.zipCode:="zipCode"

//For ($j; 1; 10)  // 10 companies

//$c:=ds.Company.new()
//FakeData_FillObjectTemplate($companyTemplate; $c)
//$c.save()

//For ($i; 1; 25+(Random%25))
//$p:=ds.People.new()
//FakeData_FillObjectTemplate($peopleTemplate; $p)

//$p.salary:=1500+(Random%1000)+((Random%50)/Pi)

//$p.worksFor:=$c

//$p.save()
//End for 

//End for 


//FakeData_ArraysDeinit

