<?php

if(isset($_GET['url']) and isset($_GET['h']))
{
	echo $_GET['url'];
	if (md5($_GET['url'])==$_GET['h'])
	{
		$List='https://facebook.com https://twitter.com https://slack.com';
		if (strpos($List, $_GET['url']) !== false)
		{			
			header('location:'.$_GET['url']);
		}
		else
		{
			echo 'Bravo BatmanestBruceWayne';
		}
	}
	
}

?>

<html><head>
        <title>HTTP - Open redirect</title>
</head>


<body><link rel="stylesheet" property="stylesheet" id="s" type="text/css" href="/template/s.css" media="all">
        <h1>Social Networks</h1>
<a href="?url=https://facebook.com&amp;h=a023cfbf5f1c39bdf8407f28b60cd134">facebook</a>
<a href="?url=https://twitter.com&amp;h=be8b09f7f1f66235a9c91986952483f0">twitter</a>
<a href="?url=https://slack.com&amp;h=e52dc719664ead63be3d5066c135b6da">slack</a>
<style type="text/css">
        body{
                text-align: center;
                font-family: arial;
        }

        a{
                color: #FFFFFF;
                text-decoration: none;
                text-transform: capitalize;
                padding: 8px;
                background-color: #1CB2D2;
                border-radius: 5px;
                width: 100px;
                display: inline-block;
        }
        a:hover{
                background-color: #3968A9;
        }

        #error{
                color: red;
                font-weight: bold;
        }

</style>



</body></html>