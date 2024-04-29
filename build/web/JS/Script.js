



function goToCheckout()
{
    window.location = "Checkout0.jsp"
}


function add_to_cart(pid,pname,price)
{
    let cart = localStorage.getItem("cart");
    if(cart==null)
    {
        //no cart
        let products=[];
        let product={ productId:pid, productName:pname, productQuantity:1,productPrice:price };
        products.push(product);
        localStorage.setItem("cart",JSON.stringify(products));
        
        console.log("Product is added for the first time");
        showToast("Item added to cart")
        
    }else{
        //cart is present
        let pcart = JSON.parse(cart);
        let oldProduct = pcart.find((item)=>item.productId == pid);
        if(oldProduct)
        {
            //just have to increase the quantity
            
            oldProduct.productQuantity = oldProduct.productQuantity +1;
            pcart.map((item)=>{
                if(item.productId == oldProduct.prooductId)
                {
                    item.productQuantity = oldProduct.productQuantity;
                }
            })
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("Product quantity is increased");
            showToast("("+oldProduct.productQuantity+")"+ " Product quantity increased")
           
        }else
        {
            //have to add product
            
            let product={ productId:pid, productName:pname, productQuantity:1,productPrice:price };
            pcart.push(product);
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("Product is added ");
             showToast("Item added to cart")
        }
        
    }
    updateCart();
}

//update cart
function myFunction() {
  var x = document.getElementById("myTextarea").value;
  document.getElementById("demo").innerHTML = x;
}

function updateCart()
{
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);
    if(cart == null || cart.length == 0)
    {
        console.log("Cart is empty !")
        $(".cart-items").html("( 0 )");  //JQuery
        $(".cart-body").html("<h3>Cart is Empty! Go Shop..</h3>");
        $(".checkout-btn").attr('disabled',true)
    }else{
        //something in cart
        console.log(cart)
        
        $(".cart-items").html(`( ${cart.length } )`);
        let table=`
            <table class='table'>
            <thead class='thread-light'>
                <tr>
                <th>Item Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th>Action</th>
                
                </tr>
            </thead>
        
        `;
        
        let totalPrice = 0;
        
        cart.map((item)=>{
            table+=`
                <tr>
                    <td> ${item.productName} <br>

                    <td> ${item.productPrice} </td>
                    
            <td><button class="btn btn-outline-secondary btn-sm" onclick="minusQuant(${item.productId})"><i class='bi bi-dash'></i></button>    ${item.productQuantity}    <button class="btn btn-outline-secondary btn-sm" onclick="plusQuant(${item.productId})"><i class='bi bi-plus'></i></button> </td>
                    <td> ${item.productQuantity*item.productPrice} </td>
                    <td> <button onclick="deleteItemFromCart(${item.productId})" class="btn btn-danger btn-sm" > Remove </button> </td>
                </tr>
            
            `
            totalPrice+=item.productPrice * item.productQuantity;
            
        })
        
        table=table+`
        <tr><td class="text-right font-weight-bold" > Total Amount : ${totalPrice} </td></tr>
        </table>`
        $(".cart-body").html(table);
        $(".checkout-btn").attr('disabled',false)
        
    }
}

//remove item from cart
function deleteItemFromCart(pid)
{
    let cart = JSON.parse(localStorage.getItem("cart"));
    let newcart = cart.filter((item) => item.productId != pid)
    localStorage.setItem("cart",JSON.stringify(newcart))
    updateCart();
    showToast("Item removed from cart")
    
}

$(document).ready(function(){
    updateCart()
}
)

function showToast(content) {
    $("#toast").addClass("display");
    $("#toast").html(content);
    setTimeout(() => {
        $("#toast").removeClass("display");
    }, 2000);
}


function minusQuant(pid){
    let qCart = JSON.parse(localStorage.getItem("cart"));
    let oldProduct = qCart.find((item)=>item.productId == pid);

            oldProduct.productQuantity = oldProduct.productQuantity -1;
            if( (oldProduct.productQuantity) <= 0){
                deleteItemFromCart(oldProduct.productId);
                
            }
            else{
            qCart.map((item)=>{
                if(item.productId == oldProduct.productId)
                {
                    item.productQuantity = oldProduct.productQuantity;
                }
            })
            localStorage.setItem("cart",JSON.stringify(qCart));
            
            updateCart();
            //console.log("Product quantity is increased");
            showToast(oldProduct.productName + " quantity decreased , Quantity = " + oldProduct.productQuantity)
        }
}

function plusQuant(pid){
    let qCart = JSON.parse(localStorage.getItem("cart"));
    let oldProduct = qCart.find((item)=>item.productId == pid);

            oldProduct.productQuantity = oldProduct.productQuantity +1;
            
//            if(oldProduct.productQuantity > oldProduct.productQ){showToast(oldProduct.productName + " is Out of Stock !!")}
//            else{
            qCart.map((item)=>{
                if(item.productId == oldProduct.productId)
                {
                    item.productQuantity = oldProduct.productQuantity;
                }
            })
            localStorage.setItem("cart",JSON.stringify(qCart));
            //console.log("Product quantity is increased");
            updateCart();
            showToast(oldProduct.productName + " quantity increased , Quantity = " + oldProduct.productQuantity)
//        }
        
}






function paymentStart(){
    let cart = JSON.parse(localStorage.getItem("cart"));
    console.log("payment started..");
    
    const add = arr => arr.reduce((a, b) => a + b, 0);
    let arr = cart.map((item)=>item.productQuantity*item.productPrice);
    var productName = [];
    productName = cart.map((item)=>item.productName);    
    var sum = add(arr);
    console.log(sum);
    console.log("qww",productName);
    if(sum == "" || sum == null){
        alert("Add item to Cart");
        return;
    }
    
    
//    $.ajax({
//        url:'PaymentServlet',
//        type:'POST',
//        contentType:'application/json',
//        dataType:'json',
//        data:{"key":"value"},
//        success:function(response){
//            //invoked when success
//            console.log(response);
//        },
//        error:function(error){
//            //invoked when errror
////            console.log(error)
////            alert("something went wrong !!")
//        },
//    });
    $.post(
            "PaymentServlet",
            {pro_id: JSON.stringify(productName),sum:sum},
            function(response){
                console.log("response",response);
            });
};


