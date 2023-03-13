<?php
session_start();

$lang = isset($_POST['lang']) ? $_POST['lang'] : 'en';
$pageTmp =isset($_GET['page']) ? $_GET['page'] : 'cv.html';
if($lang === 'en'){        
     $page='en/'.$pageTmp;
   
}else if($lang === 'fr') { 

    $page='fr/'.$pageTmp;
    echo $page;
}
else if($lang === 'es') { 

    $page='es/'.$pageTmp;
}
header("Location:".$page.'?page='.$pageTmp);
//transform($page,$lang);

function transform($xmlFile,$lang){

// Replace the file extension with '.xml'
$xmlFileName = str_replace('.html', '.xml', $xmlFile);


// Load the XML and XSLT files
$xml = new DOMDocument();
$xml->load($xmlFileName);
$xsl = new DOMDocument();

if($xmlFileName==='fr/portfolio.xml'||$xmlFileName==='en/portfolio.xml'|| $xmlFileName==='es/portfolio.xml' ){
    $pageName='portfolio.html'; 
     $xsl->load('xslt/portfolio1.xslt');
    }
else if($xmlFileName==='en/cv.xml' || $xmlFileName==='fr/cv.xml' || $xmlFileName==='es/cv.xml' ) { 
    $pageName='cv.html' ;
     $xsl->load('xslt/cv.xslt');};


     header("Location:".$pageName.'?page='.$pageName);



// Create an XSLT processor object
$processor = new XSLTProcessor();

// Set the XSLT stylesheet
$processor->importStylesheet($xsl);

// Set the value of the "lang" parameter
$processor->setParameter(null, "lang", $lang);

// Transform the XML document with the XSLT processor and parameters
$transformed = $processor->transformToXml($xml);
//$transformed = $processor->transformToXml($modifiedXmlDoc->documentElement);
echo "/n     Location:".$xmlFile.'?page='.$pageName;
    file_put_contents($xmlFile, $transformed);
    header("Location:".$xmlFile.'?page='.$pageName);

exit();
}
?>
