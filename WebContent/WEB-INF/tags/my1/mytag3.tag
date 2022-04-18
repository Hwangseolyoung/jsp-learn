<%@ tag language="java" pageEncoding="UTF-8"%>
<!-- jsp파일에서 사용할 커스텀 태그에 attribute를 명시해야 사용할 수 있다. --> 
<%@ attribute name="attr1" %>
<%@ attribute name="attr2" %>

<div>
	${attr1 }, ${attr2 }
</div>
