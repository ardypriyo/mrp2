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
                                    <a href="" class="btn btn-default"><i class="fas fa-edit"></i> Edit</a>
                                    <a href="" class="btn btn-default" data-toggle="modal" data-target="#tambahBOM"><i class="fas fa-plus-circle"></i> Buat BOM Baru</a>
                                </div>

                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label class="control-label">Kode BOM</label>
                                                <input type="text" name="kode" class="form-control" readonly value="<?php echo $detail['kode']; ?>">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Part No</label>
                                                <input type="text" name="part" class="form-control" readonly value="<?php echo $detail['kode_material'] ?>">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Nama Part</label>
                                                <input type="text" name="nama_material" class="form-control" readonly value="<?php echo $detail['nama_material'] ?>">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Spesifikasi</label>
                                                <input type="text" name="spesifikasi" class="form-control" readonly value="<?php echo $detail['spesifikasi'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label class="control-label">Berat Part</label>
                                                <div class="row">
                                                    <div class="col-8">
                                                        <input type="text" name="berat" class="form-control" readonly value="<?php echo $detail['berat'] ?>">
                                                    </div>
                                                    <div class="col-4">
                                                        <input type="text" name="satuan" class="form-control" readonly value="Gram">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Qty Per Bag</label>
                                                <div class="row">
                                                    <div class="col-8">
                                                        <input type="text" name="berat" class="form-control" readonly value="<?php echo $detail['qty2'] ?>">
                                                    </div>
                                                    <div class="col-4">
                                                        <input type="text" name="nama_satuan" class="form-control" readonly value="<?php echo $detail['nama_satuan'] ?>">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Qty</label>
                                                <div class="row">
                                                    <div class="col-8">
                                                        <input type="text" name="berat" class="form-control" readonly value="<?php echo $detail['qty'] ?>">
                                                    </div>
                                                    <div class="col-4">
                                                        <input type="text" name="nama_satuan" class="form-control" readonly value="<?php echo $detail['nama_satuan'] ?>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                                                <th>Satuan</th>
                                                <th>#</th>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $no = 1;
                                                    foreach($listDetail as $row)
                                                    {
                                                        ?>
                                                            <tr>
                                                                <td><?php echo $no++; ?></td>
                                                                <td><?php echo $row->kode_material; ?></td>
                                                                <td><?php echo $row->nama_material; ?></td>
                                                                <td><?php echo $row->spesifikasi; ?></td>
                                                                <td><?php echo $row->qty_usage; ?></td>
                                                                <td><?php echo $row->nama_satuan; ?></td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="" class="btn btn-xs btn-warning" data-toggle="modal" data-target="#editDetail" data-id="<?php echo $row->id; ?>"><i class="fas fa-edit"></i></a>
                                                                        <a href="" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#hapusDetail" data-id="<?php echo $row->id; ?>"><i class="fas fa-trash"></i></a>
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
            $this->load->view('Bom/modal');
        ?>

        <script>
            $('#editDetail').on('show.bs.modal', function(e){
                var data = $(e.relatedTarget).data('id');
                var modal = $(this);

                modal.find('#id_detail').attr("value", data);
            });
        </script>
        <script>
            $('#tambahBOM').on('show.bs.modal', function(e){
                $('#kode').change(function(){
                    var kode = $(this).val();

                    $.ajax({
                        method : 'POST',
                        url : '<?php echo base_url().'Bom/getMasterData'; ?>',
                        data : {kode:kode},
                        async : true,
                        dataType : 'json',
                        success: function(data){
                            $('#nama').val(data.nama);
                            $('#spesifikasi').val(data.spesifikasi);
                            $('#berat').val(data.berat);
                            $('#qty').val(data.qty);
                            $('#qty2').val(data.qty2);
                            $('#satuan').val(data.satuan);
                            $('#satuan1').val(data.nama_satuan);
                            $('#satuan2').val(data.satuan2);
                            $('#nama_satuan').val(data.nama_satuan);
                        },
                            error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                });
            });
        </script>