<div id="scrollbar">
    <div class="container-fluid">

        <div id="two-column-menu">
        </div>

        <ul class="navbar-nav" id="navbar-nav">
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item has-link" data-bs-toggle="slide" href="{{ route('dashboard') }}">
                    <i class="mdi mdi-speedometer"></i><span class="side-menu__label">Dashboard</span>
                </a>
            </li>
        </ul>

        <ul class="navbar-nav" id="navbar-nav">
            <li class="menu-title"><span data-key="t-menu">Menu</span></li>
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                    <i class="mdi mdi-speedometer"></i> <span class="side-menu__label">Settings Module</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                    <ul class="slide-menu">
                        <li class="nav-item"><a href="{{route('category.index')}}" class="nav-link slide-item" data-key="t-analytics"> Category </a></li>
                        <li class="nav-item"><a href="{{route('sub-category.index')}}" class="nav-link" data-key="t-analytics"> Sub Category </a></li>
                        <li class="nav-item"><a href="{{route('brand.index')}}" class="nav-link" data-key="t-analytics"> Brand </a></li>
                        <li class="nav-item"><a href="{{route('unit.index')}}" class="nav-link" data-key="t-analytics"> Unit </a></li>
                        <li class="nav-item"><a href="{{route('color.index')}}" class="nav-link" data-key="t-analytics"> Color </a></li>
                        <li class="nav-item"><a href="{{route('size.index')}}" class="nav-link" data-key="t-analytics"> Size </a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                    <i class="mdi mdi-speedometer"></i> <span class="side-menu__label">Product Module</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                    <ul class="slide-menu">
                        <li class="nav-item"><a href="{{route('product.index')}}" class="nav-link" data-key="t-analytics"> Product </a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                    <i class="mdi mdi-speedometer"></i> <span class="side-menu__label">Order Module</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                    <ul class="slide-menu">
                        <li class="nav-item"><a href="{{route('order')}}" class="nav-link" data-key="t-analytics">All Order </a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                    <i class="mdi mdi-speedometer"></i> <span class="side-menu__label">Courier Module</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                    <ul class="slide-menu">
                        <li class="nav-item"><a href="{{route('courier.index')}}" class="nav-link" data-key="t-analytics">Courier List</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link side-menu__item" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                    <i class="mdi mdi-speedometer"></i> <span class="side-menu__label">User Module</span>
                </a>
                <div class="collapse menu-dropdown" id="sidebarDashboards">
                    <ul class="slide-menu">
                        <li class="nav-item"><a href="{{route('user.index')}}" class="nav-link" data-key="t-analytics">User List</a></li>
                        <li class="nav-item"><a href="{{route('user.create')}}" class="nav-link" data-key="t-analytics">Add User</a></li>
                    </ul>
                </div>
            </li>
            <!-- end Dashboard Menu -->
        </ul>
    </div>
    <!-- Sidebar -->
</div>


