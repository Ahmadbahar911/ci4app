<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
            <img src="<?= base_url(''); ?>/img/admin_logo.png" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold text-white">Admin Page</span>
        </a>
    </div>

    <hr class="horizontal light mt-0 mb-2">

    <div class="collapse navbar-collapse w-auto max-height-vh-100" id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <?php if (in_groups('admin')) : ?>
                <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                    Admin Menu
                </div>
                <li class="nav-item">
                    <a class="nav-link text-white" href="<?= base_url('admin'); ?>">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">dashboard</i>
                        </div>
                        <span class="nav-link-text ms-1">Dashboard</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="<?= base_url('admin/user_management'); ?>">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">groups</i>
                        </div>
                        <span class="nav-link-text ms-1">User Management</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="<?= base_url('chat'); ?>">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">chat</i>
                        </div>
                        <span class="nav-link-text ms-1">Chat Users</span>
                    </a>
                </li>
                <hr class="horizontal light mt-0 mb-2">
            <?php endif; ?>

            <li class="nav-item">
                <a class="nav-link text-white" href="<?= base_url('user/my_profile'); ?>">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">manage_accounts</i>
                    </div>
                    <span class="nav-link-text ms-1">My Profile</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link text-white" href="<?= base_url('logout'); ?>">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">logout</i>
                    </div>
                    <span class="nav-link-text ms-1">Log Out</span>
                </a>
            </li>

        </ul>
    </div>
</aside>