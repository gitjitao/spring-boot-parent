<header id="header">
			<div id="logo-group">
				<!-- PLACE YOUR LOGO HERE -->
				<span id="logo"> <img src="/static/img/logo.png" alt="SmartAdmin"> </span>
				<!-- END LOGO PLACEHOLDER -->

            </div>

			<!-- pulled right: nav area -->
			<div class="pull-right">

				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" title="收放菜单"><i class="fa fa-reorder"></i></a> </span>
				</div>
				<!-- end collapse menu -->

				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="/logout" title="退出登录"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->

				<!-- search mobile button (this is hidden till mobile view port) -->
				<div id="search-mobile" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
				</div>
				<!-- end search mobile button -->

			</div>
			<!-- end pulled right: nav area -->

		</header>


    <aside id="left-panel">
        <!-- User info -->
        <div class="login-info">
                    <span> <!-- User image size is adjusted inside CSS, it should stay as it -->
                        <a href="javascript:void(0);" id="show-shortcut">
                            <img src="/static/img/avatars/sunny.png" alt="me" class="online" />
                            <span>
                         	    test
                            </span>
                            <i class="fa fa-angle-down"></i>
                        </a>

                    </span>
        </div>
        <!-- end user info -->
        <nav>
            <ul style="overflow: hidden;">
                <li class=""><a href="/user" title="主页">主页</a></li>
                <li class="open">
                    <a href="javaScript:void(0)" title="用户信息">用户信息<b class="collapse-sign"><em class="fa fa-collapse-o"></em></b></a>
                    <ul style="overflow: hidden; display: block;">
                        <li class="active"><a href="/user" title="用户列表">用户列表</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="javaScript:void(0)" title="系统管理">用户信息<b class="collapse-sign"><em class="fa fa-collapse-o"></em></b></a>
                    <ul style="overflow: hidden;">
                        <li><a href="/user" title="用户列表">用户列表</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>
        
    </aside>
