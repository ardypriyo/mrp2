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
                                    <button type="button" data-toggle="modal" data-target="#tambahBOM" class="btn btn-success"><i class="fas fa-plus-circle"></i> Buat BOM Baru</a>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="example1">
                                            <thead>
                                                <th>No.</th>
                                                <th>Kode BoM</th>
                                                <th>Part No.</th>
                                                <th>Part Name</th>
                                                <th>Spesification</th>
                                                <th>Qty</th>
                                                <th>UoM</th>
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
                                                                <td><?php echo $row->kode_material; ?></td>
                                                                <td><?php echo $row->nama_material; ?></td>
                                                                <td><?php echo $row->spesifikasi; ?></td>
                                                                <td><?php echo $row->qty; ?></td>
                                                                <td><?php echo $row->nama_satuan; ?></td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?php echo base_url().'Bom/detail/'.$row->id; ?>" class="btn btn-warning btn-xs"><i class="fas fa-eye"></i></a>
                                                                        <a href="" class="btn btn-danger btn-xs"><i class="fas fa-trash"></i></a>
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
                                        $this->load->view('Bom/modal');
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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