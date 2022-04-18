<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="num1"%>
<!-- 표준 태그 라이브러리처럼 필수 attribute 지정할 수 있다. -->
<!-- required="false"가 기본 값이다. -->
<%@ attribute name="num2" required="true"%>

<div>
	${num1 } + ${num2 } = ${num1 + num2 }
</div>
