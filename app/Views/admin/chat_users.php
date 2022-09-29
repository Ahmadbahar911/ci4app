<?= $this->extend('templates/index'); ?>

<?= $this->section('chat_users'); ?>

<div class="container-fluid py-4">
    <div class="row">
        <div class="card">
            <div class="card-header pb-0">
                <div class="col-lg-6 col-7">
                    <h5>Member</h5>
                </div>
            </div>
            <div class="card-body px-0 pb-2">

                <div class="row">
                    <?php foreach ($users as $user) : ?>
                        <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">
                            <div class="card card-blog card-plain">
                                <div class="avatar-group mx-5">
                                    <a href="<?= base_url('chat/' . $user->userid) ?>" class="avatar avatar-xl rounded-circle">
                                        <img src="<?= base_url(''); ?>/img/<?= user()->user_image ?>">
                                    </a>
                                </div>
                                <div class=" card-body p-3">
                                    <p class="mb-0 text-sm"><?= $user->email; ?></p>
                                    <a href="<?= base_url('chat/' . $user->userid) ?>">
                                        <h5>
                                            <?= $user->username; ?>
                                        </h5>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>

            </div>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>