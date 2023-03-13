<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:schema="http://schema.org/"
    >
<xsl:param name="lang" select="'en'"/>
<xsl:variable name="page" select="'cv.html'" />
    <xsl:output method="html" version="5" encoding="UTF-8" indent="yes"/>
    <xsl:template match="html">
    <html>
        <xsl:apply-templates select="node()"/>
    </html>
</xsl:template>
    <!-- Root template -->
    <xsl:template match="/cv">
        <html>
            <head>
                 <xsl:choose>
                        <xsl:when test="$lang='en'">
                            <link rel="alternate" href="../fr/cv.html" hreflang="fr" />
                             <link rel="alternate" href="../es/cv.html" hreflang="es" />
                        </xsl:when>
                        <xsl:when test="$lang='fr'">
                            <link rel="alternate" href="../en/cv.html" hreflang="en" />
                             <link rel="alternate" href="../es/cv.html" hreflang="es" />
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            <link rel="alternate" href="../en/cv.html" hreflang="en" />
                             <link rel="alternate" href="../fr/cv.html" hreflang="fr" />
                        </xsl:when>
                    </xsl:choose>
                <script src="../script.js"></script>
                <link rel="stylesheet" href="../style/style.css"/>
                <title><xsl:value-of select="id/firstName"/> <xsl:value-of select="id/lastName"/></title>
            </head>
            <body>
                <header>
                <h1>
                    <a href="#">
                        <xsl:choose>
                            <xsl:when test="$lang='fr'">
                                CV de <xsl:value-of select="id/firstName"/> <xsl:value-of select="id/lastName"/>
                            </xsl:when>
                            <xsl:when test="$lang='en'">
                                <xsl:value-of select="id/firstName"/> <xsl:value-of select="id/lastName"/>'s CV
                            </xsl:when>
                            <xsl:when test="$lang='es'">
                                CV de <xsl:value-of select="id/firstName"/> <xsl:value-of select="id/lastName"/>
                            </xsl:when>
                        </xsl:choose>
                    </a>
                </h1>
                <nav>
                    <a href="portfolio.html">
                        <xsl:choose>
                            <xsl:when test="$lang='fr'">
                            Accueil
                            </xsl:when>
                            <xsl:when test="$lang='en'">
                            Home
                            </xsl:when>
                            <xsl:when test="$lang='es'">
                            Inicio
                            </xsl:when>
                        </xsl:choose>
                    </a>
                    <a href="#s1">
                    <xsl:choose>
                        <xsl:when test="$lang='fr'">
                           Compétences
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                           Skills
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            Habilidades
                            </xsl:when>
                       </xsl:choose>
                    </a>
                    <a href="#s2">
                    <xsl:choose>
                        <xsl:when test="$lang='fr'">
                           Formation
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                           Education
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            Formación
                            </xsl:when>
                        </xsl:choose>
                        </a>
                    <a href="#s3">Contact</a>
                    <div id="lang">
                                 <div class="language-picker js-language-picker" data-trigger-class="btn btn--subtle">
                                        <form action="../index.php?page=cv.html" method="post" id="language-select" class="language-picker__form">
                                            <select name="lang" id="language-picker-select" onchange="submitForm()">
                                            <option value="" selected="selected" style="display:none;">Lang</option>
                                                <option lang="en" value="en">English</option>
                                                <option lang="fr" value="fr">Français</option>
                                                <option lang="es" value="es">Espagnol</option>
                                            </select>
                                        </form>
                                    </div>
                                   </div> 
                </nav>
                </header>
                <section id="s1">
                    <div id="intro" typeof="schema:Person">
                        <h1 property="schema:name">
                            <strong property="schema:jobTitle">
                            <xsl:choose>
                                <xsl:when test="$lang='fr'">
                           Développeur Web Full Stack et Web Designer
                        </xsl:when>
                        <xsl:when test="$lang='en'">
                           Full-Stack Web Developer And Web Designer
                        </xsl:when>
                        <xsl:when test="$lang='es'">
                            Desarrollador Web Full Stack y Diseñador Web
                            </xsl:when>
                        </xsl:choose>
                        </strong>
                            <xsl:value-of select="id/firstName"/> <xsl:value-of select="id/lastName"/></h1>
                        <div property="schema:description">
                            <xsl:apply-templates select="about/information"/>
                        </div>
                    </div>
                        <div id="contenu">
                        <div id="principal"><h3 property="cv:sectionTitle">
                                    <xsl:choose>
                                    <xsl:when test="$lang='fr'">
                                        Mes Compétences
                                    </xsl:when>
                                    <xsl:when test="$lang='en'">
                                        My Skills
                                    </xsl:when>
                                    <xsl:when test="$lang='es'">
                                        Habilidades
                            </xsl:when>
                                </xsl:choose>
                                </h3>
                            <div class="competences" property="schema:hasSkill" typeof="cv:Skills">
                                <ul>
                                        <xsl:apply-templates select="skills/languages/langage"/>
                                </ul>
                            </div>
                            <table>
                                            <thead>
                                            <tr><th>
                                            <xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                             Compétences
                                             </xsl:when><xsl:when test="$lang='en'">
                                         Skills
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                            habilidades
                            </xsl:when>
                            </xsl:choose>
                            </th>
                                                <th><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                             Compétences
                                             </xsl:when><xsl:when test="$lang='en'">
                                         Skills
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                            Habilidades
                            </xsl:when>
                            </xsl:choose></th>
                                                <th>HTML</th>
                                                <th>CSS</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Structure du site web
                                             </xsl:when><xsl:when test="$lang='en'">
                                             Web Site's Structure
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                        Desarrollador Web Full Stack y Diseñador Web
                            </xsl:when>
                            </xsl:choose>  </td>
                                                    <td class="centre oui"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Oui
                                             </xsl:when><xsl:when test="$lang='en'">
                                             Yes
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       Si
                            </xsl:when>
                            </xsl:choose></td>
                                                      <td class="centre non"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Non
                                             </xsl:when><xsl:when test="$lang='en'">
                                             No
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       No
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                                <tr>
                                                    <td><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                            page layout
                                             </xsl:when><xsl:when test="$lang='en'">
                                         Page 
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                            Diseño de página
                            </xsl:when>
                            </xsl:choose></td>
                                                    <td class="centre non"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Non
                                             </xsl:when><xsl:when test="$lang='en'">
                                             No
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       No
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                                <tr>
                                                    <td><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                             Ergonomie
                                             </xsl:when><xsl:when test="$lang='en'">
                                             Egromomy
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                                        Ergonomía
                            </xsl:when>
                            </xsl:choose></td>
                                                   <td class="centre non"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Non
                                             </xsl:when><xsl:when test="$lang='en'">
                                             No
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       No
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                                <tr>
                                                    <td><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                             Accessibilité
                                             </xsl:when><xsl:when test="$lang='en'">
                                         Accessibility
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                            Accesibilidad
                            </xsl:when>
                            </xsl:choose></td>
                                                   <td class="centre non"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Non
                                             </xsl:when><xsl:when test="$lang='en'">
                                             No
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       No
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                                <tr>
                                                    <td><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                             Référencement
                                             </xsl:when><xsl:when test="$lang='en'">
                                         SEO
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                            SEO
                            </xsl:when>
                            </xsl:choose></td>
                                                   <td class="centre non"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                              Non
                                             </xsl:when><xsl:when test="$lang='en'">
                                             No
                                         </xsl:when>
                                         <xsl:when test="$lang='es'">
                                       No
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="3" class="centre"><xsl:choose>
                                            <xsl:when test="$lang='fr'">
                                            HTML et CSS se combinent pour un site web correctement construit.
                                             </xsl:when><xsl:when test="$lang='en'">
                                         HTML and CSS combine to build a properly constructed website.
                                         </xsl:when>
                                         <xsl:when test="$lang='en'">
                           HTML y CSS se combinan para construir un sitio web correctamente.
                            </xsl:when>
                            </xsl:choose></td>
                                                </tr>
                                            </tfoot>
                        </table>
                        </div>
                    </div>
                        </section>
                        <section id="s2">
                        <div id="intro">
                        </div>
                        <div id="contenu">
                            <div id="principal">
                            <h2>
                            <xsl:choose>
                                    <xsl:when test="$lang='fr'">
                                        Formation
                                    </xsl:when>
                                    <xsl:when test="$lang='en'">
                                        Education
                                    </xsl:when>
                                </xsl:choose></h2>
                            <div class="experience">
                                <xsl:apply-templates select="education/formation"/>
                            </div>
                            <h2><xsl:choose>
                                    <xsl:when test="$lang='fr'">
                                        Mes Projets
                                    </xsl:when>
                                    <xsl:when test="$lang='en'">
                                        My Projects
                                    </xsl:when>
                                    <xsl:when test="$lang='es'">
                                        Mis proyectos
                                    </xsl:when>
                                </xsl:choose></h2>
                            <div class="experience">
                                <xsl:apply-templates select="education/projects/project"/>
                            </div>
                        </div>
                        </div>
                            
                    </section>
                    <section id="s3">
                            <div id="intro"><p/>
                            <h2><xsl:choose>
                                    <xsl:when test="$lang='fr'">
                                        Centre d'interet
                                    </xsl:when>
                                    <xsl:when test="$lang='en'">
                                        Interests
                                    </xsl:when>
                                    <xsl:when test="$lang='es'">
                                        Intereses
                                    </xsl:when>
                                </xsl:choose></h2>
                            <ul>
                                <xsl:apply-templates select="education/interests"/>
                            </ul>
                            </div>
                            <div id="contenu">
                              <div id="principal">
                                <ul>
                                    <li>
                                        <a property="schema:email" href="mailto:{mail}">
                                            <xsl:value-of select="contact/mail"/>
                                        </a>
                                    </li>
                                    <li>
                                        <a property="schema:url" href="{linkedIn}">
                                        <xsl:value-of select="contact/linkedIn"/>
                                        </a>
                                    </li>
                                    <li>
                                        <div property="schema:address" typeof="schema:PostalAddress">
                                            <span property="schema:streetAddress">
                                                <xsl:value-of select="contact/adress/street"/>
                                            </span>
                                            <span property="schema:postalCode">
                                                <xsl:value-of select="contact/adress/code"/>
                                            </span>
                                            <span property="schema:addressLocality">
                                                <xsl:value-of select="contact/adress/city"/>
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                                </div>
                            </div>
                    </section>
                    <footer><p> par TAHRI</p> </footer>
                                
            </body>
</html>
  </xsl:template>
<xsl:template match="about/information">
    <p><xsl:value-of select="."/></p>
</xsl:template>

<!-- Templates for displaying language skills -->
<xsl:template match="skills/languages/langage">
    <xsl:for-each select=".">
                    <p  typeof="cv:Skill" property="cv:name">
                        <xsl:value-of select="name"/>
                    </p>
    
    <div class="barre">
    <div class="fond" property="cv:name">
        <xsl:attribute name="style">
            <xsl:text>width:</xsl:text>
            <xsl:value-of select="level"/>
            <xsl:text>;</xsl:text>
        </xsl:attribute>
    </div>
</div>

 </xsl:for-each>
</xsl:template>

<!-- Templates for displaying education information -->
<xsl:template match="education/formation">
    <li>
        <span property="schema:startDate"><xsl:value-of select="date/start"/></span> - 
        <span property="schema:endDate"><xsl:value-of select="date/end"/></span>: 
        <span property="schema:headline"><xsl:value-of select="school"/></span>, 
        <span property="schema:location"><xsl:value-of select="location"/></span>, 
        <span property="schema:description"><xsl:value-of select="description"/></span>
    </li>
</xsl:template>

<!-- Templates for displaying project information -->
<xsl:template match="education/projects/project">
    <li>
        <span property="schema:name"><xsl:value-of select="title"/></span> - 
        <span property="schema:startDate"><xsl:value-of select="date/start"/></span> - 
        <span property="schema:endDate"><xsl:value-of select="date/end"/></span>: 
        <span property="schema:description"><xsl:value-of select="description"/></span>
    </li>
</xsl:template>

<!-- Templates for displaying interests -->
<xsl:template match="education/interests">
    <li><xsl:value-of select="."/></li>
</xsl:template>
</xsl:stylesheet>
       
