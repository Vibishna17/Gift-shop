<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table,td{
                        
                        border: 3px solid black;
                        border-collapse: collapse;
                        text-align: center;
                        margin-left:450px;
                        margin-top:45px;
                        padding:40px;
                    }
                    th{
                        background-color:olivedrab;
                        border:3px solid black;
                          padding: 50px;
                    }
                       
                    h2{
                    text-align:center;
                    color: mediumpurple;
                    }

                </style>
            </head>
            <body>
                <h2> ORDER DETAILS</h2>
                <table >
                    <tr >
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Price</th>
                        <th style="text-align:left">Chef</th>
                        <th style="text-align:left">Status</th>
                    </tr>
                    <xsl:for-each select="cakeorder/order">
                        <xsl:sort select="name"/>
                        
                        <tr>
                            
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <xsl:choose>
                            
                            <xsl:when test="price&gt;600">
                            <td bgcolor="red">
                                <xsl:value-of select="price"/>
                            </td>
                        </xsl:when>
                            <xsl:otherwise>
                                <td>
                                <xsl:value-of select="price"/>
                                </td>
                            </xsl:otherwise>
                      
                    </xsl:choose>
                            <td>
                                <xsl:value-of select="baker"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="status='Delivered'">
                                    <td bgcolor="blue">
                                        <xsl:value-of select="status"/>

                                     </td> 
                                    </xsl:when>
                                    <xsl:otherwise> 
                           
                            <td>
                                <xsl:value-of select="status"/>
                            </td>
                        </xsl:otherwise>
                        </xsl:choose>
                        </tr>
                     
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>