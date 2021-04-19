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
                            <form method="POST" action="<?php echo base_url().'Project/insert'; ?>">
                                <div class="card-header">
                                    <h3 class="card-title">Tambah Project Baru</h3>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="control-label">Kode Project</label>
                                        <input type="text" name="kode" autocomplete="off" class="form-control" placeholder="Kode Project" required style="text-transform: uppercase;" id="kode">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Nama Project</label>
                                        <input type="text" name="nama" autocomplete="off" class="form-control" placeholder="Nama Project" required style="text-transform: capitalize;" id="nama">
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-success"><i class="fas fa-save"></i> Simpan Data</button>
                                    <button type="reset" class="btn btn-default float-right"><i class="fas fa-times"></i> Batal</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-8">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Daftar Project</h3>
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
                                                                    <a href="<?php echo base_url().'Project/edit/'.$row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i></a>
                                                                    <button type="button" data-toggle="modal" data-target="#hapusProject" data-id="<?php echo $row->id ?>" class="btn btn-xs btn-danger"><i class="fas fa-trash"></i></button>
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
                                    $this->load->view('Project/modal');
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script>
            $('#hapusProject').on('show.bs.modal', function (e){
                var div = $(e.relatedTarget).data('id');
                var modal = $(this);

                modal.find('.modal-body input').val(div)
            });
        </script>