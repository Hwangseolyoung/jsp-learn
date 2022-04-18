<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 명시된 attribute외에 다른 attribute 사용시 
key, value 쌍으로 Map에 넣어주면된다(dynamic-attributes 지시자) -->
<%@ tag dynamic-attributes="attrs"%>
<%@ attribute name="attr1"%>

<div>
	attr1 : ${attr1 }
</div>

<!-- el에 Map 사용하는 방법과 동일하게 사용하면 된다.  -->
<div>
	attr2 : ${attrs.attr2 }
</div>

<div>
	other : ${attrs.other }
</div>