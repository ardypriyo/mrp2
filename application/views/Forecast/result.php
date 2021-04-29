        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0"><?php echo $judul; ?></h1>
                        </div>
                    </div>
                </div>
            </div>

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header p-2">
                                    <ul class="nav nav-pills">
                                        <li class="nav-item"><a class="nav-link active" href="#rm" data-toggle="tab">Raw Material</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#cp" data-toggle="tab">Child Parts</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#aux" data-toggle="tab">Auxiliary</a></li>
                                    </ul>
                                </div>

                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="rm">
                                            <?php
                                                if(count($rm) > 0)
                                                {
                                                    ?>
                                                        <div class="table-responsive">
                                                            <table class="table table-striped table-hover table-bordered" id="rm1">
                                                                <thead>
                                                                    <th>No.</th>
                                                                    <th>Kode Material</th>
                                                                    <th>Nama Material</th>
                                                                    <th>Spesifikaksi</th>
                                                                    <th>Qty MRP</th>
                                                                    <th>Satuan</th>
                                                                </thead>
                                                                <tbody>
                                                                    <?php
                                                                         $a = 1;
                                                                        foreach($rm as $rm)
                                                                        {
                                                                            ?>
                                                                                <tr>
                                                                                    <td><?php echo $a++; ?></td>
                                                                                    <td><?php echo $rm->kode_material; ?></td>
                                                                                    <td><?php echo $rm->nama_material; ?></td>
                                                                                    <td><?php echo $rm->spesifikasi; ?></td>
                                                                                    <td><?php echo number_format($rm->qty); ?></td>
                                                                                    <td><?php echo $rm->nama_satuan; ?></td>
                                                                                </tr>
                                                                            <?php
                                                                        }
                                                                    ?>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    <?php
                                                }
                                                else
                                                {
                                                    echo "Tidak Ada Data";
                                                }
                                            ?>
                                        </div>
                                        <div class="tab-pane fade" id="cp">
                                            <?php
                                                if(count($cp) > 0)
                                                {
                                                    ?>
                                                        <div class="table-responsive">
                                                            <table class="table table-striped table-hover table-bordered" id="cp1">
                                                                <thead>
                                                                    <th>No.</th>
                                                                    <th>Kode Material</th>
                                                                    <th>Nama Material</th>
                                                                    <th>Spesifikaksi</th>
                                                                    <th>Qty MRP</th>
                                                                    <th>Satuan</th>
                                                                </thead>
                                                                <tbody>
                                                                    <?php
                                                                         $c = 1;
                                                                        foreach($cp as $cp)
                                                                        {
                                                                            ?>
                                                                                <tr>
                                                                                    <td><?php echo $c++; ?></td>
                                                                                    <td><?php echo $cp->kode_material; ?></td>
                                                                                    <td><?php echo $cp->nama_material; ?></td>
                                                                                    <td><?php echo $cp->spesifikasi; ?></td>
                                                                                    <td><?php echo number_format($cp->qty); ?></td>
                                                                                    <td><?php echo $cp->nama_satuan; ?></td>
                                                                                </tr>
                                                                            <?php
                                                                        }
                                                                    ?>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    <?php
                                                }
                                                else
                                                {
                                                    echo "Tidak Ada Data";
                                                }
                                            ?>
                                        </div>
                                        <div class="tab-pane fade" id="aux">
                                            <?php
                                                if(count($aux) > 0)
                                                {
                                                    ?>
                                                        <div class="table-responsive">
                                                            <table class="table table-striped table-hover table-bordered" id="aux1">
                                                                <thead>
                                                                    <th>No.</th>
                                                                    <th>Kode Material</th>
                                                                    <th>Nama Material</th>
                                                                    <th>Spesifikaksi</th>
                                                                    <th>Qty MRP</th>
                                                                    <th>Satuan</th>
                                                                </thead>
                                                                <tbody>
                                                                    <?php
                                                                         $c = 1;
                                                                        foreach($aux as $aux)
                                                                        {
                                                                            ?>
                                                                                <tr>
                                                                                    <td><?php echo $a++; ?></td>
                                                                                    <td><?php echo $aux->kode_material; ?></td>
                                                                                    <td><?php echo $aux->nama_material; ?></td>
                                                                                    <td><?php echo $aux->spesifikasi; ?></td>
                                                                                    <td><?php echo number_format($aux->qty); ?></td>
                                                                                    <td><?php echo $aux->nama_satuan; ?></td>
                                                                                </tr>
                                                                            <?php
                                                                        }
                                                                    ?>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    <?php
                                                }
                                                else
                                                {
                                                    echo "Tidak Ada Data";
                                                }
                                            ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
        </div>