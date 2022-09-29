<?= $this->extend('auth/templates/auth_layout'); ?>

<?= $this->section('content'); ?>
<section>
    <div class="page-header min-vh-100">
        <div class="container">
            <div class="row">
                <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
                    <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center" style="background-image: url('<?= base_url(''); ?>/img/illustrations/illustration-signup.jpg'); background-size: cover;">
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5">
                    <div class="card card-plain">
                        <div class="card-header">
                            <h4 class="font-weight-bolder"><?= lang('Auth.register') ?></h4>
                            <p class="mb-0">Enter your data to register</p>
                        </div>
                        <div class="card-body">

                            <?= view('Myth\Auth\Views\_message_block') ?>

                            <form action="<?= route_to('register') ?>" method="post">
                                <?= csrf_field() ?>

                                <div class="input-group input-group-outline mb-3">
                                    <label class="form-label"><?= lang('Auth.email') ?></label>
                                    <input type="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" value="<?= old('email') ?>">
                                    <small id="emailHelp" class="form-text text-muted"><?= lang('Auth.weNeverShare') ?></small>
                                </div>

                                <div class="input-group input-group-outline mb-3">
                                    <label for="username" class="form-label"><?= lang('Auth.username') ?></label>
                                    <input type="text" class="form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" value="<?= old('username') ?>">
                                </div>

                                <div class="input-group input-group-outline mb-3">
                                    <label for="fullname" class="form-label">Full Name</label>
                                    <input class="form-control" name="fullname" value="<?= old('fullname') ?>">
                                </div>

                                <div class="input-group input-group-outline mb-3">
                                    <label class="form-label"><?= lang('Auth.password') ?></label>
                                    <input type="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" name="password" autocomplete="off">
                                </div>

                                <div class="input-group input-group-outline mb-3">
                                    <label class="form-label"><?= lang('Auth.repeatPassword') ?></label>
                                    <input type="password" name="pass_confirm" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" autocomplete="off">
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0"><?= lang('Auth.register') ?></button>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-center pt-0 px-lg-2 px-1">
                            <p class="mb-2 text-sm mx-auto">
                                <?= lang('Auth.alreadyRegistered') ?>
                                <a href="<?= route_to('login') ?>" class="text-primary text-gradient font-weight-bold"><?= lang('Auth.signIn') ?></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection(); ?>