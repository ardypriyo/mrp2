<div class="modal fade" id="tambahBOM" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Bom/insertParent' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Bill of Material</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label">Part No</label>
                                <select name="part" class="form-control select2bs4" id="kode" required>
                                    <option value="">Pilih Part No.</option>
                                    <?php
                                        foreach($part as $p)
                                        {
                                            ?>
                                                <option value="<?php echo $p->id ?>"><?php echo $p->kode; ?></option>
                                            <?php
                                        }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nama Part</label>
                                <input type="text" name="nama" class="form-control" readonly id="nama">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Spesifikasi</label>
                                <input type="text" name="spesifikasi" class="form-control" readonly id="spesifikasi">
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label">Berat Part</label>
                                <div class="row">
                                    <div class="col-8">
                                        <input type="text" name="berat" class="form-control" readonly id="berat">
                                    </div>

                                    <div class="col-4">
                                        <input type="text" readonly class="form-control" id="satuan2">
                                    </div>
                                </div>                                
                            </div>
                            <div class="form-group">
                                <label class="control-label">Qty Per Bag</label>
                                <div class="row">
                                    <div class="col-8">
                                        <input type="text" name="qty2" class="form-control" readonly id="qty2">
                                    </div>

                                    <div class="col-4">
                                        <input type="text" class="form-control" readonly id="satuan1">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Mass Increament</label>
                                <div class="row">
                                    <div class="col-8">
                                        <input type="text" name="qty" class="form-control" readonly id="qty">
                                    </div>
                                    <div class="col-4">    
                                        <input type="text" name="nama_satuan" class="form-control" readonly id="nama_satuan">
                                        <input type="hidden" name="satuan" class="form-control" readonly id="satuan">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Simpan</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>