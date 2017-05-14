<!DOCTYPE html>
<html>
% include('header.tpl', title='Page Title')

  <body>
% include('menu-top.tpl', title='Page Title')
<div class="bs-docs-header" id="content" tabindex="-1">
      <div class="container">
        <h1>速卖通八卦镜</h1>
        <p>速卖通八卦镜 为 速卖通平台赋予了“生命”。可以简单地完成大数据的管理分析。</p>

      </div>
    </div>
<div class="container bs-docs-container">


      <div class="row">
        <div class="col-md-9" role="main">
            % include('content.tpl', title='Page Title')

        </div>
   <div class="col-md-3" role="complementary">
% include('menu-right.tpl', title='Page Title')
        </div>

      </div>
    </div>



% include('footer.tpl', title='Page Title')
  </body>
</html>
