#? stdtmpl | standard
#import ../../src/basolato/view
#import header
#proc baseHtml*(auth:Auth, content:string): string =
<html>
  <head>
    ${header()}
  </head>
  <body>
    <div class="page-header">
      <div class="flex">
        #if auth.isLogin:
          <p class="top-menu">Login: ${auth.get("login_name")}</p>
          <a href="/logout" class="top-menu"><span class="glyphicon glyphicon-log-out"></span></a>
          <a href="/posts/create" class="top-menu right"><span class="glyphicon glyphicon-plus"></span></a>
        #else:
          <a href="/signUp" class="top-menu"><span class="glyphicon glyphicon-user"></span></a>
          <a href="/login" class="top-menu"><span class="glyphicon glyphicon-log-in"></span></a>
        #end if
      </div>
      <h1><a href="/posts">Basolato sample blog</a></h1>
    </div>
    <div class="content container">
      <div class="row">
        <div class="col-md-8">
          ${content}
        </div>
      </div>
    </div>
  </body>
</html>
