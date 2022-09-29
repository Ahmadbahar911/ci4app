<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid py-4">
    <div class="row">
        <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
            <span class="mask  bg-gradient-primary  opacity-6"></span>
        </div>
        <div class="card card-body mx-3 mx-md-4 mt-n6">
            <div class="col-auto">
                <div class="avatar avatar-xl position-relative">
                    <img src="<?= base_url(''); ?>/img/<?= user()->user_image; ?>" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                </div>
            </div>
            <div class="col-auto my-auto">
                <div class="h-100">
                    <h5 class="mb-1">
                        Welcome !
                    </h5>
                    <p class="mb-0 font-weight-normal text-sm">
                        <?= user()->username ?>
                    </p>
                </div>
            </div>
            <div class="card-header pb-0 p-3">
                <div class="row">
                    <div class="col-md-8 d-flex align-items-center">
                        <h6 class="mb-0">Welcome Page</h6>
                    </div>
                    <div class="col-md-4 text-end">
                        <a href="javascript:;">
                            <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit Profile"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body p-3">
                <p class="text-sm">
                    Selamat datang di website Admin 
                </p>

                <hr class="horizontal gray-light my-4">
                <ul class="list-group">
                    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Full Name :</strong> &nbsp; <?= user()->username ?></li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mobile :</strong> &nbsp; <?= user()->email ?></li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Role :</strong> &nbsp; alecthompson@mail.com</li>
                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Location :</strong> &nbsp; USA</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>