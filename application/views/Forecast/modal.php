<div class="modal fade" id="tambahForecast" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Forecast/insertHeader'; ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Forecast</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                
                <div class="modal-body">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label">No. Dokumen Forecast</label>
                                <input type="text" name="kode" class="form-control" readonly id="kode" value="<?php echo $kodeTransaksi ?>">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tanggal Forecast</label>
                                <input type="text" name="tanggal" class="form-control datepicker" id="" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Customer</label>
                                <select name="customer" class="form-control select2bs4" id="customer">
                                    <option value="">Pilih Customer</option>
                                    <?php
                                        foreach($customer as $c)
                                        {
                                            ?>
                                                <option value="<?php echo $c->id ?>"><?php echo $c->nama; ?></option>
                                            <?php
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label">Tipe Forecast</label>
                                <select name="tipe" class="form-control select2bs4" id="tipe">
                                    <option value="">Pilih Tipe Forecast</option>
                                    <option value="1">Domestik</option>
                                    <option value="2">Eksport</option>
                                    <option value="3">Semua</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Project</label>
                                <select name="project" class="form-control select2bs4" id="project">
                                    <option value="">Pilih Project</option>
                                    <option value="0">Semua Project</option>
                                    <?php
                                        foreach($project as $p)
                                        {
                                            ?>
                                                <option value="<?php echo $p->id; ?>"><?php echo $p->kode; ?></option>
                                            <?php
                                        }
                                    ?>
                                </select>
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

<div class="modal fade" id="loadMaterial" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Forecast/downloadData' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Load Material</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">TransID</label> -->
                        <input type="hidden" name="id" class="form-control" readonly value="<?php echo $detail['id']; ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Customer</label> -->
                        <input type="hidden" name="customer" class="form-control" readonly value="<?php echo $detail['id_customer']; ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Project</label> -->
                        <input type="hidden" name="project" class="form-control" readonly value="<?php echo $detail['id_project']; ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Tipe</label> -->
                        <input type="hidden" name="tipe" class="form-control" readonly value="<?php echo $detail['tipe']; ?>">
                    <!-- </div> -->

                    <p>Apakah Anda Yakin Akan Meload Data Part Sesuai Dengan Kriteria yang Diinginkan?
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Download Data</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="prosesForecast" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="dialog">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Forecast/prosesForecast' ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Konfirmasi Proses Forecast</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">Nomor Dokumen</label> -->
                        <input type="hidden" name="no_dokumen" class="form-control" readonly id="no_dokumen_proses" value="<?php echo $detail['kode']; ?>">
                    <!-- </div> -->
                    <!-- <div class="form-group"> -->
                        <!-- <label class="control-label">ID Transaksi</label> -->
                        <input type="hidden" name="id" class="form-control" readonly id="id_proses" value="<?php echo $detail['id'] ?>">
                    <!-- </div> -->

                    <ul>
                        <li>Sebelum melakukan proses, pastikan seluruh data yang terdapat di master data sudah benar</li>
                        <li>Pastikan BOM sudah dibuat dan sudah benar (Mixing maupun BOM Part)</li>
                        <li>Pastikan qty forecast sudah diisi dengan benar</li>
                    </ul>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Proses Forecast</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>