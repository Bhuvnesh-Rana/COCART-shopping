
<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel" style="text-align: center">Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <div class="cart-body">
              
          </div>
          
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" value="Home_Page0.jsp" onclick="location=this.value">Continue Shopping</button>  
        <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
        <button type="button" class="btn btn-primary checkout-btn" onclick="goToCheckout()">Proceed to Checkout</button>
        
      </div>
    </div>
  </div>
</div>