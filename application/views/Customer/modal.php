<div class="modal fade" id="hapusCustomer" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form method="POST" action="<?php echo base_url().'Customer/delete' ?>">
                <div class="modal-header">

                </div>

                <div class="modal-body">
                    <p>
                        Apakah anda yakin akan menghapus data ini ?
                    </p>
                    <!-- <div class="form-group"> -->
                        <input type="hidden" name="id" class="form-control" readonly id="id">
                    <!-- </div> -->
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger">Hapus</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>
