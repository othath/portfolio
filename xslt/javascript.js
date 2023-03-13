$.ajax({
    url: "en/portfolio.xml",
    dataType: "text",
    success: function(xml) {
      // Store the XML file contents in a textarea element
      $("#xml-doc").val(xml);
    }
  });
  
  $.ajax({
    url: "portfolio.xslt",
    dataType: "text",
    success: function(xslt) {
      // Store the XSLT file contents in a textarea element
      $("#xslt-doc").val(xslt);
    }
  });
<script>
<link id="xslt-doc" rel="stylesheet" type="text/xml" href="/xslt/portfolio.xslt"></link> 
 var xml = document.getElementById("xml-doc").value;
  var xslt = document.getElementById("xslt-doc").value;
function transform(lang) {
  // Create an XSLT processor object
  var processor = new XSLTProcessor();

  // Load the XSLT document
  var xsltDoc = new DOMParser().parseFromString(xslt, "text/xml");
  processor.importStylesheet(xsltDoc);

  // Create a parameter object and add the selected language
  var params = new Object();
  params.lang = lang;

  // Transform the XML document with the XSLT processor and parameters
  var resultDoc = processor.transformToDocument(new DOMParser().parseFromString(xml, "text/xml"), params);

  // Display the transformed result in the output element
  document.getElementById("output").innerHTML = new XMLSerializer().serializeToString(resultDoc);
  return null;
}
</script>
