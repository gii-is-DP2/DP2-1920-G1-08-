<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ attribute name="name" required="true" rtexprvalue="true"
              description="Name of corresponding property in bean object" %>
<%@ attribute name="label" required="true" rtexprvalue="true"
              description="Label appears in red color if input is considered as invalid after submission" %>
<%@ attribute name="max" required="false"
              description="Max value on the range" %>
<%@ attribute name="req" required="false"
              description="required value" %>

<spring:bind path="${name}">
    <c:set var="cssGroup" value="form-group ${status.error ? 'has-error' : '' }"/>
    <c:set var="valid" value="${not status.error and not empty status.actualValue}"/>
    <div class="${cssGroup}">
        <label class="col-sm-2 control-label">${label}</label>

		<c:if test="${empty req}" >
		 <c:set var="req" value="false" />
		</c:if>
        <div class="col-sm-10">
        	<c:choose>
        		<c:when test="${max != null}">
        			<form:input type="number" step="1" min="0" max="${max}" class="form-control" required="${req }" path="${name}"/>
        		</c:when>
        		<c:otherwise>
        			<form:input type="number" step="1" min="0"  class="form-control" path="${name}" required="${req }"/>
        		</c:otherwise>
        	</c:choose>

            <c:if test="${valid}">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            </c:if>
            <c:if test="${status.error}">
                <span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>
                <span class="help-inline">${status.errorMessage}</span>
            </c:if>
        </div>
    </div>
</spring:bind>
