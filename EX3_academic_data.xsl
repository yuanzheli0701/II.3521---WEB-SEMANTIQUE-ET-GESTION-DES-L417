```xml
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Academic Course Catalogue</title>
            </head>

            <body>
                <h1>Academic Course Catalogue</h1>

                <table border="1">
                    <tr>
                        <th>Code</th>
                        <th>Title</th>
                        <th>Credits</th>
                        <th>Professor</th>
                    </tr>

                    <xsl:for-each select="courses/course">
                        <tr>
                            <td>
                                <xsl:value-of select="@code"/>
                            </td>

                            <td>
                                <xsl:value-of select="title"/>
                            </td>

                            <td>
                                <xsl:value-of select="@credits"/>
                            </td>

                            <td>
                                <xsl:value-of select="professor"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
```
