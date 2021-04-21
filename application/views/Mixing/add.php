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
                                        <button type="submit" class="btn btn-default"><i class="fas fa-save"></i> Simpan</button>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label class="control-label">Material Mixing</label>
                                                    <select name="kode" class="form-control select2bs4" id="kode" required>
                                                        <option value="">Pilih Material</option>
                                                        <?php
                                                            foreach($mix as $m)
                                                            {
                                                                ?>
                                                                    <option value="<?php echo $m->id; ?>"><?php echo $m->kode; ?></option>
                                                                <?php
                                                            }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Nama Material</label>
                                                    <input type="text" name="nama" class="form-control" readonly id="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Spesifikasi</label>
                                                    <input type="text" name="spesifikasi" class="form-control" readonly id="spesifikasi">
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label class="'control-label">Qty</label>
                                                    <input type="text" name="qty" readonly class="form-control" required id="total">
                                                </div>
                                                <div class="form-group">
                                                    <label class="'control-label">Satuan</label>
                                                    <input type="text" name="nama_satuan" class="form-control" readonly id="nama_satuan">
                                                </div>
                                                <!-- <div class="form-group"> -->
                                                    <!-- <label class="'control-label">Satuan</label> -->
                                                    <input type="hidden" name="satuan" class="form-control" readonly id="satuan">
                                                    <input type="hidden" name="kode_material" class="form-control" readonly id="kode_material">
                                                <!-- </div> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $('document').ready(function(){
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
        </script>