<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<portlet:renderURL var="viewURL">
	<portlet:param name="mvcPath" value="/html/guestbook/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL.toString() %>" name="<portlet:namespace />fm">
	
	<aui:fieldset>
	
		<aui:input name="name"></aui:input>
		<aui:input name="message"></aui:input>
	
	</aui:fieldset>
	
	<aui:button-row>
	
		<aui:button type="submit"></aui:button>
		<aui:button type="cancel" onClick="<%= viewURL.toString() %>"></aui:button>
	
	</aui:button-row>

</aui:form>