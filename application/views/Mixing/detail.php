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
                                <form method="POST" action="<?php echo base_url().'Mixing/insertParent'; ?>">
                                    <div class="card-header">
                                        <a href="<?php echo base_url().'Mixing' ?>" class="btn btn-secondary"><i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
                                        <a href="" data-toggle="modal" data-target="#editMixing" data-id="<?php echo $detail['id'] ?>" class="btn btn-default"><i class="fas fa-edit"></i> Edit</a>
                                        <a href="" data-toggle="modal" data-target="#tambahMixing" class="btn btn-default"><i class="fas fa-plus-circle"></i> Tambah BOM</a>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label class="control-label">Kode Mixing</label>
                                                    <input type="text" name="kode" class="form-control" readonly value="<?php echo $detail['kode']; ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Material Mixing</label>
                                                    <input type="text" name="material" class="form-control" readonly value="<?php echo $detail['kode_material'] ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Nama Material</label>
                                                    <input type="text" name="nama" class="form-control" readonly value="<?php echo $detail['nama_material'] ?>">
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label class="'control-label">Spesifikasi</label>
                                                    <input type="text" name="spesifikasi" class="form-control" readonly value="<?php echo $detail['spesifikasi'] ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Qty</label>
                                                    <input type="text" name="qty" readonly class="form-control" required value="<?php echo $detail['qty'] ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Satuan</label>
                                                    <input type="text" name="nama_satuan" class="form-control" readonly value="<?php echo $detail['nama_satuan'] ?>">
                                                </div>
                                                <!-- <div class="form-group"> -->
                                                    <!-- <label class="'control-label">Satuan</label> -->
                                                    <input type="hidden" name="satuan" class="form-control" readonly  value="<?php echo $detail['satuan'] ?>">
                                                    <input type="hidden" name="kode_material" class="form-control" readonly >
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <button type="button" data-toggle="modal" data-target="#tambahDetail" class="btn btn-default"><i class="fas fa-plus-circle"></i> Tambah Material</button>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="data1">
                                            <thead>
                                                <th>No.</th>
                                                <th>Kode Material</th>
                                                <th>Nama Material</th>
                                                <th>Spesifikasi</th>
                                                <th>Qty</th>
                                                <th>Satuan</th>
                                                <th>#</th>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $no=1;
                                                    foreach($child as $row)
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
                                                                    <div class="btn-group">
                                                                        <a href="" data-toggle="modal" data-target="#editDetail" data-id="<?php echo $row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i></a>
                                                                        <a href="" data-toggle="modal" data-target="#hapusDetail" data-id="<?php echo $row->id; ?>" class="btn btn-xs btn-danger"><i class="fas fa-trash"></i></a>
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

        <script>
            $('#editMixing').on('show.bs.modal', function(){
                $('#kode').change(function(){
                    var kode = $(this).val();

                    $.ajax({
                        method : 'POST',
                        url : '<?php echo base_url().'Mixing/getData'; ?>',
                        data : {kode:kode},
                        async : true,
                        dataType : 'json',
                        success: function(data){
                            $('#nama').val(data.nama);
                            $('#spesifikasi').val(data.spesifikasi);
                            $('#satuan').val(data.satuan);
                            $('#nama_satuan').val(data.nama_satuan);
                            $('#total').val(data.total);
                            $('#kode_material').val(data.kode_material);
                        },
                            error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                });
            });

            $('#tambahMixing').on('show.bs.modal', function(e){
                $('#mixing').change(function(){
                    var kode = $(this).val();

                    
                    $.ajax({
                        method : 'POST',
                        url : '<?php echo base_url().'Mixing/getData'; ?>',
                        data : {kode:kode},
                        async : true,
                        dataType : 'json',
                        success: function(data){
                            $('#add_nama').val(data.nama);
                            $('#add_spesifikasi').val(data.spesifikasi);
                            $('#add_satuan').val(data.satuan);
                            $('#add_nama_satuan').val(data.nama_satuan);
                            $('#add_total').val(data.total);
                            $('#add_kode_material').val(data.kode_material);
                        },
                            error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                });
            });

            $('#hapusDetail').on('show.bs.modal', function(e){
                var data = $(e.relatedTarget).data('id');
                var modal = $(this);
                
                modal.find('#id_detail').attr("value", data);
            });

            $('#editDetail').on('show.bs.modal', function(e){
                var data = $(e.relatedTarget).data('id');
                var modal = $(this);

                modal.find('#editIDDetail').attr("value", data);
            });
        </script>