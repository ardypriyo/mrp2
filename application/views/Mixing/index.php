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
                                    <a href="<?php echo base_url().'Mixing/add' ?>" class="btn btn-success"><i class="fas fa-plus-circle"></i> Tambah Material Mixing</a>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="data1">
                                            <thead>
                                                <th>No.</th>
                                                <th>Material Mixing</th>
                                                <th>Nama Material</th>
                                                <th>Spesifikasi</th>
                                                <th>Qty</th>
                                                <th>Satuan</th>
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
                                                                <td><?php echo $row->kode_material; ?></td>
                                                                <td><?php echo $row->nama_material; ?></td>
                                                                <td><?php echo $row->spesifikasi; ?></td>
                                                                <td><?php echo $row->qty; ?></td>
                                                                <td><?php echo $row->nama_satuan; ?></td>
                                                                <td>
                                                                    <?php
                                                                        if($row->status == '0' AND $row->use_status == '0')
                                                                        {
                                                                            echo "Unapprove";
                                                                        }
                                                                        elseif($row->status == '1' AND $row->use_status == '0')
                                                                        {
                                                                            echo "Approve";
                                                                        }
                                                                        elseif($row->status == '1' AND $row->use_status == '1')
                                                                        {
                                                                            echo "Use";
                                                                        }
                                                                    ?>
                                                                </td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?php echo base_url().'Mixing/detail/'.$row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-eye"></i></a>
                                                                        <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#hapusMixing" data-id="<?php echo $row->id; ?>"><i class="fas fa-trash"></i></button>
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
            </div>
        </div>
        
        <?php
            $this->load->view('Mixing/modal');
        ?>