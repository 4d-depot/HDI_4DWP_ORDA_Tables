//%attributes = {"invisible":true}

//C_PICTURE($0)
//C_LONGINT($1)

//C_TEXT($timestamp)
//C_LONGINT($p; $rotate)
//C_LONGINT($option)
//C_TEXT($svg; $rect; $svgText; $color)
//C_PICTURE($picture)

//$option:=$1

//$timestamp:=Timestamp
//$p:=Position("T"; $timestamp)
//$timestamp:=Substring($timestamp; 1; $p-1)+Char(Carriage return)+Substring($timestamp; $p)

//$color:="RGB($r,$g,$b)"
//$color:=Replace string($color; "$r"; String((Random%100)+100))
//$color:=Replace string($color; "$g"; String((Random%100)+100))
//$color:=Replace string($color; "$b"; String((Random%100)+100))


//If ($option=0)

//$svg:=SVG_New(180; 100)
//$rect:=SVG_New_rect($svg; 0; 0; 180; 100)
//SVG_SET_STROKE_WIDTH($rect; 4)
//SVG_SET_STROKE_BRUSH($rect; "darkBlue")
//SVG_SET_FILL_BRUSH($rect; "lightBlue")

//$svgText:=SVG_New_textArea($svg; $timestamp; 0; 20; 180; 80; "times"; 24; Bold; 3)
//SVG_SET_FILL_BRUSH($svgText; "darkBlue")

//Else 

//$svg:=SVG_New(400; 400)
//$rect:=SVG_New_rect($svg; 80; 120; 240; 160)
//SVG_SET_STROKE_WIDTH($rect; 4)
//SVG_SET_STROKE_BRUSH($rect; $color)

//$svgText:=SVG_New_textArea($svg; $timestamp; 80; 160; 240; 80; "times"; 28; Bold; 3)


//SVG_SET_FILL_BRUSH($svgText; $color)  //"grey")
////SVG_SET_OPACITY ($svgText;50)
//$rotate:=45-(Random%90)
//SVG_SET_TRANSFORM_ROTATE($svg; $rotate; 200; 200)

//End if 


//$picture:=SVG_Export_to_picture($svg)

//CONVERT PICTURE($picture; ".png")

//$0:=$picture

