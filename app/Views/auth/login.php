<?= $this->extend('auth/templates/auth_layout'); ?>

<?= $this->section('content'); ?>

<div class="page-header align-items-start min-vh-100" style="background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80');">
    <span class="mask bg-gradient-dark opacity-6"></span>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-4 col-md-8 col-12 mx-auto">
                <div class="card z-index-0 fadeIn3 fadeInBottom">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                            <h4 class="text-white font-weight-bolder text-center mt-2 mb-0"><?= lang('Auth.loginTitle') ?></h4>



                        </div>
                    </div>
                    <div class="card-body">

                        <?= view('Myth\Auth\Views\_message_block') ?>
                        <form action="<?= route_to('login') ?>" method="post">
                            <?= csrf_field() ?>

                            <?php if ($config->validFields === ['email']) : ?>
                                <div class="input-group input-group-outline my-3">
                                    <label class="form-label"><?= lang('Auth.email') ?></label>
                                    <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login">
                                    <div class="invalid-feedback">
                                        <?= session('errors.login') ?>
                                    </div>
                                </div>

                            <?php else : ?>
                                <div class="input-group input-group-outline my-3">
                                    <label class="form-label"><?= lang('Auth.emailOrUsername') ?></label>
                                    <input type="text" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login">
                                    <div class="invalid-feedback">
                                        <?= session('errors.login') ?>
                                    </div>
                                </div>
                            <?php endif; ?>

                            <div class="input-group input-group-outline mb-3">
                                <label class="form-label"><?= lang('Auth.password') ?></label>
                                <input type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>">
                                <div class="invalid-feedback">
                                    <?= session('errors.password') ?>
                                </div>
                            </div>

                            <?php if ($config->allowRemembering) : ?>
                                <div class="form-check form-switch d-flex align-items-center mb-3">
                                    <label class="form-check-label">
                                        <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                                        <?= lang('Auth.rememberMe') ?>
                                    </label>
                                </div>
                            <?php endif; ?>

                            <div class="text-center">
                                <button type="submit" class="btn bg-gradient-primary w-100 my-4 mb-2"><?= lang('Auth.loginAction') ?></button>
                            </div>
                        </form>

                        <?php if ($config->allowRegistration) : ?>
                            <p class="mt-4 text-sm text-center">
                                <?= lang('Auth.needAnAccount') ?>
                                <a href="<?= route_to('register') ?>" class="text-primary text-gradient font-weight-bold">Sign up</a>
                            </p>
                        <?php endif; ?>

                        <?php if ($config->activeResetter) : ?>
                            <p class="mt-4 text-sm text-center">
                                <?= lang('Auth.forgotYourPassword') ?>
                                <a href="<?= route_to('forgot') ?>" class="text-primary text-gradient font-weight-bold">Forgot Password</a>
                            </p>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>