<?= $this->extend('templates/index'); ?>

<?= $this->section('chatting'); ?>

<div class="container-fluid py-4">
    <div class="row">
        <div class="card">
            <div class="card-header pb-0">
                <div class="col-lg-6 col-7">
                    <h5>Chat Area</h5>
                </div>
            </div>
            <div class="card-body px-0 pb-2">

                <section class="chat-area">
                    <header>
                        <a class="back-icon"><i class="fas fa-arrow-left"></i></a>
                        <img src="<?= base_url(''); ?>/img/<?= $users->user_image ?>" alt="">
                        <div class="details">
                            <span><?= $users->username; ?></span>
                            <p></p>
                        </div>
                    </header>

                    <div class="chat-box">
                        <?php
                        $db = \Config\Database::connect();

                        $pengirim = user()->id;
                        $penerima = $users->userid;


                        $sql = "SELECT * FROM `messages` LEFT JOIN `users` ON `users`.`id` = `messages`.`pengirim`
                                WHERE `pengirim` = $pengirim AND `penerima` = $penerima
                                OR `pengirim` = $penerima AND `penerima` = $pengirim ORDER BY `id_pesan`";

                        $pesan = $db->query($sql)->getResultArray();
                        ?>

                        <?php foreach ($pesan as $sm) : ?>
                            <?php if ($pengirim === $sm['pengirim']) : ?>
                                <div class="chat outgoing">
                                    <div class="details">
                                        <?= $sm['pesan']; ?>
                                    </div>
                                </div>
                            <?php else : ?>
                                <div class="chat incoming">
                                    <div class="details">
                                        <img src="<?= base_url() ?>/img/<?= $users->user_image ?>" alt="">
                                        <?= $sm['pesan'];; ?>
                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </div>
                    <form>
                        <div class="form-row">
                            <input name="pengirim" value="<?= user()->id ?>" hidden>
                            <input name="penerima" value="<?= $users->userid ?>" hidden>
                            <div class="col-10">
                                <input type="text" name="pesan" class="form-control" placeholder="Type a message here..." autocomplete="off">
                            </div>

                            <button type="submit" class="btn btn-primary" onclick="store();"> <i class="fab fa-telegram-plane"></i> Send</button>

                        </div>
                    </form>
                </section>

            </div>
        </div>
    </div>
</div>

<script>
    function store() {
        var value = {
            pengirim: $('#pengirim').val(),
            penerima: $('#penerima').val(),
            pesan: $('#pesan').val(),
        }

        $.ajax({
            url: '<?= site_url(); ?>/chat/store',
            type: 'POST',
            data: value,
            dataType: 'JSON'
        });

    }
</script>
<?= $this->endSection(); ?>