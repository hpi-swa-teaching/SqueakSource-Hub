css-rendering
renderStyleCodeTabsOn: aStream

	aStream
		nextPutAll: '/* ================================================================ 
This copyright notice must be untouched at all times.

The original version of this stylesheet and the associated (x)html
is available at http://www.cssplay.co.uk/menu/one_page.html
Copyright (c) 2005-2007 Stu Nicholls. All rights reserved.
This stylesheet and the assocaited (x)html may be modified in any 
way to fit your requirements.
=================================================================== */';
	"/* set up the overall width of the menu div, the font and the margins with a relative position*/"
		nextPutAll: '.codetab {';
		nextPutAll:	'position:relative;';
		nextPutAll:	'z-index:100;';
		nextPutAll:	'}';
	"/* remove the bullets and set the margin and padding to zero for the unordered list */"
		nextPutAll: '.codetab ul {';
		nextPutAll:	'padding:0;';
		nextPutAll:	'margin:0;';
		nextPutAll:	'list-style: none;';
		nextPutAll:	'border:0;';
		nextPutAll: '}';
		nextPutAll: '.codetab ul table {border-collapse:collapse; margin:-1px -10px; font-size:1em;}';
		"/*float the list so that the items are in a line */"
		nextPutAll: '.codetab ul li {';
		nextPutAll:	'float:left;';
		nextPutAll: '}';
		nextPutAll: '.codetab ul li a, .codetab ul li a:visited {';
		nextPutAll:	'display:block;';
		nextPutAll:	'text-align:center;';
		nextPutAll:	'text-decoration:none;';
		nextPutAll:	'font-weight: bold;';
		nextPutAll:	'padding: 0 2em;';
		nextPutAll:	'height:30px;';
		nextPutAll:	'color:#000;';
		nextPutAll:	'border:1px solid #fff;';
		nextPutAll:	'border-width:1px 1px 0 0;';
		nextPutAll:	'background:#E8EBF0;';
		nextPutAll:	'line-height:30px;';
		nextPutAll:	'font-size:12px;';
		nextPutAll: '}';
		"/* make the dropdown ul invisible */"
		nextPutAll: '.codetab ul ul {';
		nextPutAll:	'position:absolute; left:-9999px; height:0;';
		nextPutAll: '}';
		"/* set the background and foreground color of the main codetab items on hover */"
		nextPutAll: '.codetab ul li a:hover,';
		nextPutAll: '.codetab ul li:hover a {';
		nextPutAll:	'color:#fff;';
		nextPutAll:	'background: #666;';
		nextPutAll: '}';
		"/* make the sub codetab ul visible and position it beneath the first list item */"
		nextPutAll: '.codetab ul :hover ul {';
		nextPutAll:	'top:30px; ';
		nextPutAll:	'height:auto;';
		nextPutAll:	'left:0;';
		nextPutAll:	'text-align:left;';
		nextPutAll:	'z-index:100;';
		nextPutAll:'}';
		"/* make the sub codetab ul li the full width with padding and border. Add an auto scroll bar */"
		nextPutAll:'.codetab ul :hover ul li {';
		nextPutAll:	'background:#E8EBF0; ';
		nextPutAll:	'color:#000;';
		nextPutAll:	'padding: .7em 1.5em;';
		nextPutAll:	'width: auto;';
		nextPutAll:	'min-width: 200px;';
		nextPutAll:	'overflow:auto;';
		nextPutAll:	'border:5px solid #666;';
		nextPutAll:	'}';
		space