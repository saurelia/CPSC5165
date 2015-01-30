using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    private CartItemList cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        //retrieve cart object from session state on every postback
        cart = CartItemList.GetCart();

        //on initial page load, add cart items to list control
        if(!IsPostBack)
        {
            this.DisplayCart();
        }
    }

    private void DisplayCart()
    {
        //remove all current items from list control on the form
        lstCart.Items.Clear();

        //loop through cart and add each cart item's Display value to list control
        for(int i=0; i< cart.Count; i++)
        {
            lstCart.Items.Add(this.cart[i].Display());

        }
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if(cart.Count >0)
        {
            if(lstCart.SelectedIndex > -1)
            {
                cart.RemoveAt(lstCart.SelectedIndex);
                this.DisplayCart();
            }
            else
            {
                lblMessage.Text = "Please select item to remove";
            }
        }
    }
}