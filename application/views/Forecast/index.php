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
                                            <tbody>
                                                <?php
                                                    $no = 1;
                                                    foreach($data as $row)
                                                    {
                                                        ?>
                                                            <tr>
                                                                <td><?php echo $no++; ?></td>
                                                                <td><?php echo $row->kode; ?></td>
                                                                <td><?php echo date('d-M-Y', strtotime($row->tanggal)); ?></td>
                                                                <td><?php echo $row->nama_customer; ?></td>
                                                                <td>
                                                                    <?php 
                                                                        if($row->tipe == '1')
                                                                        {
                                                                            echo "Domestik";
                                                                        } 
                                                                        elseif($row->tipe == '2')
                                                                        {
                                                                            echo "Export";
                                                                        }
                                                                        elseif($row->tipe == '3')
                                                                        {
                                                                            echo "Semua";
                                                                        }
                                                                    ?>
                                                                </td>
                                                                <td>
                                                                    <?php 
                                                                        if($row->status == '0')
                                                                        {
                                                                            echo "<span class=\"badge badge-danger\">Unprocess</span>";
                                                                        }
                                                                        elseif($row->status == '1')
                                                                        {
                                                                            echo "<span class=\"badge badge-success\">Done</success>";
                                                                        }
                                                                    ?>
                                                                </td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?php echo base_url().'Forecast/detail/'.$row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-eye"></i></a>
                                                                        <a href="" class="btn btn-xs btn-danger"><i class="fas fa-trash"></i></a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        <?php
                                                    }
                                                ?>
                                            </tbody>
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