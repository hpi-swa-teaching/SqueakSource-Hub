css
navigationCss

	^ 
'.tabnav .navigation-options {
	clear: both;
	height: 4em;
	line-height: 4em;
	background-color: #ccc;
	background: -webkit-linear-gradient(top, #bbbbbb 0%, #d0d0d0 100%);
	background: -webkit-gradient(linear,left top, left bottom, color-stop(0%,#bbbbbb);  color-stop(100%,#d0d0d0));
	background: -o-linear-gradient(top, #bbbbbb 0%, #d0d0d0 100%);
	background: -moz-linear-gradient(top, #bbbbbb 0%, #d0d0d0 100%);
	background: -ms-linear-gradient(top, #bbbbbb 0%, #d0d0d0 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#BBBBBB'', endColorstr=''#D0D0D0'',GradientType=0 );
	background: linear-gradient(top, #bbbbbb 0%, #d0d0d0 100%);

	border-radius:			7px;
	-moz-border-radius:		7px;
	-o-border-radius:		7px;
	-webkit-border-radius:	7px;
}

.tabnav .navigation-options ul, 
.tabnav .navigation-options li	{
	display: inline;
	height: 4em;
	line-height: 4em;
	list-style-type : none;
	margin : 0;
	padding : 2px;
}


.tabnav .navigation-options a {
	letter-spacing: 1px;
	font-size: large;
	height: 4em;
    text-shadow: white 0 1px 0;
	border: none;
	padding : 0 10px;
    margin: 0 8px;
}

.tabnav .navigation-options a:active 
.tabnav .navigation-options a:link.active, 
.tabnav .navigation-options a:visited.active	{
    color: black;
    text-shadow: none;
}

.tabnav .navigation-options ul a:hover	{
    background-color: #aaa;
    padding-top: 10px;
    padding-bottom: 10px;
    border-radius:			5px;
	-moz-border-radius:		5px;
	-o-border-radius:		5px;
	-webkit-border-radius:	5px;
}

.tabnav .navigation-options .option-selected a {
	font-weight: bold;
    background-color: #eee;
    padding: 7px 7px;
    border-top: 1px solid #999;
    border-left: 1px solid #999;
    border-bottom: 1px solid #fff;
    border-right: 1px solid #fff;   
    border-radius:			5px;
	-moz-border-radius:		5px;
	-o-border-radius:		5px;
	-webkit-border-radius:	5px;

}

.tabnav .navigation-options .option-selected a:hover {
    background-color: #eee;
    padding-top: 7px;
    padding-bottom: 7px;
}

.tabnav .navigation-options .option-selected a {
	color : #000;
}

.tabnav .navigation-content {
	border-top : none;
	clear : both;
	margin : 0px;
	padding : 2px 15px 15px;
	line-height: 1.1;  /* IE6 CSS workaround - http://www.dracos.co.uk/web/css/ie6floatbug/ */
}


#contents .navigation-content .magritte h1 {
	margin-top: 1em;
    font-size: 24px;
}
'