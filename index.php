<?php
session_start();

$lang = isset($_POST['lang']) ? $_POST['lang'] : 'en';
$pageTmp =isset($_GET['page']) ? $_GET['page'] : 'cv.html';
if($lang === 'en'){        
     $page='en/'.$pageTmp;
   
}else if($lang === 'fr') { 

    $page='fr/'.$pageTmp;
}
else if($lang === 'es') { 

    $page='es/'.$pageTmp;
    echo $page;
}
header("Location:".$page.'?page='.$pageTmp);

exit();
}
?>
