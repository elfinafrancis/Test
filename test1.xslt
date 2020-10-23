<?xml version="1.0" encoding="UTF-8"?>
<xslt:stylesheet version="1.0" xmlns:xslt="http://www.w3.org/1999/XSL/Transform">
	<xslt:template match="/">
		<html>
			<head>
				<style>
				div
            {
                text-align:center;
                margin: 1px;
            }
            
            h1, h2{
            text-align:center;
            }
                
                </style>
			</head>
			
			<body>
				<header>
					<h1>Employee Management System</h1>
				</header>
                <div class='Employee'>
                    <h2>List of Employees</h2>
                    <table border="1" width="60%" align="center">
                        <tr bgcolor="yellow">
                        	<th style="text-align:left">ID</th>
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">EmailID</th>
                            <th style="text-align:left">Phone No</th>
                            <th style="text-align:left">Designation</th>
                            <th style="text-align:left">Promotion</th>
                        </tr>
                        
                        <xslt:for-each select="EMS/Company/Employee">
                            <tr>
                            	<td>
                                    <xslt:value-of select="ID"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpName"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpAge"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpSalary"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpEmail"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpPhoneNo"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpDesignation"/>
                                </td>
                                <td>
                                    <xslt:value-of select="EmpPromotion"/>
                                </td>
                            </tr>
                        </xslt:for-each>
                    </table>
                </div>
			</body>
		</html>
	</xslt:template>
</xslt:stylesheet>