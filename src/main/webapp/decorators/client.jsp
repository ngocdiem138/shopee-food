<%@ page contentType='text/html' pageEncoding='UTF-8' %>
<%@ include file='/commons/taglib.jsp' %>

<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
    <meta charset='UTF-8' content=''>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link rel='stylesheet' type='text/css'
          href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'/>
    <link rel='stylesheet' type='text/css' href='<c:url value='/templates/web/header/header_style.css'/>'>
    <link rel='stylesheet' type='text/css' href='<c:url value='/templates/web/header/css/header_responsive.css'/>'>
    <script type='text/javascript'
            src='<c:url value='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'/>'></script>
    <script type='text/javascript' src='<c:url value='/templates/web/header/js/header.js'/>'></script>
    <title><dec:title default='Home'/></title>
    <dec:head/>
</head>
<body>

<%@ include file='/commons/client/header.jsp' %>

<dec:body/>

<%@ include file='/commons/client/footer.jsp' %>

</body>
</html>
