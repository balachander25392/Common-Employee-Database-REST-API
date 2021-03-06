  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?= $language['emp_tab']['add_empl'] ?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url() ?>"><i class="fa fa-dashboard"></i> <?= $language['common']['home'] ?></a></li>
        <li class="active"><?= $language['emp_tab']['add_empl'] ?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      
      <div class="row">
        <!-- left column -->
        <div class="col-md-2"></div>
        <div class="col-md-8">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"><?= $language['emp_tab']['add_empl'] ?></h3>
            </div>

            <?php if($this->session->flashdata('flash_msg')) { echo $this->session->flashdata('flash_msg'); } ?>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" id="emp-add-form" action="<?php echo base_url() ?>employee/saveEmployee" method="POST" >
              <div class="box-body">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1"><?= $language['emp_tab']['empl_id'] ?></label>
                    <input type="text" class="form-control" id="emp_id" name="emp_id" required="true" placeholder="Enter Employee ID" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6"> 
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['name'] ?></label>
                    <input type="text" class="form-control" id="emp_name" name="emp_name" required="true" placeholder="Name" autocomplete="off">
                  </div>
                </div>
                <!-- <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['pass'] ?></label>
                    <input type="password" class="form-control" id="emp_pass" name="emp_pass" required="true" placeholder="Password" autocomplete="new-password" readonly="">
                  </div>
                </div> -->
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['emai'] ?></label>
                    <input type="email" class="form-control" id="emp_email" name="emp_email" placeholder="Email" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['desi'] ?></label>
                    <input type="text" class="form-control" id="emp_desig" name="emp_desig" placeholder="Designation (Software Engineer)" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['grad'] ?></label>
                    <input type="text" class="form-control" id="emp_grade" name="emp_grade" placeholder="Grade (E级)" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['divi'] ?></label>
                    <input type="text" class="form-control" id="emp_div" name="emp_div" placeholder="Division (第五事业部)" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['team'] ?></label>
                    <input type="text" class="form-control" id="emp_team" name="emp_team" placeholder="Team (软件中心)" autocomplete="off">
                  </div>
                </div>
                <!-- <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Section</label>
                    <input type="text" class="form-control" id="emp_section" name="emp_section" placeholder="Section (第五事业部)" autocomplete="off">
                  </div>
                </div> -->
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['lead'] ?></label>
                    <input type="text" class="form-control" id="emp_leader" name="emp_leader" placeholder="Leader" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['dob'] ?></label>
                    <input type="text" class="form-control" id="emp_dob" name="emp_dob" placeholder="Date of Birth" autocomplete="off">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['doj'] ?></label>
                    <input type="text" class="form-control" id="emp_doj" name="emp_doj" placeholder="Date of Joining" autocomplete="off">
                  </div>
                </div>
                <!-- <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><?= $language['emp_tab']['type'] ?></label>
                    <select class="form-control" name="emp_type" id="emp_type" required="">
                      <option value="">--<?= $language['common']['sele'] ?>--</option>
                      <option value="student"><?= $language['common']['stud'] ?></option>
                      <option value="teacher"><?= $language['common']['teac'] ?></option>
                      <option value="none"><?= $language['common']['none'] ?></option>
                    </select>
                  </div>
                </div> -->
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <div class="col-md-6">
                  <button type="submit" class="btn btn-primary"><?= $language['common']['subm'] ?></button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->