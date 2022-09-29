<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>


<div class="container-fluid py-4">
    <div class="row">
        <div class="col-md-7 mt-4">
            <div class="card">
                <div class="card-header pb-0 px-3">
                    <h6 class="mb-0">User Information</h6>
                </div>
                <div class="card-body pt-4 p-3">
                    <ul class="list-group">
                        <li class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg">
                            <div class="d-flex flex-column">
                                <div class="col-auto">
                                    <div class="avatar avatar-xxl position-relative">
                                        <img src="<?= base_url(''); ?>/img/<?= $users->user_image; ?>" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                                    </div>
                                </div>
                                <h6 class="mb-3 text-sm"><?= $users->username; ?></h6>
                                <span class="mb-2 text-sm">Username : <span class="text-dark font-weight-bold ms-sm-2"><?= $users->username; ?></span></span>
                                <span class="mb-2 text-sm">Email Address: <span class="text-dark ms-sm-2 font-weight-bold"><?= $users->email; ?></span></span>
                                <span class="text-sm">Role : <span class="text-dark ms-sm-2 font-weight-bold"><?= $users->name; ?></span></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>