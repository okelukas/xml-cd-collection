<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/albums">


        <html>
            <head>
                <title>a random cd collection</title>
                <link rel="stylesheet" type="text/css" href="styles.css" />

            </head>
            <body>
                <div class="box">
                    <h2>A random CD Collection for a Lonely Island</h2>
                    <table border="1" class="table">
                        <tr>
                            <th style="text-align:left">Title</th>
                            <th style=" text-align:left">Artist</th>
                            <th style=" text-align:left">Date</th>
                            <th style=" text-align:left">Cover</th>
                        </tr>
                        <xsl:for-each select="album">
                            <tr>
                                <td>
                                    <xsl:value-of select=" title" />
                                </td>
                                <td>
                                    <xsl:value-of select=" artist" />
                                </td>
                                <td>
                                    <xsl:value-of select=" @publication" />
                                </td>
                                <td class="one_hundred_pix">
                                    <img
                                        src="resources/{title}.jpg" />
                                </td>


                            </tr>
                        </xsl:for-each>

                    </table>

                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>