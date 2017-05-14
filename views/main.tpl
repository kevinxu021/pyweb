<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="title" content="LayoutIt! - Bootstrap可视化布局系统">
<meta name="description" content="LayoutIt! 可拖放排序在线编辑的Bootstrap可视化布局系统">
<meta name="keywords" content="可视化,布局,系统">
<title>Bootstrap可视化布局系统</title>

<!-- Le styles -->
<link href="css/bootstrap-combined.min.css" rel="stylesheet">
<link href="css/layoutit.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
	<![endif]-->

	<!-- Fav and touch icons -->
	<link rel="shortcut icon" href="img/favicon.png">

	<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
	<!--[if lt IE 9]>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<![endif]-->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="js/jquery.htmlClean.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
<script type="text/javascript" src="ckeditor/config.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="http://www.bootcss.com/p/layoutit/ckeditor/config.js?t=D3NA"></script><link rel="stylesheet" type="text/css" href="http://www.bootcss.com/p/layoutit/ckeditor/skins/moono/editor.css?t=D3NA"><script type="text/javascript" src="http://www.bootcss.com/p/layoutit/ckeditor/lang/zh-cn.js?t=D3NA"></script><script type="text/javascript" src="http://www.bootcss.com/p/layoutit/ckeditor/styles.js?t=D3NA"></script></head>

<body style="min-height: 725px; cursor: auto;" class="edit">
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
      <button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar" type="button"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="brand" href="#"><img src="img/favicon.png"> 可视化布局<span class="label">BETA</span></a>
      <div class="nav-collapse collapse">
      	<ul class="nav" id="menu-layoutit">
          <li class="divider-vertical"></li>
          <li>
            <div class="btn-group" data-toggle="buttons-radio">
              <button type="button" id="edit" class="btn btn-primary active"><i class="icon-edit icon-white"></i>编辑</button>
              <button type="button" class="btn btn-primary" id="devpreview"><i class="icon-eye-close icon-white"></i>布局编辑</button>
              <button type="button" class="btn btn-primary" id="sourcepreview"><i class="icon-eye-open icon-white"></i>预览</button>
            </div>
            <div class="btn-group">
              <button type="button" class="btn btn-primary" data-target="#downloadModal" rel="/build/downloadModal" role="button" data-toggle="modal"><i class="icon-chevron-down icon-white"></i>下载</button>
              <button class="btn btn-primary" href="/share/index" role="button" data-toggle="modal" data-target="#shareModal"><i class="icon-share icon-white"></i>保存</button>
              <button class="btn btn-primary" href="#clear" id="clear"><i class="icon-trash icon-white"></i>清空</button>
            </div>
            <div class="btn-group">
								<button class="btn btn-primary" href="#undo" id="undo"><i class="icon-arrow-left icon-white"></i>撤销</button>
								<button class="btn btn-primary" href="#redo" id="redo"><i class="icon-arrow-right icon-white"></i>重做</button>
			</div>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li><a href="/">网站首页</a></li>
               	  <li>
               	  <div class="btn-group">
               	  <span><iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=dodgepudding&amp;repo=layoutit&amp;type=watch&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="80px" height="20px"></iframe></span>
			      <span><iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=dodgepudding&amp;repo=layoutit&amp;type=fork&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="80px" height="20px"></iframe></span>
			      </div>
			      </li>
          </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="">
      <div class="sidebar-nav">
        <ul class="nav nav-list accordion-group">
          <li class="nav-header">
            <div class="pull-right popover-info"><i class="icon-question-sign "></i>
              <div class="popover fade right">
                <div class="arrow"></div>
                <h3 class="popover-title">功能</h3>
                <div class="popover-content">在这里设置你的栅格布局, 栅格总数默认为12, 用空格分割每列的栅格值, 如果您需要了解更多信息，请访问<a target="_blank" href="http://twitter.github.io/bootstrap/scaffolding.html#gridSystem">Bootstrap栅格系统.</a></div>
              </div>
            </div>
            <i class="icon-plus icon-white"></i> 布局设置 </li>
          <li style="display: list-item;" class="rows" id="estRows">
            <div class="lyrow ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">
                <input value="12" type="text">
              </div>
              <div class="view">
                <div class="row-fluid clearfix">
                  <div class="span12 column"></div>
                </div>
              </div>
            </div>
            <div class="lyrow ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">
                <input value="6 6" type="text">
              </div>
              <div class="view">
                <div class="row-fluid clearfix">
                  <div class="span6 column"></div>
                  <div class="span6 column"></div>
                </div>
              </div>
            </div>
            <div class="lyrow ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">
                <input value="8 4" type="text">
              </div>
              <div class="view">
                <div class="row-fluid clearfix">
                  <div class="span8 column"></div>
                  <div class="span4 column"></div>
                </div>
              </div>
            </div>
            <div class="lyrow ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">
                <input value="4 4 4" type="text">
              </div>
              <div class="view">
                <div class="row-fluid clearfix">
                  <div class="span4 column"></div>
                  <div class="span4 column"></div>
                  <div class="span4 column"></div>
                </div>
              </div>
            </div>
            <div class="lyrow ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">
                <input value="2 6 4" type="text">
              </div>
              <div class="view">
                <div class="row-fluid clearfix">
                  <div class="span2 column"></div>
                  <div class="span6 column"></div>
                  <div class="span4 column"></div>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <ul class="nav nav-list accordion-group">
          <li class="nav-header"><i class="icon-plus icon-white"></i> 基本CSS
            <div class="pull-right popover-info"><i class="icon-question-sign "></i>
              <div class="popover fade right">
                <div class="arrow"></div>
                <h3 class="popover-title">帮助</h3>
                <div class="popover-content">这里提供了一系列基本元素样式，你可以通过区块右上角的编辑按钮修改样式设置。如需了解更多信息，请访问<a target="_blank" href="http://twitter.github.io/bootstrap/base-css.html">基本CSS.</a></div>
              </div>
            </div>
          </li>
          <li style="display: none;" class="boxes" id="elmBase">
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
            	 <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">对齐 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="text-left">靠左</a></li>
                <li class=""><a href="#" rel="text-center">居中</a></li>
                <li class=""><a href="#" rel="text-right">靠右</a></li>
              </ul>
              </span> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">标记 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="muted">禁用</a></li>
                <li class=""><a href="#" rel="text-warning">警告</a></li>
                <li class=""><a href="#" rel="text-error">错误</a></li>
                <li class=""><a href="#" rel="text-info">提示</a></li>
                <li class=""><a href="#" rel="text-success">成功</a></li>
              </ul>
              </span> </span>
              <div class="preview">标题栏</div>
              <div class="view">
                <h3 contenteditable="true">h3. 这是一套可视化布局系统.</h3>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">对齐 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="text-left">靠左</a></li>
                <li class=""><a href="#" rel="text-center">居中</a></li>
                <li class=""><a href="#" rel="text-right">靠右</a></li>
              </ul>
              </span> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">标记 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="muted">禁用</a></li>
                <li class=""><a href="#" rel="text-warning">警告</a></li>
                <li class=""><a href="#" rel="text-error">错误</a></li>
                <li class=""><a href="#" rel="text-info">提示</a></li>
                <li class=""><a href="#" rel="text-success">成功</a></li>
              </ul>
              </span> <a class="btn btn-mini" href="#" rel="lead">Lead</a> </span>
              <div class="preview">段落</div>
              <div class="view" contenteditable="true">
                <p><em>Git</em>是一个分布式的版本控制系统，最初由<b>Linus Torvalds</b>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。 </p>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">地址</div>
              <div class="view">
                <address contenteditable="true">
                <strong>Twitter, Inc.</strong><br>
                795 Folsom Ave, Suite 600<br>
                San Francisco, CA 94107<br>
                <abbr title="Phone">P:</abbr> (123) 456-7890
                </address>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <a class="btn btn-mini" href="#" rel="pull-right">右对齐</a> </span>
              <div class="preview">引用块</div>
              <div class="view clearfix">
                <blockquote contenteditable="true">
                  <p>github是一个全球化的开源社区.</p>
                  <small>关键词 <cite title="Source Title">开源</cite></small> </blockquote>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="unstyled">无样式</a> <a class="btn btn-mini" href="#" rel="inline">嵌入</a> </span>
              <div class="preview">无序列表</div>
              <div class="view">
                <ul contenteditable="true">
                  <li>新闻资讯</li>
                  <li>体育竞技</li>
                  <li>娱乐八卦</li>
                  <li>前沿科技</li>
                  <li>环球财经</li>
                  <li>天气预报</li>
                  <li>房产家居</li>
                  <li>网络游戏</li>
                </ul>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="unstyled">无样式</a> <a class="btn btn-mini" href="#" rel="inline">嵌入</a> </span>
              <div class="preview">有序列表</div>
              <div class="view">
                <ol contenteditable="true">
                  <li>新闻资讯</li>
                  <li>体育竞技</li>
                  <li>娱乐八卦</li>
                  <li>前沿科技</li>
                  <li>环球财经</li>
                  <li>天气预报</li>
                  <li>房产家居</li>
                  <li>网络游戏</li>
                </ol>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="dl-horizontal">竖向对齐</a> </span>
              <div class="preview">详细描述</div>
              <div class="view">
                <dl contenteditable="true">
                  <dt>Rolex</dt>
                  <dd>劳力士创始人为汉斯.威尔斯多夫，1908年他在瑞士将劳力士注册为商标。</dd>
                  <dt>Vacheron Constantin</dt>
                  <dd>始创于1775年的江诗丹顿已有250年历史，</dd>
                  <dd>是世界上历史最悠久、延续时间最长的名表之一。</dd>
                  <dt>IWC</dt>
                  <dd>创立于1868年的万国表有“机械表专家”之称。</dd>
                  <dt>Cartier</dt>
                  <dd>卡地亚拥有150多年历史，是法国珠宝金银首饰的制造名家。</dd>
                </dl>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="table-striped">条纹</a></li>
                <li class=""><a href="#" rel="table-bordered">边框</a></li>
              </ul>
              </span> <a class="btn btn-mini" href="#" rel="table-hover">鼠标指示</a> <a class="btn btn-mini" href="#" rel="table-condensed">紧凑</a> </span>
              <div class="preview">表格</div>
              <div class="view">
                <table class="table" contenteditable="true">
                  <thead>
                    <tr>
                      <th>编号</th>
                      <th>产品</th>
                      <th>交付时间</th>
                      <th>状态</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>TB - Monthly</td>
                      <td>01/04/2012</td>
                      <td>Default</td>
                    </tr>
                    <tr class="success">
                      <td>1</td>
                      <td>TB - Monthly</td>
                      <td>01/04/2012</td>
                      <td>Approved</td>
                    </tr>
                    <tr class="error">
                      <td>2</td>
                      <td>TB - Monthly</td>
                      <td>02/04/2012</td>
                      <td>Declined</td>
                    </tr>
                    <tr class="warning">
                      <td>3</td>
                      <td>TB - Monthly</td>
                      <td>03/04/2012</td>
                      <td>Pending</td>
                    </tr>
                    <tr class="info">
                      <td>4</td>
                      <td>TB - Monthly</td>
                      <td>04/04/2012</td>
                      <td>Call in to confirm</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="form-inline">嵌入</a> </span>
              <div class="preview">提交表单</div>
              <div class="view">
				<form>
					<fieldset>
					<legend contenteditable="true">表单项</legend>
					<label contenteditable="true">表签名</label>
					<input type="text" placeholder="Type something…">
					<span class="help-block" contenteditable="true">这里填写帮助信息.</span>
					<label class="checkbox" contenteditable="true">
					<input type="checkbox"> 勾选同意
					</label>
					<button type="submit" class="btn" contenteditable="true">提交</button>
					</fieldset>
				</form>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="form-inline">嵌入</a> </span>
              <div class="preview">搜索框</div>
              <div class="view">
                <form class="form-search">
                  <input class="input-medium search-query" type="text">
                  <button type="submit" class="btn" contenteditable="true">查找</button>
                </form>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> </span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">纵向表单</div>
              <div class="view">
                <form class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label" for="inputEmail" contenteditable="true">邮箱</label>
                    <div class="controls">
                      <input id="inputEmail" placeholder="Email" type="text">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="inputPassword" contenteditable="true">密码</label>
                    <div class="controls">
                      <input id="inputPassword" placeholder="Password" type="password">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <label class="checkbox" contenteditable="true">
                        <input type="checkbox">
                        Remember me </label>
                      <button type="submit" class="btn" contenteditable="true">登陆</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="btn-primary">重点</a></li>
                <li class=""><a href="#" rel="btn-info">信息</a></li>
                <li class=""><a href="#" rel="btn-success">成功</a></li>
                <li class=""><a href="#" rel="btn-warning">提醒</a></li>
                <li class=""><a href="#" rel="btn-danger">危险</a></li>
                <li class=""><a href="#" rel="btn-inverse">反转</a></li>
                <li class=""><a href="#" rel="btn-link">链接</a></li>
              </ul>
              </span> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">尺寸 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class=""><a href="#" rel="btn-large">大</a></li>
                <li class="active"><a href="#" rel="">中</a></li>
                <li class=""><a href="#" rel="btn-small">小</a></li>
                <li class=""><a href="#" rel="btn-mini">微型</a></li>
              </ul>
              </span> <a class="btn btn-mini" href="#" rel="btn-block">通栏</a> <a class="btn btn-mini" href="#" rel="disabled">禁用</a> </span>
              <div class="preview">按钮</div>
              <div class="view">
                <button class="btn" type="button" contenteditable="true">按钮</button>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="img-rounded">圆角</a></li>
                <li class=""><a href="#" rel="img-circle">圆圈</a></li>
                <li class=""><a href="#" rel="img-polaroid">相框</a></li>
              </ul>
              </span> </span>
              <div class="preview">图片</div>
              <div class="view"> <img alt="140x140" src="img/a.jpg"> </div>
            </div>
          </li>
        </ul>
        <ul class="nav nav-list accordion-group">
          <li class="nav-header"><i class="icon-plus icon-white"></i> 组件
            <div class="pull-right popover-info"><i class="icon-question-sign "></i>
              <div class="popover fade right">
                <div class="arrow"></div>
                <h3 class="popover-title">帮助</h3>
                <div class="popover-content">拖放组件到布局框内. 拖入后你可以设置组件样式. 查看这里获取更多帮助 <a target="_blank" href="http://twitter.github.io/bootstrap/components.html">Components.</a></div>
              </div>
            </div>
          </li>
          <li style="display: none;" class="boxes" id="elmComponents">
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">方向<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">横向</a></li>
                <li class=""><a href="#" rel="btn-group-vertical">竖向</a></li>
              </ul>
              </span> </span>
              <div class="preview">按钮组</div>
              <div class="view">
                <div class="btn-group">
                  <button class="btn" type="button"><i class="icon-align-left"></i></button>
                  <button class="btn" type="button"><i class="icon-align-center"></i></button>
                  <button class="btn" type="button"><i class="icon-align-right"></i></button>
                  <button class="btn" type="button"><i class="icon-align-justify"></i></button>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="dropup">上拉</a> </span>
              <div class="preview">下拉菜单</div>
              <div class="view">
                <div class="btn-group">
                  <button class="btn" contenteditable="true">Action</button>
                  <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                  <ul class="dropdown-menu" contenteditable="true">
                    <li><a href="#">操作</a></li>
                    <li><a href="#">设置栏目</a></li>
                    <li><a href="#">更多设置</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-submenu"> <a tabindex="-1" href="#">更多选项</a>
                      <ul class="dropdown-menu">
                        <li><a href="#">操作</a></li>
                        <li><a href="#">设置栏目</a></li>
                        <li><a href="#">更多设置</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class=""><a href="#" rel="nav-tabs">线框</a></li>
                <li class=""><a href="#" rel="nav-pills">图钉</a></li>
              </ul>
              </span> <a class="btn btn-mini" href="#" rel="nav-stacked">切换格式</a> </span>
              <div class="preview">导航</div>
              <div class="view">
                <ul class="nav nav-tabs" contenteditable="true">
                  <li class="active"><a href="#">首页</a></li>
                  <li><a href="#">资料</a></li>
                  <li class="disabled"><a href="#">信息</a></li>
                  <li class="dropdown pull-right"> <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">操作</a></li>
                      <li><a href="#">设置栏目</a></li>
                      <li><a href="#">更多设置</a></li>
                      <li class="divider"></li>
                      <li><a href="#">分割线</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="well">嵌入</a> </span>
              <div class="preview">导航列表</div>
              <div class="view">
                <ul class="nav nav-list" contenteditable="true">
                  <li class="nav-header">列表标题</li>
                  <li class="active"><a href="#">首页</a></li>
                  <li><a href="#">库</a></li>
                  <li><a href="#">应用</a></li>
                  <li class="nav-header">功能列表</li>
                  <li><a href="#">资料</a></li>
                  <li><a href="#">设置</a></li>
                  <li class="divider"></li>
                  <li><a href="#">帮助</a></li>
                </ul>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">面包导航</div>
              <div class="view">
                <ul class="breadcrumb" contenteditable="true">
                  <li><a href="#">主页</a> <span class="divider">/</span></li>
                  <li><a href="#">类目</a> <span class="divider">/</span></li>
                  <li class="active">主题</li>
                </ul>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">尺寸 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class=""><a href="#" rel="pagination-large">大</a></li>
                <li class="active"><a href="#" rel="">中</a></li>
                <li class=""><a href="#" rel="pagination-small">小</a></li>
                <li class=""><a href="#" rel="pagination-mini">微型</a></li>
              </ul>
              </span> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">位置 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">靠左</a></li>
                <li class=""><a href="#" rel="pagination-centered">居中</a></li>
                <li class=""><a href="#" rel="pagination-right">靠右</a></li>
              </ul>
              </span> </span>
              <div class="preview">翻页</div>
              <div class="view">
                <div class="pagination">
                  <ul contenteditable="true">
                    <li><a href="#">上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">下一页</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="badge-success">成功</a></li>
                <li class=""><a href="#" rel="badge-warning">警告</a></li>
                <li class=""><a href="#" rel="badge-important">重要</a></li>
                <li class=""><a href="#" rel="badge-info">提示</a></li>
                <li class=""><a href="#" rel="badge-inverse">倒数</a></li>
              </ul>
              </span> </span>
              <div class="preview">文字标签</div>
              <div class="view"> <span class="label" contenteditable="true">文字标签</span> </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="badge-success">成功</a></li>
                <li class=""><a href="#" rel="badge-warning">警告</a></li>
                <li class=""><a href="#" rel="badge-important">重要</a></li>
                <li class=""><a href="#" rel="badge-info">提示</a></li>
                <li class=""><a href="#" rel="badge-inverse">倒数</a></li>
              </ul>
              </span> </span>
              <div class="preview">微标</div>
              <div class="view"> <span class="badge" contenteditable="true">1</span> </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="well">嵌入</a> </span>
              <div class="preview">概述</div>
              <div class="view">
                <div class="hero-unit" contenteditable="true">
                  <h1>Hello, world!</h1>
                  <p>这是一个可视化布局模板, 你可以点击模板里的文字进行修改, 也可以通过点击弹出的编辑框进行富文本修改. 拖动区块能实现排序. </p>
                  <p><a class="btn btn-primary btn-large" href="#">参看更多 »</a></p>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">页标题</div>
              <div class="view">
                <div class="page-header" contenteditable="true">
                  <h1>页标题范例 <small>此处编写页标题</small></h1>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">文本</div>
              <div class="view">
                <h2 contenteditable="true">标题</h2>
                <p contenteditable="true">本可视化布局程序在HTML5浏览器上运行更加完美, 能实现自动本地化保存, 即使关闭了网页, 下一次打开仍然能恢复上一次的操作.</p>
                <p><a class="btn" href="#" contenteditable="true">查看更多 »</a></p>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">预览列表</div>
              <div class="view">
                <ul class="thumbnails">
                  <li class="span4">
                    <div class="thumbnail"> <img alt="300x200" src="img/people.jpg">
                      <div class="caption" contenteditable="true">
                        <h3>冯诺尔曼结构</h3>
                        <p>也称普林斯顿结构，是一种将程序指令存储器和数据存储器合并在一起的存储器结构。程序指令存储地址和数据存储地址指向同一个存储器的不同物理位置。</p>
                        <p><a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">分享</a></p>
                      </div>
                    </div>
                  </li>
                  <li class="span4">
                    <div class="thumbnail"> <img alt="300x200" src="img/city.jpg">
                      <div class="caption" contenteditable="true">
                        <h3>哈佛结构</h3>
                        <p>哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
                        <p><a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">分享</a></p>
                      </div>
                    </div>
                  </li>
                  <li class="span4">
                    <div class="thumbnail"> <img alt="300x200" src="img/sports.jpg">
                      <div class="caption" contenteditable="true">
                        <h3>改进型哈佛结构</h3>
                        <p>改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。</p>
                        <p><a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">分享</a></p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="progress-info">提示</a></li>
                <li class=""><a href="#" rel="progress-success">成功</a></li>
                <li class=""><a href="#" rel="progress-warning">警告</a></li>
                <li class=""><a href="#" rel="progress-danger">危险</a></li>
              </ul>
              </span> <a class="btn btn-mini" href="#" rel="progress-striped">条纹</a> <a class="btn btn-mini" href="#" rel="active">动画</a> </span>
              <div class="preview">进度条</div>
              <div class="view">
                <div class="progress">
                  <div class="bar" style="width: 60%;"></div>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="well">嵌入</a> </span>
              <div class="preview">嵌入媒体</div>
              <div class="view">
                <div class="media"> <a href="#" class="pull-left"> <img src="img/a_002.jpg" class="media-object"> </a>
                  <div class="media-body" contenteditable="true">
                    <h4 class="media-heading">嵌入媒体标题</h4>
                   请尽量使用HTML5兼容的视频格式和视频代码实现视频播放, 以达到更好的体验效果. </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <ul class="nav nav-list accordion-group">
          <li class="nav-header"><i class="icon-plus icon-white"></i> 交互组件 <span class="label label-important">NEW!</span>
            <div class="pull-right popover-info"><i class="icon-question-sign "></i>
              <div class="popover fade right">
                <div class="arrow"></div>
                <h3 class="popover-title">帮助</h3>
                <div class="popover-content">拖放组件到布局容器. 拖入后, 你可以配置显示样式. 如果有任何疑问可访问 <a target="_blank" href="http://twitter.github.io/bootstrap/javascript.html">JavaScript.</a></div>
              </div>
            </div>
          </li>
          <li style="display: none;" class="boxes mute" id="elmJS">
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <div class="preview">遮罩窗体</div>
              <div class="view">
                <!-- Button to trigger modal -->
                <a id="myModalLink" href="#myModalContainer" role="button" class="btn" data-toggle="modal" contenteditable="true">触发遮罩窗体</a>

                <!-- Modal -->
                <div id="myModalContainer" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel" contenteditable="true">标题栏</h3>
                  </div>
                  <div class="modal-body">
                    <p contenteditable="true">显示信息</p>
                  </div>
                  <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true" contenteditable="true">关闭</button>
                    <button class="btn btn-primary" contenteditable="true">保存设置</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <a class="btn btn-mini" href="#" rel="navbar-inverse">Inverse</a>
              <!--a class="btn btn-mini" href="#" rel="navbar-fixed-top">Navbar fixed top</a-->
              </span>
              <div class="preview">导航栏</div>
              <div class="view">
                <div class="navbar">
                  <div class="navbar-inner">
                    <div class="container-fluid"> <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a href="#" class="brand" contenteditable="true">网站名</a>
                      <div class="nav-collapse collapse navbar-responsive-collapse">
                        <ul class="nav" contenteditable="true">
                          <li class="active"><a href="#">主页</a></li>
                          <li><a href="#">链接</a></li>
                          <li><a href="#">链接</a></li>
                          <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                              <li><a href="#">下拉导航1</a></li>
                              <li><a href="#">下拉导航2</a></li>
                              <li><a href="#">其他</a></li>
                              <li class="divider"></li>
                              <li class="nav-header">标签</li>
                              <li><a href="#">链接1</a></li>
                              <li><a href="#">链接2</a></li>
                            </ul>
                          </li>
                        </ul>
                        <ul class="nav pull-right" contenteditable="true">
                          <li><a href="#">右边链接</a></li>
                          <li class="divider-vertical"></li>
                          <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                              <li><a href="#">下拉导航1</a></li>
                              <li><a href="#">下拉导航2</a></li>
                              <li><a href="#">其他</a></li>
                              <li class="divider"></li>
                              <li><a href="#">链接3</a></li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                      <!-- /.nav-collapse -->
                    </div>
                  </div>
                  <!-- /navbar-inner -->
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">位置 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="tabs-below">底部</a></li>
                <li class=""><a href="#" rel="tabs-left">靠左</a></li>
                <li class=""><a href="#" rel="tabs-right">靠右</a></li>
              </ul>
              </span> </span>
              <div class="preview">切换卡</div>
              <div class="view">
                <div class="tabbable" id="myTabs"> <!-- Only required for left/right tabs -->
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab1" data-toggle="tab" contenteditable="true">第一部分</a></li>
                    <li><a href="#tab2" data-toggle="tab" contenteditable="true">第二部分</a></li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab1" contenteditable="true">
                      <p>第一部分内容.</p>
                    </div>
                    <div class="tab-pane" id="tab2" contenteditable="true">
                      <p>第二部分内容.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span> <span class="configuration"> <span class="btn-group"> <a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#">样式 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#" rel="">默认</a></li>
                <li class=""><a href="#" rel="alert-info">提示</a></li>
                <li class=""><a href="#" rel="alert-error">错误</a></li>
                <li class=""><a href="#" rel="alert-success">成功</a></li>
              </ul>
              </span> </span>
              <div class="preview">提示框</div>
              <div class="view">
                <div class="alert" contenteditable="true">
                  <button type="button" class="close" data-dismiss="alert">×</button>
                  <h4>提示!</h4>
                  <strong>警告!</strong> 请注意你的个人隐私安全. </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">手风琴切换</div>
              <div class="view">
                <div class="accordion" id="myAccordion">
                  <div class="accordion-group">
                    <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#myAccordion" href="#collapseOne" contenteditable="true"> 选项卡 #1 </a> </div>
                    <div id="collapseOne" class="accordion-body collapse in">
                      <div class="accordion-inner" contenteditable="true"> 功能块... </div>
                    </div>
                  </div>
                  <div class="accordion-group">
                    <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#myAccordion" href="#collapseTwo" contenteditable="true"> 选项卡 #2 </a> </div>
                    <div id="collapseTwo" class="accordion-body collapse">
                      <div class="accordion-inner" contenteditable="true"> 功能块... </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="box box-element ui-draggable"> <a href="#close" class="remove label label-important"><i class="icon-remove icon-white"></i>删除</a> <span class="drag label"><i class="icon-move"></i>拖动</span>
              <span class="configuration"><button type="button" class="btn btn-mini" data-target="#editorModal" role="button" data-toggle="modal">编辑</button></span>
              <div class="preview">轮换图</div>
              <div class="view">
                <div class="carousel slide" id="myCarousel">
                  <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                    <li data-slide-to="1" data-target="#myCarousel" class=""></li>
                    <li data-slide-to="2" data-target="#myCarousel" class=""></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="item active"> <img alt="" src="img/1.jpg">
                      <div class="carousel-caption" contenteditable="true">
                        <h4>棒球</h4>
                        <p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
                      </div>
                    </div>
                    <div class="item"> <img alt="" src="img/2.jpg">
                      <div class="carousel-caption" contenteditable="true">
                        <h4>冲浪</h4>
                        <p>冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。</p>
                      </div>
                    </div>
                    <div class="item"> <img alt="" src="img/3.jpg">
                      <div class="carousel-caption" contenteditable="true">
                        <h4>自行车</h4>
                        <p>以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。</p>
                      </div>
                    </div>
                  </div>
                  <a data-slide="prev" href="#myCarousel" class="left carousel-control">‹</a> <a data-slide="next" href="#myCarousel" class="right carousel-control">›</a> </div>
              </div>
            </div>
          </li>
        </ul>
        <ul class="nav nav-list accordion-group">
          <li class="nav-header"><i class="icon-plus icon-white"></i> 应用扩展 </li>
          <li style="display: none;" class="boxes mute" id="elmComm">
            <div class="preview">建设中...</div>
          </li>
        </ul>
      </div>
    </div>
    <!--/span-->
    <div style="min-height: 655px;" class="demo ui-sortable"></div>
    <!--/span-->
    <div id="download-layout">
      <div class="container-fluid"></div>
    </div>
  </div>
  <!--/row-->
</div>
<!--/.fluid-container-->
<div class="modal hide fade" role="dialog" id="editorModal">
  <div class="modal-header"> <a class="close" data-dismiss="modal">×</a>
    <h3>编辑</h3>
  </div>
  <div class="modal-body">
    <p>
      <textarea id="contenteditor" style="visibility: hidden; display: none;"></textarea><div id="cke_contenteditor" class="cke_1 cke cke_reset cke_chrome cke_editor_contenteditor cke_ltr cke_browser_webkit" dir="ltr" lang="zh-cn" role="application" aria-labelledby="cke_contenteditor_arialbl"><span id="cke_contenteditor_arialbl" class="cke_voice_label">所见即所得编辑器</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_1_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_5" class="cke_voice_label">工具栏</span><span id="cke_1_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_5" onmousedown="return false;"><span id="cke_8" class="cke_toolbar" aria-labelledby="cke_8_label" role="toolbar"><span id="cke_8_label" class="cke_voice_label">剪贴板/撤销</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_9" class="cke_button cke_button__cut cke_button_disabled " "="" href="javascript:void('剪切')" title="剪切" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_9_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(2,event);" onfocus="return CKEDITOR.tools.callFunction(3,event);" onmousedown="return CKEDITOR.tools.callFunction(4,event);" onclick="CKEDITOR.tools.callFunction(5,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -352px;">&nbsp;</span><span id="cke_9_label" class="cke_button_label cke_button__cut_label">剪切</span></a><a id="cke_10" class="cke_button cke_button__copy cke_button_disabled " "="" href="javascript:void('复制')" title="复制" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_10_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(6,event);" onfocus="return CKEDITOR.tools.callFunction(7,event);" onmousedown="return CKEDITOR.tools.callFunction(8,event);" onclick="CKEDITOR.tools.callFunction(9,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -288px;">&nbsp;</span><span id="cke_10_label" class="cke_button_label cke_button__copy_label">复制</span></a><a id="cke_11" class="cke_button cke_button__paste  cke_button_off" "="" href="javascript:void('粘贴')" title="粘贴" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_11_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(10,event);" onfocus="return CKEDITOR.tools.callFunction(11,event);" onmousedown="return CKEDITOR.tools.callFunction(12,event);" onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -416px;">&nbsp;</span><span id="cke_11_label" class="cke_button_label cke_button__paste_label">粘贴</span></a><a id="cke_12" class="cke_button cke_button__pastetext  cke_button_off" "="" href="javascript:void('粘贴为无格式文本')" title="粘贴为无格式文本" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_12_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(14,event);" onfocus="return CKEDITOR.tools.callFunction(15,event);" onmousedown="return CKEDITOR.tools.callFunction(16,event);" onclick="CKEDITOR.tools.callFunction(17,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -960px;">&nbsp;</span><span id="cke_12_label" class="cke_button_label cke_button__pastetext_label">粘贴为无格式文本</span></a><a id="cke_13" class="cke_button cke_button__pastefromword  cke_button_off" "="" href="javascript:void('从 MS Word 粘贴')" title="从 MS Word 粘贴" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_13_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(18,event);" onfocus="return CKEDITOR.tools.callFunction(19,event);" onmousedown="return CKEDITOR.tools.callFunction(20,event);" onclick="CKEDITOR.tools.callFunction(21,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1024px;">&nbsp;</span><span id="cke_13_label" class="cke_button_label cke_button__pastefromword_label">从 MS Word 粘贴</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_14" class="cke_button cke_button__undo cke_button_disabled" "="" href="javascript:void('撤消')" title="撤消" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_14_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(22,event);" onfocus="return CKEDITOR.tools.callFunction(23,event);" onmousedown="return CKEDITOR.tools.callFunction(24,event);" onclick="CKEDITOR.tools.callFunction(25,this);return false;" aria-disabled="true"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1344px;">&nbsp;</span><span id="cke_14_label" class="cke_button_label cke_button__undo_label">撤消</span></a><a id="cke_15" class="cke_button cke_button__redo cke_button_disabled" "="" href="javascript:void('重做')" title="重做" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_15_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(26,event);" onfocus="return CKEDITOR.tools.callFunction(27,event);" onmousedown="return CKEDITOR.tools.callFunction(28,event);" onclick="CKEDITOR.tools.callFunction(29,this);return false;" aria-disabled="true"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1280px;">&nbsp;</span><span id="cke_15_label" class="cke_button_label cke_button__redo_label">重做</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_16" class="cke_toolbar" aria-labelledby="cke_16_label" role="toolbar"><span id="cke_16_label" class="cke_voice_label">编辑</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_17" class="cke_button cke_button__scayt cke_button_off " "="" href="javascript:void('即时拼写检查')" title="即时拼写检查" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_17_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(30,event);" onfocus="return CKEDITOR.tools.callFunction(31,event);" onmousedown="return CKEDITOR.tools.callFunction(32,event);" onclick="CKEDITOR.tools.callFunction(33,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1184px;">&nbsp;</span><span id="cke_17_label" class="cke_button_label cke_button__scayt_label">即时拼写检查</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_18" class="cke_toolbar" aria-labelledby="cke_18_label" role="toolbar"><span id="cke_18_label" class="cke_voice_label">链接</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_19" class="cke_button cke_button__link  cke_button_off" "="" href="javascript:void('插入/编辑超链接')" title="插入/编辑超链接" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_19_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(34,event);" onfocus="return CKEDITOR.tools.callFunction(35,event);" onmousedown="return CKEDITOR.tools.callFunction(36,event);" onclick="CKEDITOR.tools.callFunction(37,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -832px;">&nbsp;</span><span id="cke_19_label" class="cke_button_label cke_button__link_label">插入/编辑超链接</span></a><a id="cke_20" class="cke_button cke_button__unlink cke_button_disabled" "="" href="javascript:void('取消超链接')" title="取消超链接" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_20_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(38,event);" onfocus="return CKEDITOR.tools.callFunction(39,event);" onmousedown="return CKEDITOR.tools.callFunction(40,event);" onclick="CKEDITOR.tools.callFunction(41,this);return false;" aria-disabled="true"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -864px;">&nbsp;</span><span id="cke_20_label" class="cke_button_label cke_button__unlink_label">取消超链接</span></a><a id="cke_21" class="cke_button cke_button__anchor  cke_button_off" "="" href="javascript:void('插入/编辑锚点链接')" title="插入/编辑锚点链接" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_21_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(42,event);" onfocus="return CKEDITOR.tools.callFunction(43,event);" onmousedown="return CKEDITOR.tools.callFunction(44,event);" onclick="CKEDITOR.tools.callFunction(45,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -800px;">&nbsp;</span><span id="cke_21_label" class="cke_button_label cke_button__anchor_label">插入/编辑锚点链接</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_22" class="cke_toolbar" aria-labelledby="cke_22_label" role="toolbar"><span id="cke_22_label" class="cke_voice_label">插入</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_23" class="cke_button cke_button__image  cke_button_off" "="" href="javascript:void('图象')" title="图象" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_23_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(46,event);" onfocus="return CKEDITOR.tools.callFunction(47,event);" onmousedown="return CKEDITOR.tools.callFunction(48,event);" onclick="CKEDITOR.tools.callFunction(49,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -736px;">&nbsp;</span><span id="cke_23_label" class="cke_button_label cke_button__image_label">图象</span></a><a id="cke_24" class="cke_button cke_button__table  cke_button_off" "="" href="javascript:void('表格')" title="表格" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_24_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(50,event);" onfocus="return CKEDITOR.tools.callFunction(51,event);" onmousedown="return CKEDITOR.tools.callFunction(52,event);" onclick="CKEDITOR.tools.callFunction(53,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1216px;">&nbsp;</span><span id="cke_24_label" class="cke_button_label cke_button__table_label">表格</span></a><a id="cke_25" class="cke_button cke_button__horizontalrule  cke_button_off" "="" href="javascript:void('插入水平线')" title="插入水平线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_25_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(54,event);" onfocus="return CKEDITOR.tools.callFunction(55,event);" onmousedown="return CKEDITOR.tools.callFunction(56,event);" onclick="CKEDITOR.tools.callFunction(57,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -704px;">&nbsp;</span><span id="cke_25_label" class="cke_button_label cke_button__horizontalrule_label">插入水平线</span></a><a id="cke_26" class="cke_button cke_button__specialchar  cke_button_off" "="" href="javascript:void('插入特殊符号')" title="插入特殊符号" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_26_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(58,event);" onfocus="return CKEDITOR.tools.callFunction(59,event);" onmousedown="return CKEDITOR.tools.callFunction(60,event);" onclick="CKEDITOR.tools.callFunction(61,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1152px;">&nbsp;</span><span id="cke_26_label" class="cke_button_label cke_button__specialchar_label">插入特殊符号</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_27" class="cke_toolbar" aria-labelledby="cke_27_label" role="toolbar"><span id="cke_27_label" class="cke_voice_label">工具</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_28" class="cke_button cke_button__maximize  cke_button_off" "="" href="javascript:void('全屏')" title="全屏" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_28_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(62,event);" onfocus="return CKEDITOR.tools.callFunction(63,event);" onmousedown="return CKEDITOR.tools.callFunction(64,event);" onclick="CKEDITOR.tools.callFunction(65,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -896px;">&nbsp;</span><span id="cke_28_label" class="cke_button_label cke_button__maximize_label">全屏</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_29" class="cke_toolbar" aria-labelledby="cke_29_label" role="toolbar"><span id="cke_29_label" class="cke_voice_label">文档</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_30" class="cke_button cke_button__source  cke_button_off" "="" href="javascript:void('源码')" title="源码" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_30_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(66,event);" onfocus="return CKEDITOR.tools.callFunction(67,event);" onmousedown="return CKEDITOR.tools.callFunction(68,event);" onclick="CKEDITOR.tools.callFunction(69,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1120px;">&nbsp;</span><span id="cke_30_label" class="cke_button_label cke_button__source_label">源码</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_31" class="cke_toolbar" aria-labelledby="cke_31_label" role="toolbar"><span id="cke_31_label" class="cke_voice_label">基本格式</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_32" class="cke_button cke_button__bold  cke_button_off" "="" href="javascript:void('加粗')" title="加粗" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_32_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(70,event);" onfocus="return CKEDITOR.tools.callFunction(71,event);" onmousedown="return CKEDITOR.tools.callFunction(72,event);" onclick="CKEDITOR.tools.callFunction(73,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -32px;">&nbsp;</span><span id="cke_32_label" class="cke_button_label cke_button__bold_label">加粗</span></a><a id="cke_33" class="cke_button cke_button__italic  cke_button_off" "="" href="javascript:void('倾斜')" title="倾斜" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_33_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(74,event);" onfocus="return CKEDITOR.tools.callFunction(75,event);" onmousedown="return CKEDITOR.tools.callFunction(76,event);" onclick="CKEDITOR.tools.callFunction(77,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -64px;">&nbsp;</span><span id="cke_33_label" class="cke_button_label cke_button__italic_label">倾斜</span></a><a id="cke_34" class="cke_button cke_button__underline  cke_button_off" "="" href="javascript:void('下划线')" title="下划线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_34_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(78,event);" onfocus="return CKEDITOR.tools.callFunction(79,event);" onmousedown="return CKEDITOR.tools.callFunction(80,event);" onclick="CKEDITOR.tools.callFunction(81,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -192px;">&nbsp;</span><span id="cke_34_label" class="cke_button_label cke_button__underline_label">下划线</span></a><a id="cke_35" class="cke_button cke_button__strike  cke_button_off" "="" href="javascript:void('删除线')" title="删除线" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_35_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(82,event);" onfocus="return CKEDITOR.tools.callFunction(83,event);" onmousedown="return CKEDITOR.tools.callFunction(84,event);" onclick="CKEDITOR.tools.callFunction(85,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -96px;">&nbsp;</span><span id="cke_35_label" class="cke_button_label cke_button__strike_label">删除线</span></a><a id="cke_36" class="cke_button cke_button__subscript  cke_button_off" "="" href="javascript:void('下标')" title="下标" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_36_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(86,event);" onfocus="return CKEDITOR.tools.callFunction(87,event);" onmousedown="return CKEDITOR.tools.callFunction(88,event);" onclick="CKEDITOR.tools.callFunction(89,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -128px;">&nbsp;</span><span id="cke_36_label" class="cke_button_label cke_button__subscript_label">下标</span></a><a id="cke_37" class="cke_button cke_button__superscript  cke_button_off" "="" href="javascript:void('上标')" title="上标" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_37_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(90,event);" onfocus="return CKEDITOR.tools.callFunction(91,event);" onmousedown="return CKEDITOR.tools.callFunction(92,event);" onclick="CKEDITOR.tools.callFunction(93,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -160px;">&nbsp;</span><span id="cke_37_label" class="cke_button_label cke_button__superscript_label">上标</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_38" class="cke_button cke_button__removeformat  cke_button_off" "="" href="javascript:void('清除格式')" title="清除格式" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_38_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(94,event);" onfocus="return CKEDITOR.tools.callFunction(95,event);" onmousedown="return CKEDITOR.tools.callFunction(96,event);" onclick="CKEDITOR.tools.callFunction(97,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -1056px;">&nbsp;</span><span id="cke_38_label" class="cke_button_label cke_button__removeformat_label">清除格式</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_39" class="cke_toolbar" aria-labelledby="cke_39_label" role="toolbar"><span id="cke_39_label" class="cke_voice_label">段落</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_40" class="cke_button cke_button__numberedlist  cke_button_off" "="" href="javascript:void('编号列表')" title="编号列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_40_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(98,event);" onfocus="return CKEDITOR.tools.callFunction(99,event);" onmousedown="return CKEDITOR.tools.callFunction(100,event);" onclick="CKEDITOR.tools.callFunction(101,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -544px;">&nbsp;</span><span id="cke_40_label" class="cke_button_label cke_button__numberedlist_label">编号列表</span></a><a id="cke_41" class="cke_button cke_button__bulletedlist  cke_button_off" "="" href="javascript:void('项目列表')" title="项目列表" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_41_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(102,event);" onfocus="return CKEDITOR.tools.callFunction(103,event);" onmousedown="return CKEDITOR.tools.callFunction(104,event);" onclick="CKEDITOR.tools.callFunction(105,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -480px;">&nbsp;</span><span id="cke_41_label" class="cke_button_label cke_button__bulletedlist_label">项目列表</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_42" class="cke_button cke_button__outdent cke_button_disabled" "="" href="javascript:void('减少缩进量')" title="减少缩进量" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_42_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(106,event);" onfocus="return CKEDITOR.tools.callFunction(107,event);" onmousedown="return CKEDITOR.tools.callFunction(108,event);" onclick="CKEDITOR.tools.callFunction(109,this);return false;" aria-disabled="true"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -672px;">&nbsp;</span><span id="cke_42_label" class="cke_button_label cke_button__outdent_label">减少缩进量</span></a><a id="cke_43" class="cke_button cke_button__indent  cke_button_off" "="" href="javascript:void('增加缩进量')" title="增加缩进量" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_43_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(110,event);" onfocus="return CKEDITOR.tools.callFunction(111,event);" onmousedown="return CKEDITOR.tools.callFunction(112,event);" onclick="CKEDITOR.tools.callFunction(113,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -608px;">&nbsp;</span><span id="cke_43_label" class="cke_button_label cke_button__indent_label">增加缩进量</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_44" class="cke_button cke_button__blockquote  cke_button_off" "="" href="javascript:void('块引用')" title="块引用" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_44_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(114,event);" onfocus="return CKEDITOR.tools.callFunction(115,event);" onmousedown="return CKEDITOR.tools.callFunction(116,event);" onclick="CKEDITOR.tools.callFunction(117,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url(http://www.bootcss.com/p/layoutit/ckeditor/plugins/icons.png?t=D3NA);background-position:0 -224px;">&nbsp;</span><span id="cke_44_label" class="cke_button_label cke_button__blockquote_label">块引用</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_45" class="cke_toolbar" aria-labelledby="cke_45_label" role="toolbar"><span id="cke_45_label" class="cke_voice_label">样式</span><span class="cke_toolbar_start"></span><span id="cke_6" class="cke_combo cke_combo__styles  cke_combo_off" role="presentation"><span id="cke_6_label" class="cke_combo_label">样式</span><a class="cke_combo_button" hidefocus="true" title="样式" tabindex="-1" "="" href="javascript:void('样式')" role="button" aria-labelledby="cke_6_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(119,event,this);" onmousedown="return CKEDITOR.tools.callFunction(121,event);" onfocus="return CKEDITOR.tools.callFunction(120,event);" onclick="CKEDITOR.tools.callFunction(118,this);return false;"><span id="cke_6_text" class="cke_combo_text cke_combo_inlinelabel">样式</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_7" class="cke_combo cke_combo__format  cke_combo_off" role="presentation"><span id="cke_7_label" class="cke_combo_label">格式</span><a class="cke_combo_button" hidefocus="true" title="格式" tabindex="-1" "="" href="javascript:void('格式')" role="button" aria-labelledby="cke_7_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(123,event,this);" onmousedown="return CKEDITOR.tools.callFunction(125,event);" onfocus="return CKEDITOR.tools.callFunction(124,event);" onclick="CKEDITOR.tools.callFunction(122,this);return false;"><span id="cke_7_text" class="cke_combo_text cke_combo_inlinelabel">格式</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_1_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_50" class="cke_voice_label">按 ALT+0 获得帮助</span><iframe class="cke_wysiwyg_frame cke_reset" frameborder="0" aria-describedby="cke_50" title="所见即所得编辑器,contenteditor" src="" tabindex="0" allowtransparency="true" style="width: 0px; height: 100%;"></iframe></div><span id="cke_1_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_1_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="拖拽以改变尺寸" onmousedown="CKEDITOR.tools.callFunction(0, event)">◢</span><span id="cke_1_path_label" class="cke_voice_label">元素路径</span><span id="cke_1_path" class="cke_path" role="group" aria-labelledby="cke_1_path_label"><a id="cke_elementspath_46_1" href="javascript:void('body')" tabindex="-1" class="cke_path_item" title="body 元素" hidefocus="true" onkeydown="return CKEDITOR.tools.callFunction(127,1, event );" onclick="CKEDITOR.tools.callFunction(126,1); return false;" role="button" aria-label="body 元素">body</a><a id="cke_elementspath_46_0" href="javascript:void('p')" tabindex="-1" class="cke_path_item" title="p 元素" hidefocus="true" onkeydown="return CKEDITOR.tools.callFunction(127,0, event );" onclick="CKEDITOR.tools.callFunction(126,0); return false;" role="button" aria-label="p 元素">p</a><span class="cke_path_empty">&nbsp;</span></span></span></div></div>
    </p>
  </div>
  <div class="modal-footer"> <a id="savecontent" class="btn btn-primary" data-dismiss="modal">保存</a> <a class="btn" data-dismiss="modal">关闭</a> </div>
</div>
<div class="modal hide fade" role="dialog" id="downloadModal">
  <div class="modal-header"> <a class="close" data-dismiss="modal">×</a>
    <h3>下载</h3>
  </div>
  <div class="modal-body">
    <p>已在下面生成干净的HTML, 可以复制粘贴代码到你的项目.</p>
    <div class="btn-group">
      <button type="button" id="fluidPage" class="active btn btn-info"><i class="icon-fullscreen icon-white"></i> 自适应宽度</button>
      <button type="button" class="btn btn-info" id="fixedPage"><i class="icon-screenshot icon-white"></i> 固定宽度</button>
    </div>
    <br>
    <br>
    <p>
      <textarea></textarea>
    </p>
  </div>
  <div class="modal-footer"> <a class="btn" data-dismiss="modal">关闭</a> </div>
</div>
<div class="modal hide fade" role="dialog" id="shareModal">
  <div class="modal-header"> <a class="close" data-dismiss="modal">×</a>
    <h3>保存</h3>
  </div>
  <div class="modal-body">保存成功</div>
  <div class="modal-footer"> <a class="btn" data-dismiss="modal">Close</a> </div>
</div>
<!-- Analytics
    ================================================== -->
    <script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3d8e7fc0de8a2a75f2ca3bfe128e6391' type='text/javascript'%3E%3C/script%3E"));
    </script><script src=" http://hm.baidu.com/h.js?3d8e7fc0de8a2a75f2ca3bfe128e6391" type="text/javascript"></script>

<div id="cntvlive2-is-installed"></div></body></html>