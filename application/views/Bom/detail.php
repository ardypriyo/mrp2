        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0"><?php echo $judul; ?></h1>
                        </div>
                        <!-- <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                            </ol>
                        </div> -->
                    </div>
                </div>
            </div>

            <div class="content">
                <div class="container-fluid">
                    <?php
                        $this->load->view('include/error');
                    ?>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <a href="<?php echo base_url().'Bom'; ?>" class="btn btn-secondary"><i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
                                    <?php
                                        if($detail['status'] == '1')
                                        {
                                            ?>
                                                <a href="" class="btn btn-primary"><i class="fas fa-check-circle"></i> Approve</a>
                                            <?php
                                        }
                                        if($detail['status'] == '2')
                                        {
                                            ?>
                                                <a href="" class="btn btn-primary"><i class="fas fa-check-circle"></i> Use</a>
                                            <?php
                                        }
                                        if($detail['use'] == '1')
                                        {
                                            ?>
                                                <a href="" class="btn btn-primary"><i class="fas fa-times"></i> De-Approve</a>
                                            <?php
                                        }
                                    ?>
                                    <a href="" class="btn btn-success"><i class="fas fa-plus-circle"></i> Buat BOM Baru</a>
                                    <a href="" class="btn btn-default"><i class="fas fa-copy"></i> Copy BOM</a>
                                    <?php
                                        if($detail['status'] == '1')
                                        {
                                            ?>
                                                <a href="" class="btn btn-danger"><i class="fas fa-trash"></i> Hapus BOM</a>
                                            <?php
                                        }
                                    ?>
                                </div>

                                <div class="card-body">
                                </div>

                                <div class="card-footer">
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <a href="" data-toggle="modal" data-target="#tambahDetail" class="btn btn-success"><i class="fas fa-plus-circle"></i> Tambah Material</a>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="data1">
                                            <thead>
                                                <th>No.</th>
                                                <th>Kode Material</th>
                                                <th>Nama Material</th>
                                                <th>Spesifikasi</th>
                                                <th>Usage</th>
                                                <th>#</th>
                                            </thead>
                                        </table>
                                    </div>
                                </div>

                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>