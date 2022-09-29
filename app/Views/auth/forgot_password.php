<?= $this->extend('auth/templates/auth_layout'); ?>

<?= $this->section('content'); ?>

<div class="page-header align-items-start min-vh-100" style="background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80');">
    <span class="mask bg-gradient-dark opacity-6"></span>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <div class="card z-index-0 fadeIn3 fadeInBottom">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                            <h4 class="text-white font-weight-bolder text-center mt-2 mb-0"><?= lang('Auth.forgotPassword') ?></h4>
                        </div>
                        <hr>
                        <p><?= lang('Auth.enterEmailForInstructions') ?></p>
                        <hr>
                    </div>
                    <div class="card-body">

                        <?= view('Myth\Auth\Views\_message_block') ?>
                        <form action="<?= route_to('forgot') ?>" method="post">
                            <?= csrf_field() ?>

                            <div class="input-group input-group-outline my-3">
                                <label class="form-label"><?= lang('Auth.emailAddress') ?></label>
                                <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="email">
                                <div class="invalid-feedback">
                                    <?= session('errors.email') ?>
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2"><?= lang('Auth.sendInstructions') ?></button>
                            </div>
                        </form>

                        <?php if ($config->allowRegistration) : ?>
                            <p class="mt-4 text-sm text-center">
                                <?= lang('Auth.needAnAccount') ?>
                                <a href="<?= route_to('register') ?>" class="text-primary text-gradient font-weight-bold">Sign up</a>
                            </p>
                        <?php endif; ?>
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
</div>


<?= $this->endSection(); ?>