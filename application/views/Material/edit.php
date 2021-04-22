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
                        <div class="col-4">
                            <div class="card">
                                <form method="POST" action="<?php echo base_url().'Material/update'; ?>">
                                    <div class="card-header">
                                        <h3 class="card-title">Edit Master Material</h3>
                                    </div>

                                    <div class="card-body">
                                        <div class="form-group">
                                            <label class="control-label">Kode Material</label>
                                            <input type="text" name="kode" value="<?php echo $edit['kode'] ?>" autocomplete="off" class="form-control" required maxlength="25" style="text-transform: uppercase;" placeholder="PPBF970AI">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Nama Material</label>
                                            <input type="text" name="nama" value="<?php echo $edit['nama'] ?>" autocomplete="off" class="form-control" maxlength="255" style="text-transform: capitalize;" placeholder="Protector">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Spesifikasi</label>
                                            <input type="text" name="spesifikasi" value="<?php echo $edit['spesifikasi'] ?>" autocomplete="off" class="form-control" maxlength="255" style="text-transform: capitalize;" placeholder="Black">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Tipe Material</label>
                                            <select name="tipe" class="from-control select2bs4" style="width: 100%;" required>
                                                <option value="">Pilih Tipe Material</option>
                                                <option value="1" <?php if($edit['tipe_material'] == '1'){ ?> selected <?php } ?>>Parts</option>
                                                <option value="2" <?php if($edit['tipe_material'] == '2'){ ?> selected <?php } ?>>Raw Material</option>
                                                <option value="3" <?php if($edit['tipe_material'] == '3'){ ?> selected <?php } ?>>Child Parts</option>
                                                <option value="4" <?php if($edit['tipe_material'] == '4'){ ?> selected <?php } ?>>Auxiliary</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Satuan</label>
                                            <select name="satuan" class="form-control select2bs4" style="width: 100%;" required>
                                                <option value="">Pilih Satuan</option>
                                                <?php
                                                    foreach($satuan as $s)
                                                    {
                                                        ?>
                                                            <option value="<?php echo $s->id; ?>" <?php if($edit['satuan'] == $s->id){ ?> selected <?php } ?>><?php echo $s->nama; ?></option>
                                                        <?php
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Berat Parts (g)</label>
                                            <input type="text" name="berat" value="<?php echo $edit['berat'] ?>" class="form-control" placeholder="8.40" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Mass Increament</label>
                                            <input type="text" name="qty" class="form-control" value="<?php echo $edit['qty'] ?>" placeholder="500" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Qty Per Bag</label>
                                            <input type="text" name="qty2" class="form-control" value="<?php echo $edit['qty2']; ?>" placeholder="500" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Project</label>
                                            <select name="project" class="form-control select2bs4" style="width: 100%;">
                                                <option value="">Pilih Project</option>
                                                <?php
                                                    foreach($project as $p)
                                                    {
                                                        ?>
                                                            <option value="<?php echo $p->id; ?>" <?php if($edit['project'] == $p->id){ ?> selected <?php } ?>><?php echo $p->nama; ?></option>
                                                        <?php
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Customer</label>
                                            <select name="customer" class="form-control select2bs4" style="width: 100%;">
                                                <option value="">Pilih Customer</option>
                                                <?php
                                                    foreach($customer as $c)
                                                    {
                                                        ?>
                                                            <option value="<?php echo $c->id; ?>" <?php if($edit['customer'] == $c->id){ ?> se <?php } ?>><?php echo $c->nama; ?></option>
                                                        <?php
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Other</label>
                                            <select name="other" class="form-control select2bs4" style="width: 100%;" id="properties">
                                                <option value="">Other</option>
                                                <option value="1" <?php if($edit['other'] == '1') { ?> selected <?php } ?>>Domestik</option>
                                                <option value="2" <?php if($edit['other'] == '2') { ?> selected <?php } ?>>Esport</option>
                                                <option value="3" <?php if($edit['other'] == '3') { ?> selected <?php } ?>>Virgin</option>
                                                <option value="4" <?php if($edit['other'] == '4') { ?> selected <?php } ?>>Master Batch</option>
                                                <option value="5" <?php if($edit['other'] == '5') { ?> selected <?php } ?>>Mixing</option>
                                                <option value="5" <?php if($edit['other'] == '6') { ?> selected <?php } ?>>Regrind</option>
                                            </select>
                                        </div>
                                        <?php
                                            if($edit['other'] === '5')
                                            {
                                                ?>
                                                    <div class="form-group" id="virgin">
                                                        <label class="control-label">Virgin</label>
                                                        <input type="text" name="virgin" class="form-control" maxlength="11" value="<?php echo $edit['virgin']; ?>">
                                                    </div>
                                                <?php
                                            }
                                            if($edit['other'] === '5')
                                            {
                                                ?>
                                                    <div class="form-group" id="mb">
                                                        <label class="control-label">Master Batch</label>
                                                        <input type="text" name="mb" class="form-control" maxlength="11" value="<?php echo $edit['mb'] ?>">
                                                    </div>
                                                <?php
                                            }
                                            if($edit['other'] === '5')
                                            {
                                                ?>
                                                    <div class="form-group" id="regrind">
                                                        <label class="control-label">Regrind</label>
                                                        <input type="text" name="regrind" class="form-control" maxlength="11" value="<?php echo $edit['regrind'] ?>">
                                                    </div>
                                                <?php
                                            }
                                        ?>                                        
                                        <!-- <div class="form-group"> -->
                                            <!-- <label class="control-label">Id</label> -->
                                            <input type="hidden" name="id" class="form-control" readonly value="<?php echo $edit['id']; ?>">
                                        <!-- </div> -->
                                    </div>

                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-success"><i class="fas fa-save"></i> Simpan</button>
                                        <a href="<?php echo base_url().'Material' ?>" class="btn btn-default float-right"><i class="fas fa-times"></i> Batal</a>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-8">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Daftar Material</h3>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered" id="data1">
                                            <thead>
                                                <th>No.</th>
                                                <th>Kode Material</th>
                                                <th>Nama Material</th>
                                                <th>Spesifikasi</th>
                                                <th>Satuan</th>
                                                <th>Project</th>
                                                <th>Customer</th>
                                                <th>Berat</th>
                                                <th>Mass Increament</th>
                                                <th>Tipe Material</th>
                                                <th>#</th>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $no=1;
                                                    foreach($material as $row)
                                                    {
                                                        ?>
                                                            <tr>
                                                                <td><?php echo $no++; ?></td>
                                                                <td><?php echo $row->kode; ?></td>
                                                                <td><?php echo $row->nama; ?></td>
                                                                <td><?php echo $row->spesifikasi; ?></td>
                                                                <td><?php echo $row->namaSatuan; ?></td>
                                                                <td><?php echo $row->namaProject; ?></td>
                                                                <td><?php echo $row->namaCustomer; ?></td>
                                                                <td><?php echo $row->berat; ?></td>
                                                                <td><?php echo $row->qty; ?></td>
                                                                <td>
                                                                    <?php
                                                                        switch($row->tipe_material)
                                                                        {
                                                                            case 1:
                                                                                echo "Parts";
                                                                            break;
                                                                            case 2:
                                                                                echo "Raw Material";
                                                                            break;
                                                                            case 3:
                                                                                echo "Child Parts";
                                                                            break;
                                                                            case 4:
                                                                                echo "Auxiliary";
                                                                            break;
                                                                        }
                                                                    ?>
                                                                </td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?php echo base_url().'Material/edit/'.$row->id; ?>" class="btn btn-xs btn-warning"><i class="fas fa-edit"></i></a>
                                                                        <button type="button" data-toggle="modal" data-target="#hapusMaterial" data-id="<?php echo $row->id; ?>" class="btn btn-xs btn-danger"><i class="fas fa-trash"></i></button>
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
                                        $this->load->view('Material/modal');
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $('#hapusMaterial').on('show.bs.modal', function (e){
                var div = $(e.relatedTarget).data('id');
                var modal = $(this);

                modal.find('.modal-body input').val(div)
            });

            $('document').ready(function(){                
                $('#properties').change(function(){
                    var kode = $(this).val();

                    if(kode == '5')
                    {
                        $('#virgin').show();
                        $('#mb').show();
                        $('#regrind').show();
                    }
                    else
                    {
                        $('#virgin').hide();
                        $('#mb').hide();
                        $('#regrind').hide();
                    }
                });
            });
        </script>