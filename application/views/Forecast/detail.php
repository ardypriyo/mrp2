        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0"><?php echo $judul; ?></h1>
                        </div>
                    </div>
                </div>
            </div>

            <section class="content">
                <div class="container-fluid">
                    <?php
                        $this->load->view('include/error');
                    ?>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <a href="<?php echo base_url().'Forecast'; ?>" class="btn btn-secondary"><i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
                                    <a href="" class="btn btn-default"><i class="fas fa-edit"></i> Edit</a>
                                    <a href="" class="btn btn-default"><i class="fas fa-plus-circle"></i> Buat Forecast Baru</a>
                                </div>

                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label class="control-label">No. Dokumen</label>
                                                <input type="text" name="kode" class="form-control" value="<?php echo $detail['kode']; ?>" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Tanggal</label>
                                                <input type="text" name="tanggal" class="form-control" value="<?php echo $detail['tanggal']; ?>" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Customer</label>
                                                <input type="text" name="customer" class="form-control" value="<?php echo $detail['customer']; ?>" readonly>
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <div class="form-group">
                                                <label class="control-label">Project</label>
                                                <?php
                                                    if($detail['id_project'] == '0')
                                                    {
                                                        $project = "Semua Project";
                                                    }
                                                    else
                                                    {
                                                        $project = $detail['project'];
                                                    }
                                                ?>
                                                <input type="text" name="project" class="form-control" value="<?php echo $project; ?>" readonly>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label">Tipe Forecast</label>
                                                <?php
                                                    if($detail['tipe'] == '1')
                                                    {
                                                        $tipe = "Domestik";
                                                    }
                                                    elseif($detail['tipe'] == '2')
                                                    {
                                                        $tipe = "Eksport";
                                                    }
                                                    elseif($detail['tipe'] == '3')
                                                    {
                                                        $tipe = "Semua";
                                                    }
                                                ?>
                                                <input type="text" name="tipe" class="form-control" value="<?php echo $tipe; ?>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <button type="button" data-toggle="modal" data-target="#loadMaterial" class="btn btn-default"><i class="fas fa-download"></i> Load Material</button>
                                </div>

                                <div class="card-body">
                                    <?php
                                        if(count($child) > 0)
                                        {
                                            ?>
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-hover table-bordered" id="data1">
                                                        <thead>
                                                            <th>No.</th>
                                                            <th>Kode Part</th>
                                                            <th>Nama Part</th>
                                                            <th>Spesifikasi</th>
                                                            <th>Qty</th>
                                                            <th>Satuan</th>
                                                            <th>#</th>
                                                        </thead>
                                                    </table>
                                                </div>
                                            <?php
                                        }
                                        else
                                        {
                                            echo "<p>Tidak Ada Data yang Ditampilkan</p>";
                                        }
                                    ?>
                                </div>

                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php
            $this->load->view('Forecast/modal');
        ?>