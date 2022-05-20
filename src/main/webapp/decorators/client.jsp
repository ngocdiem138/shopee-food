<%@ page contentType='text/html;charset=UTF-8' %>
<%@include file='/commons/taglib.jsp' %>
<!DOCTYPE>
<html>
<head>
    <meta charset='UTF-8' content=''>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'/>
    <link href='<c:url value='/templates/web/header/css/header_style.css'/>' rel='stylesheet' type='text/css'>
    <link href='<c:url value='/templates/web/header/css/header_responsive.css'/>' rel='stylesheet' type='text/css'>
    <script src='<c:url value='/templates/web/header/js/header.js'/>'></script>
    <title><dec:title default='Home'/></title>
    <dec:head/>
</head>
<body>

<%@ include file='/commons/client/header.jsp' %>

<dec:body/>

<%@ include file='/commons/client/footer.jsp' %>

</body>
</html>
