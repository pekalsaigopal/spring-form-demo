<%--
  Created by IntelliJ IDEA.
  User: saigopal
  Date: 24/11/20
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h1>Registration</h1>
    <div>
        <form:form modelAttribute="user">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstName" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td>Subscribe to newsletter?:</td>
                        <%-- Approach 1: Property is of type java.lang.Boolean --%>
                    <td><form:checkbox path="preferences.receiveNewsletter"/></td>
                </tr>
                <tr>
                    <td>Interests:</td>
                    <td>
                            <%-- Approach 2: Property is of an array or of type java.util.Collection --%>
                        Quidditch: <form:checkbox path="preferences.interests" value="Quidditch"/>
                        Herbology: <form:checkbox path="preferences.interests" value="Herbology"/>
                        Defence Against the Dark Arts: <form:checkbox path="preferences.interests"
                                                                      value="Defence Against the Dark Arts"/>
                    </td>
                </tr>
                <tr>
                    <td>Activities:</td>
                    <td>
                            <%-- Property is of an array or of type java.util.Collection --%>
                        <form:checkboxes path="preferences.activities" items="${interestList}"/>
                    </td>
                </tr>
                <tr>
                    <td>Favourite Word:</td>
                    <td>
                            <%-- Approach 3: Property is of type java.lang.Object --%>
                        Magic: <form:checkbox path="preferences.favouriteWord" value="Magic"/>
                    </td>
                </tr>
                <tr>
                    <td>Sex:</td>
                    <td>Male: <form:radiobutton path="sex" value="M"/> <br/>
                        Female: <form:radiobutton path="sex" value="F"/> </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" value="Submit" />
                    </td>
                </tr>

            </table>
        </form:form>
    </div>
</body>
</html>
