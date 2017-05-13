<!DOCTYPE html>
<html>
% include('header.tpl', title='Page Title')

  <body
    ng-app="MobileAngularUiExamples"
    ng-controller="MainController"
    >

    <!-- Sidebars -->
    <div ng-include="'sidebar.html'"
            ui-track-as-search-param='true'
            class="sidebar sidebar-left"></div>

    <div ng-include="'sidebarRight.html'"
            class="sidebar sidebar-right"></div>

    <div class="app" ng-swipe-right='Ui.turnOn("uiSidebarLeft")' ng-swipe-left='Ui.turnOff("uiSidebarLeft")'>

      <!-- Navbars -->

      <div class="navbar navbar-app navbar-absolute-top">
        <div class="navbar-brand navbar-brand-center" ui-yield-to="title">
          Mobile Angular UI
        </div>
        <div class="btn-group pull-left">
          <div ui-toggle="uiSidebarLeft" class="btn sidebar-toggle">
            <i class="fa fa-bars"></i> Menu
          </div>
        </div>
        <div class="btn-group pull-right" ui-yield-to="navbarAction">
          <div ui-toggle="uiSidebarRight" class="btn">
            <i class="fa fa-comment"></i> Chat
          </div>
        </div>
      </div>

      <div class="navbar navbar-app navbar-absolute-bottom">
        <div class="btn-group justified">
          <a href="http://mobileangularui.com/" class="btn btn-navbar"><i class="fa fa-home fa-navbar"></i> Docs</a>
          <a href="https://github.com/mcasimir/mobile-angular-ui" class="btn btn-navbar"><i class="fa fa-github fa-navbar"></i> Sources</a>
          <a href="https://github.com/mcasimir/mobile-angular-ui/issues" class="btn btn-navbar"><i class="fa fa-exclamation-circle fa-navbar"></i> Issues</a>
        </div>
      </div>

      <!-- App Body -->
      <div class="app-body" ng-class="{loading: loading}">
        <div ng-show="loading" class="app-content-loading">
          <i class="fa fa-spinner fa-spin loading-spinner"></i>
        </div>
        <div class="app-content">
          <ng-view></ng-view>
        </div>
      </div>

    </div><!-- ~ .app -->

    <div ui-yield-to="modals"></div>
% include('footer.tpl', title='Page Title')
  </body>
</html>
