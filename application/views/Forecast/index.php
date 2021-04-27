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
                                    <button type="button" data-toggle="modal" data-target="#tambahForecast" class="btn btn-success"><i class="fas fa-plus-circle"></i> Buat Forecast Baru</button>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="example1">
                                            <thead>
                                                <th>No.</th>
                                                <th>No. Dokumen</th>
                                                <th>Tanggal Forecast</th>
                                                <th>Customer</th>
                                                <th>Tipe Forecast</th>
                                                <th>Status</th>
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
            </section>
        </div>

        <?php
            $this->load->view('Forecast/modal');
        ?>