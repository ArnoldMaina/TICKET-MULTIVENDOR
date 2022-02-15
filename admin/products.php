<?php session_start(); ?>
<?php include_once("./templates/top.php"); ?>
<?php include_once("./templates/navbar.php"); ?>
<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <div class="row">
      	<div class="col-10">
      		<h2>Event List</h2>
      	</div>
		
      	<div class="col-2">
      		<a href="#" data-toggle="modal" data-target="#add_product_modal" class="btn btn-warning btn-sm">Add Event</a>
      	</div>
      </div>
	
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Image</th>
              <th>Category</th>
              <th>Venue</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="product_list">
            <!-- <tr>
              <td>1</td>
              <td>ABC</td>
              <td>FDGR.JPG</td>
              <td>122</td>
              <td>eLECTRONCS</td>
              <td>aPPLE</td>
              <td><a class="btn btn-sm btn-info"></a><a class="btn btn-sm btn-danger">Delete</a></td>
            </tr> -->
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>



<!-- Add Product Modal start -->
<div class="modal fade" id="add_product_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Event</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-product-form" enctype="multipart/form-data">
        	<div class="row">
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Event Name</label>
		        		<input type="text" name="product_name" class="form-control" placeholder="Enter Event Name">
		        	</div>
        		</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Region</label>
		        		<select class="form-control brand_list" name="brand_id">
		        			<option value="">Select Region</option>
		        		</select>
		        	</div>
        		</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Category Name</label>
		        		<select class="form-control category_list" name="category_id">
		        			<option value="">Select Category</option>
		        		</select>
		        	</div>
        		</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Event Description</label>
		        		<textarea class="form-control" name="product_desc" placeholder="Enter event desc"></textarea>
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>VVIP Qty</label>
                <input type="number" name="product_qty" class="form-control" placeholder="Enter VVIPQuantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>VVIP Price</label>
		        		<input type="number" name="product_price" class="form-control" placeholder="Enter VVIP Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>VIP Qty</label>
                <input type="number" name="VIP_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>VIP Price</label>
		        		<input type="number" name="VIP_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>Regular Qty</label>
                <input type="number" name="regular_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Regular Price</label>
		        		<input type="number" name="regular_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>	
            <div class="col-12">
              <div class="form-group">
                <label>Children Qty</label>
                <input type="number" name="children_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Children Price</label>
		        		<input type="number" name="children_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>Earlybird Qty</label>
                <input type="number" name="advance_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Earlybird Price</label>
		        		<input type="number" name="advance_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>				
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Event Venue <small></small></label>
		        		<input type="text" name="product_keywords" class="form-control" placeholder="Enter Product Keywords">
		        	</div>
        		</div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Event Image</label>
		        		<input type="file" name="product_image" class="form-control">
		        	</div>
        		</div>
                    <div class="row">
                        <div class="col-sm-6">
                            From Date : <input class="form-control" onchange="check(this.value)" type="date"
                                name="from_date" required>
                        </div>
                        <div class="col-sm-6">
                            End Date : <input class="form-control" onchange="check(this.value)" type="date"
                                name="to_date" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"> Every :
                            <select class="form-control" name="every">
                                <option value="Day">Day</option>
                                <option value="Monday">Monday</option>
                                <option value="Tuesday">Tuesday</option>
                                <option value="Wednesday">Wednesday</option>
                                <option value="Thursday">Thursday</option>
                                <option value="Friday">Friday</option>
                                <option value="Saturday">Saturday</option>
                                <option value="Sunday">Sunday</option>
                            </select>
                        </div>
                        <div class="col-sm-6">

                            Time : <input class="form-control" type="time" name="time" required id="">
                        </div>
                    </div>					
        		<input type="hidden" name="add_product" value="1">
        		<div class="col-12">
        			<button type="button" class="btn btn-primary add-product">Add Event</button>
        		</div>
			
        	</div>
        	
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Add Product Modal end -->

<!-- Edit Product Modal start -->
<div class="modal fade" id="edit_product_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Event</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="edit-product-form" enctype="multipart/form-data">
          <div class="row">
            <div class="col-12">
              <div class="form-group">
                <label>Event Name</label>
                <input type="text" name="e_product_name" class="form-control" placeholder="Enter Event Name">
              </div>
            </div>
  
         		<div class="col-12">
        			<div class="form-group">
		        		<label>Event Venue</label>
		        	 <textarea class="form-control" name="e_brand_id" placeholder="Enter Venue"></textarea>
		        				        	</div>
        		</div> 
  
            <div class="col-12">
              <div class="form-group">
                <label>Category Name</label>
                <select class="form-control category_list" name="e_category_id">
                  <option value="">Select Category</option>
                </select>
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Event Dscription</label>
                <textarea class="form-control" name="e_product_desc" placeholder="Enter Event desc"></textarea>
              </div>
            </div>

           <div class="col-12">
              <div class="form-group">
                <label>VVIP Qty</label>
                <input type="number" name="e_product_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>VVIP Price</label>
		        		<input type="number" name="e_product_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>VIP Qty</label>
                <input type="number" name="e_VIP_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>VIP Price</label>
		        		<input type="number" name="e_VIP_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>Regular Qty</label>
                <input type="number" name="e_Regular_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Regular Price</label>
		        		<input type="number" name="e_Regular_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>	
            <div class="col-12">
              <div class="form-group">
                <label>Children Qty</label>
                <input type="number" name="e_children_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Children Price</label>
		        		<input type="number" name="e_children_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>
            <div class="col-12">
              <div class="form-group">
                <label>Earlybird Qty</label>
                <input type="number" name="e_advance_qty" class="form-control" placeholder="Enter Product Quantity">
              </div>
            </div>
        		<div class="col-12">
        			<div class="form-group">
		        		<label>Earlybird Price</label>
		        		<input type="number" name="e_advance_price" class="form-control" placeholder="Enter Product Price">
		        	</div>
        		</div>		

            <div class="col-12">
              <div class="form-group">
                <label>Product Venue </label>
                <input type="text" name="e_product_keywords" class="form-control" placeholder="Enter Product Keywords">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Product Image <small>(format: jpg, jpeg, png)</small></label>
                <input type="file" name="e_product_image" class="form-control">
                <img src="../product_images/1.0x0.jpg" class="img-fluid" width="50">
              </div>
            </div>
			
                    <div class="row">
                        <div class="col-sm-6">
                            From Date : <input class="form-control" onchange="check(this.value)" type="date"
                                name="from_date" required>
                        </div>
                        <div class="col-sm-6">
                            End Date : <input class="form-control" onchange="check(this.value)" type="date"
                                name="to_date" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"> Every :
                            <select class="form-control" name="every">
                                <option value="Day">Day</option>
                                <option value="Monday">Monday</option>
                                <option value="Tuesday">Tuesday</option>
                                <option value="Wednesday">Wednesday</option>
                                <option value="Thursday">Thursday</option>
                                <option value="Friday">Friday</option>
                                <option value="Saturday">Saturday</option>
                                <option value="Sunday">Sunday</option>
                            </select>
                        </div>
                        <div class="col-sm-6">

                            Time : <input class="form-control" type="time" name="time" required id="">
                        </div>
                    </div>				
            <input type="hidden" name="pid">
            <input type="hidden" name="edit_product" value="1">
            <div class="col-12">
              <button type="button" class="btn btn-primary submit-edit-product">Add Event</button>
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Edit Product Modal end -->
                <script>
                function check(val) {
                    val = new Date(val);
                    var age = (Date.now() - val) / 31557600000;
                    var formDate = document.getElementById('date');
                    if (age > 0) {
                        alert("You are using a past/current date!");
                        val.value = "";
                        return false;
                    }
                }
                </script>
<?php include_once("./templates/footer.php"); ?>



<script type="text/javascript" src="./js/products.js"></script>