<?php
    if($this->session->flashdata('error'))
    {
        ?>
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h4><i class="icon fa fa-ban"></i> Perhatian !</h4>
                        <?php
                            echo $this->session->flashdata('error');
                        ?>
                    </div>
                </div>
            </div>
        <?php
    }
    if($this->session->flashdata('error1'))
    {
        ?>
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h4><i class="icon fa fa-ban"></i> Perhatian !</h4>
                        <?php
                            foreach($this->session->flashdata('error1') as $e)
                            {
                                echo $e;
                            }     
                        ?>
                    </div>
                </div>
            </div>
        <?php
    }
    elseif($this->session->flashdata('sukses'))
    {
        ?>
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h4><i class="icon fa fa-check"></i> Sukses</h4>
                        <?php
                            echo $this->session->flashdata('sukses');
                        ?>
                    </div>
                </div>
            </div>
        <?php
    }
?> 