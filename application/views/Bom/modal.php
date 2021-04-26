<div class="modal fade" id="tambahBOM" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable" role="document">
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

<div class="modal fade" id="tambahDetail" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Bom/insertDetail' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Detail BOM</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">Material</label>
                        <select name="material" class="form-control select2bs4" id="material">
                            <option value="">Pilih Material</option>
                            <?php
                                foreach($material as $m)
                                {
                                    ?>
                                        <option value="<?php echo $m->id ?>"><?php echo $m->kode." / ".$m->nama; ?></option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Berat Part</label> -->
                        <input type="hidden" name="berat" class="form-control" readonly value="<?php echo $detail['berat'] ?>">
                    <!-- </div> -->
                    <div class="form-group">
                        <label class="control-label">Qty</label>
                        <input type="text" name="qty_detail" class="form-control" maxlength="11" autocomplete="off">
                        <input type="hidden" name="qty_bom" class="form-control" readonly value="<?php echo $detail['qty'] ?>">
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">ID BOM</label> -->
                        <input type="hidden" name="id_bom" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                    <!-- </div> -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Simpan</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="editDetail" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Bom/updateDetail'; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Detail BOM</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">Material</label>
                        <select name="material" class="form-control select2bs4" id="material_edit">
                            <option value="">Pilih Material</option>
                            <?php
                                foreach($material as $m)
                                {
                                    ?>
                                        <option value="<?php echo $m->id ?>"><?php echo $m->kode." / ".$m->nama; ?></option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Berat Part</label> -->
                        <input type="hidden" name="berat" class="form-control" readonly value="<?php echo $detail['berat'] ?>">
                    <!-- </div> -->
                    <div class="form-group">
                        <label class="control-label">Qty</label>
                        <input type="text" name="qty_detail" class="form-control" maxlength="11">
                        <input type="hidden" name="qty_bom" class="form-control" readonly value="<?php echo $detail['qty'] ?>">
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">ID BOM</label> -->
                        <input type="hidden" name="id_bom" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <label class="control-label">ID Detail</label>
                        <input type="hidden" name="id_detail" class="form-control" readonly id="id_detail">
                    <!-- </div> -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Simpan</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>