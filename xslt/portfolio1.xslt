<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:prefix="http://www.w3.org/1999/xhtml/vocab#"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
xmlns:cv="http://rdfs.org/resume-rdf/cv.rdfs#" >
  <xsl:param name="lang" select="'en'"/>
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Match all elements and remove xmlns:prefixe attribute -->
  <xsl:template match="*">
    <xsl:element name="{local-name()}">
      <xsl:apply-templates select="@*[not(name() = 'xmlns:prefixe')] | node()"/>
    </xsl:element>
  </xsl:template>

    <!-- Portfolio -->
    <xsl:template match="portfolio">
        <html>
            <head>
                <script src="../script.js"></script>
                <xsl:choose>
                        <xsl:when test="$lang='en'">
                            <link rel="alternate" href="../fr/portfolio.html" hreflang="fr" />
                            <link rel="alternate" href="../es/portfolio.html" hreflang="es" />
                        </xsl:when>
                        <xsl:when test="$lang='fr'">
                            <link rel="alternate" href="../en/portfolio.html" hreflang="en" />
                            <link rel="alternate" href="../es/portfolio.html" hreflang="es" />
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            <link rel="alternate" href="../en/portfolio.html" hreflang="en" />
                            <link rel="alternate" href="../fr/portfolio.html" hreflang="fr" />
                        </xsl:when>
                    </xsl:choose>
                <link rel="stylesheet" href="../style.css"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>
                    <xsl:value-of select="id/firstName"/> 
                    <xsl:value-of select="id/lastName"/>
                     | FreeLancer </title>
            </head>
            
    <!-- Set the HTML vocabulary to Schema.org and define the current page as a Person entity -->
            <body vocab="http://schema.org/" typeof="Person" about="me">
            <section id="s1">
                <nav>  
                    <div class="logo">
                        <img  src="../images/logo1.png" alt=""/> 
                    </div> 
                   <div>
                   LANGUAGE : <xsl:value-of select='$lang'/>
                   </div>
                    <div class="navbar">
                        <xsl:choose>
                        <xsl:when test="$lang='en'">
                          <ul>
                            <li class="home">
                                <a href="#s1">HOME</a> 
                            </li>
                            <li class="bio">
                                <a href="#s2">BIO</a>
                            </li>
                            <li class="service">
                                <a href="#s3">SERVICE</a>
                            </li>
                            <li class="skills">
                                <a href="#s4">SKILLS</a>
                            </li>
                            <li class="cv">
                                <a href="cv.html">CV</a> 
                            </li>
                            <li class="lang">
                                <div class="js">
                                    <div class="language-picker js-language-picker" data-trigger-class="btn btn--subtle">
                                        <form action="../index.php?page=portfolio.html" method="post" id="language-select" class="language-picker__form">
                                            <select name="lang" id="language-picker-select" onchange="submitForm()">
                                            <option value="" selected="selected" style="display:none;">Lang</option>
                                                <option lang="en" value="en">English</option>
                                                <option lang="fr" value="fr">Français</option>
                                                <option lang="es" value="es">Espagnol</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </li>

                        </ul>
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                          <ul>
                            <li class="home">
                                <a href="#s1">Inicio </a> 
                            </li>
                            <li class="bio">
                                <a href="#s2">Biografía </a>
                            </li>
                            <li class="service">
                                <a href="#s3">Servicios </a>
                            </li>
                            <li class="skills">
                                <a href="#s4">Habilidades </a>
                            </li>
                            <li class="cv">
                                <a href="cv.html">CV</a> 
                            </li>
                            <li class="lang">
                                <div class="js">
                                    <div class="language-picker js-language-picker" data-trigger-class="btn btn--subtle">
                                        <form action="../index.php?page=portfolio.html" method="post" id="language-select" class="language-picker__form">
                                            <select name="lang" id="language-picker-select" onchange="submitForm()">
                                            <option value="" selected="selected" style="display:none;">Lang</option>
                                                <option lang="en" value="en">English</option>
                                                <option lang="fr" value="fr">Français</option>
                                                <option lang="es" value="es">Espagnol</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </li>

                        </ul>
                        </xsl:when>
                        <xsl:when test="$lang='fr'">
                            <ul>
                            <li class="home">
                                <a href="#s1">ACCUEIL</a> 
                            </li>
                            <li class="bio">
                                <a href="#s2">BIO</a>
                            </li>
                            <li class="service">
                                <a href="#s3">SERVICE</a>
                            </li>
                            <li class="skills">
                                <a href="#s4">COMPET</a>
                            </li>
                            <li class="contact">
                                <a href="#s5">CONTACT</a> 
                            </li>
                            <li class="cv">
                                <a href="cv.html">CV</a> 
                            </li>
                            <li class="lang">
                                <div class="js">
                                    <div class="language-picker js-language-picker" data-trigger-class="btn btn--subtle">
                                        <form action="../index.php?page=portfolio.html" method="post" id="language-select" class="language-picker__form">
                                            <select name="lang" id="language-picker-select" onchange="submitForm()">
                                            <option value="" selected="selected" style="display:none;">Lang</option>
                                                <option lang="en" value="en">English</option>
                                                <option lang="fr" value="fr">Français</option>
                                                <option lang="es" value="es">Espagnol</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        </xsl:when>
                    </xsl:choose>
                    </div>
                </nav>
                <div class="content" >
                    <p><xsl:choose>
                        <xsl:when test="$lang='fr'">
                            Salut,Je suis
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            HEY,IM :
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            Hola, soy:
                        </xsl:when>
                    </xsl:choose>
                    </p>
                    <p class="name" property="schema:name">
                            <xsl:value-of select="id/firstName"/>
                            <xsl:value-of select='$lang'/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="id/lastName"/>
                    </p>
                    <br/>
                    <p class="description" property="schema:description">
                        <xsl:value-of select="id/description"/>
                    </p>
                    <br/>
                </div>
                    <div class="learnMore"> 
                       <a class="learnMo" href="#s2">
                       <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            Plus de details
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            LEARN MORE
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            aprende más
                        </xsl:when>
                    </xsl:choose>
                </a>
                </div>
                <br/>
                <div class="FreeCons">
                   <a class="FreeCo" property="schema:email" href="mailto:{id/mail}">
                   <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            ConsultationGratuite
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            FreeConsultation
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            consultaGratuita
                        </xsl:when>
                    </xsl:choose>
                    </a>
                </div>
                <a href="#s2" class="arrowlink">
                    <div class="firstarrow"></div>
                    <div class="secondarrow"></div>
                </a>
            </section>
            <section id="s2">
                <h4>
                       <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            A PROPOS
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            ABOUT ME
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            sobre mí
                        </xsl:when>
                    </xsl:choose>
                </h4>
                <div class="about">    
                    <p class="aboutP" property="schema:about">
                        <xsl:for-each select="about/information">
                                <xsl:value-of select="."/>
                        </xsl:for-each>
                    </p>
                </div>
                <div class="image">
                    <img  src="../images/me2.png" alt=""/>
                </div>
                <a href="#s3" class="arrowlink1">
                    <div class="firstarrow1"> </div>
                    <div class="secondarrow1"></div>
                </a>
            </section>
            <section id="s3">
                <h1>
                    <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            Ce que je peux faire pour vous
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            What can I do for you!
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            ¿Qué puedo hacer por ti?
                        </xsl:when>
                    </xsl:choose>
                </h1>
                <xsl:for-each select="services/service">
                    <div class="service{position()}" typeof="Service">
                        <xsl:if test="position() = 1">
                            <img src="../images/web-design.png" alt=""/>
                        </xsl:if>
                        <xsl:if test="position() = 2">
                            <img src="../images/webdevelo.jpg" alt=""/>
                        </xsl:if>
                        <xsl:if test="position() = 3">
                            <img src="../images/support.jpg" alt=""/>
                        </xsl:if>
                        <div class="mask">
                        <h2 property="schema:name"><xsl:value-of select="name"/></h2>
                        <p property="schema:description">
                            <xsl:value-of select="description"/>
                            <a href="#" class="info">Read More</a>
                        </p>
                        </div>
                    </div>
                </xsl:for-each>
            </section>
            <section id="s4" typeof="cv:Skills">
                <h1 property="cv:sectionTitle">
                       <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            Mes Compétences
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            My Skills
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            mis habilidades
                        </xsl:when>
                    </xsl:choose>
                </h1>
                <div class="container">
                    <xsl:for-each select="skills/languages/langage">
                    <p class="p{name/text()}" typeof="cv:Skill" property="cv:name">
                        <xsl:value-of select="name"/>
                    </p>
                    <div class="ContainerSkills">
                        <div class="{name/text()}" property="cv:name">
                           <xsl:value-of select="level"/> 
                        </div>
                    </div>
                    </xsl:for-each>
                </div>  
            </section>
            <section id="s5">
                <p>
                <xsl:choose>
                        <xsl:when test="$lang='fr'">
                            Vous souhaitez créer votre site internet idéal ? Vous voulez entrer en contact ? Envoie-moi un email:
                            <a href="mailto:othmanetahri@websem.com"> othmanetahri@websem.com </a>
                            ou utilisez le formulaire ci-dessous !
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                            Do you want to create your ideal website? Want to get in touch? Send me an Email: 
                        <a href="mailto:othmanetahri@websem.com"> othmanetahri@websem.com </a>
                        or use the form below!
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            ¿Quieres crear tu sitio web ideal?  ¿Quieres ponerte en contacto?
                            <a href="mailto:othmanetahri@websem.com"> othmanetahri@websem.com </a>
                           Envíame un correo electrónico o utiliza el formulario de abajo!
                        </xsl:when>
                </xsl:choose>
                </p>             
                <form class="Send" action="afaire">
                    <div class="lbl">
                        <label for="name">
                        <xsl:choose>
                            <xsl:when test="$lang='fr'">
                                Nom
                            </xsl:when>
                            <xsl:when test="$lang='en'">
                                Name
                            </xsl:when>
                            <xsl:when test="$lang='es'">
                            Nombre
                        </xsl:when>
                        </xsl:choose>
                        </label>
                    </div>
                    <div class="inpt">
                        <input id="name" type="text" placeholder="Name" />
                        <br/>
                    </div>
                    <div class="lbl">
                        <label for="email">
                            <xsl:choose>
                            <xsl:when test="$lang='fr'">
                                Mail
                            </xsl:when>
                            <xsl:when test="$lang='en'">
                                E-mail
                            </xsl:when>
                            <xsl:when test="$lang='es'">
                            correo
                        </xsl:when>
                        </xsl:choose>
                        </label>
                    </div>
                    <div class="inpt">
                        <input id="email" type="email" placeholder="Email" />
                        <br/>
                    </div>
                    <div class="lbl">
                        <label for="subject">
                            <xsl:choose>
                            <xsl:when test="$lang='fr'">
                                Sujet
                            </xsl:when>
                            <xsl:when test="$lang='en'">
                                Subject
                            </xsl:when>
                            <xsl:when test="$lang='es'">
                            asunto
                        </xsl:when>
                        </xsl:choose>  
                        </label></div>
                        <div class="inpt">
                        <input id="subject" type="text" placeholder="Subject" />
                        <br/>
                    </div>
                    <div class="lbl">
                        <label for="msg">Message</label>
                    </div>
                    <div class="inpt">
                    <textarea id="msg" name="Message" placeholder="Write something.."></textarea>
                    </div>
                    <input class="Send" type="submit" value="Send"/> 
                    </form> 
            </section>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>