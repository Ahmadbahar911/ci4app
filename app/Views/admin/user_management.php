<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid py-4">
    <div class="row">
        <h3 class="font-weight-bolder text-center mt-2 mb-0"><?= $title; ?></h3>
        <div class="col-12">
            <div class="card my-4">
                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">Tabel Data User Yang Terdaftar</h6>
                    </div>
                </div>
                <div class="card-body px-0 pb-2">
                    <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7">User</th>
                                    <th class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7 ps-3">Role</th>
                                    <th class="text-secondary text-uppercase text-xs font-weight-bolder opacity-7 ps-2">Created At</th>
                                    <th class="text-secondary text-uppercase text-xs font-weight-bolder opacity-7">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($users as $user) : ?>
                                    <tr>
                                        <td class="align-middle text-center">
                                            <div class="d-flex px-2 py-1 align-middle text-center">
                                                <div>
                                                    <img src="<?= base_url(''); ?>/img/<?= user()->user_image ?>" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="mb-0 text-sm"><?= $user->username; ?></h6>
                                                    <p class="text-xs text-secondary mb-0"><?= $user->email; ?></p>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="mb-0"><?= $user->name; ?></td>
                                        <td class=""><?= date($user->created_at); ?></td>
                                        <td>
                                            <a href="<?= base_url('admin/' . $user->userid) ?>" class="btn btn-info">Detail</a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>