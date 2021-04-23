<div class="modal fade" id="tambahDetail" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/insertDetail'; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Material</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">Kode Material</label>
                        <select name="material" class="form-control select2bs4" id="" required>
                            <option value="">Pilih Material</option>
                            <?php
                                foreach($material as $row)
                                {
                                    ?>
                                        <option value="<?php echo $row->id ?>"><?php echo $row->kode.' / '.$row->nama; ?></option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">ID Mixing</label> -->
                        <input type="hidden" name="id_mixing" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">virgin</label> -->
                        <input type="hidden" name="virgin" class="form-control" readonly value="<?php echo $detail['virgin'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Master Batch</label> -->
                        <input type="hidden" name="mb" class="form-control" readonly value="<?php echo $detail['mb'] ?>">
                        <input type="hidden" name="regrind" class="form-control" readonly value="<?php echo $detail['regrind'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Total</label> -->
                        <input type="hidden" name="total" class="form-control" readonly value="<?php echo $detail['qty'] ?>">
                    <!-- </div> -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Tambah</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="hapusDetail" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/deleteDetail' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Konfirmasi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <p>
                        Apakah Anda Yakin Akan Menghapus Data Ini ?
                    </p>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Id Detail</label> -->
                        <input type="hidden" name="id_detail" class="form-control" readonly id="id_detail">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Id Mixing</label> -->
                        <input type="hidden" name="id_mixing" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                    <!-- </div> -->
                </div>
                
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Hapus</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="editDetail" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/updateDetail' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Material</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label">Kode Material</label>
                        <select name="material" class="form-control select2bs4" id="material_detail" required>
                            <option value="">Pilih Material</option>
                            <?php
                                foreach($material as $row)
                                {
                                    ?>
                                        <option value="<?php echo $row->id ?>"><?php echo $row->kode.' / '.$row->nama; ?></option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">ID Mixing</label> -->
                        <input type="hidden" name="id_mixing" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                        <input type="hidden" name="id_detail" class="form-control" readonly id="editIDDetail">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">virgin</label> -->
                        <input type="hidden" name="virgin" class="form-control" readonly value="<?php echo $detail['virgin'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Master Batch</label> -->
                        <input type="hidden" name="mb" class="form-control" readonly value="<?php echo $detail['mb'] ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Total</label> -->
                        <input type="hidden" name="total" class="form-control" readonly value="<?php echo $detail['qty'] ?>">
                    <!-- </div> -->
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="editMixing" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/updateParent'; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Mixing Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
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
                                <input type="hidden" name="id_mixing" class="form-control" readonly value="<?php echo $detail['id'] ?>">
                            <!-- </div> -->
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="tambahMixing" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/insertParent'; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Mixing Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label">Material Mixing</label>
                                <select name="kode" class="form-control select2bs4" id="mixing" required>
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
                                <input type="text" name="nama" class="form-control" readonly id="add_nama">
                            </div>
                            <div class="form-group">
                                <label class="'control-label">Spesifikasi</label>
                                <input type="text" name="spesifikasi" class="form-control" readonly id="add_spesifikasi">
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="form-group">
                                <label class="'control-label">Qty</label>
                                <input type="text" name="qty" readonly class="form-control" required id="add_total">
                            </div>
                            <div class="form-group">
                                <label class="'control-label">Satuan</label>
                                <input type="text" name="nama_satuan" class="form-control" readonly id="add_nama_satuan">
                            </div>
                            <!-- <div class="form-group"> -->
                                <!-- <label class="'control-label">Satuan</label> -->
                                    <input type="hidden" name="satuan" class="form-control" readonly id="add_satuan">
                                    <input type="hidden" name="kode_material" class="form-control" readonly id="add_kode_material">
                            <!-- </div> -->
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="hapusMixing" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Mixing/deleteData' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Konfirmasi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger">Hapus</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>