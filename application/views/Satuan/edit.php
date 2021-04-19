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

            <section class="content">
                <?php
                    $this->load->view('include/error');
                ?>
                <div class="row">
                    <div class="col-4">
                        <div class="card">
                            <form method="POST" action="<?php echo base_url().'Satuan/update'; ?>">
                                <div class="card-header">
                                    <h3 class="card-title">Tambah Satuan Baru</h3>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="control-label">Kode Satuan</label>
                                        <input type="text" name="kode" value="<?php echo $edit['kode'] ?>" autocomplete="off" class="form-control" placeholder="Kode Satuan" required style="text-transform: uppercase;" id="kode">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Nama satuan</label>
                                        <input type="text" name="nama" autocomplete="off" value="<?php echo $edit['nama'] ?>" class="form-control" placeholder="Nama Satuan" required style="text-transform: capitalize;" id="nama">
                                    </div>
                                    <!-- <div class="form-group"> -->
                                        <!-- <label class="control-label">Id</label> -->
                                        <input type="hidden" name="id" class="form-control" value="<?php echo $edit['id'] ?>" readonly>
                                    <!-- </div> -->
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-success"><i class="fas fa-save"></i> Simpan Data</button>
                                    <a href="<?php echo base_url().'Satuan'; ?>" class="btn btn-default float-right"><i class="fas fa-times"></i> Batal</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-8">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Daftar Satuan</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-bordered" id="example1">
                                        <thead>
                                            <th>No.</th>
                                            <th>Kode</th>
                                            <th>Nama</th>
                                            <th>#</th>
                                        </thead>
                                        <tbody>
                                            <?php
                                                $no =1;
                                                foreach($data as $row)
                                                {
                                                    ?>
                                                        <tr>
                                                            <td><?php echo $no++; ?></td>
                                                            <td><?php echo $row->kode; ?></td>
                                                            <td><?php echo $row->nama; ?></td>
                                                            <td>
                                                                <div class="btn-group">
                                                                    <a href="<?php echo base_url().'Satuan/edit/'.$row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i></a>
                                                                    <button type="button" data-toggle="modal" data-target="#hapusSatuan" data-id="<?php echo $row->id ?>" class="btn btn-xs btn-danger"><i class="fas fa-trash"></i></button>
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
                                <?php
                                    $this->load->view('Satuan/modal');
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script>
            $('#hapusSatuan').on('show.bs.modal', function (e){
                var div = $(e.relatedTarget).data('id');
                var modal = $(this);

                modal.find('.modal-body input').val(div)
            });
        </script>