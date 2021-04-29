        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <a href="index3.html" class="brand-link">
                <img src="<?php echo base_url().'assets/dist/img/AdminLTELogo.png'; ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">AdminLTE 3</span>
            </a>

            <div class="sidebar">
                <!-- <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<?php echo base_url().'assets/dist/img/user2-160x160.jpg'; ?>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Alexander Pierce</a>
                    </div>
                </div> -->

                <!-- <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div> -->

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">TRANSAKSI</li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Forecast'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Forecast
                                </p>
                            </a>
                        </li>
                        <!-- <li class="nav-header">REPORT</li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Forecast/result'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Forecast Result
                                </p>
                            </a>
                        </li> -->
                        <li class="nav-header">PLAN</li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Bom'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    BOM
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Mixing'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Mixing Material
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">MASTER DATA</li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Material'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Material
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Satuan'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Satuan
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Project'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Project
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url().'Customer'; ?>" class="nav-link">
                                <i class="nav-icon fas fa-box"></i>
                                <p>
                                    Customer
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>