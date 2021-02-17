// Show/Hide elements

$(document).ready(function(){
    $("#building-type").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue === "residential"){
              $(".resid").show();
              $(".comm").hide();
              $(".corp").hide();
              $(".hybr").hide();
              $(".commcorphyb").hide();
              $(".corphyb").hide();
            } else if (optionValue === "commercial"){
              $(".resid").hide();
              $(".comm").show();
              $(".corp").hide();
              $(".hybr").hide();
              $(".commcorphyb").show();
              $(".corphyb").hide();
              } else if (optionValue === "corporate"){
                $(".resid").hide();
                $(".comm").hide();
                $(".corp").show();
                $(".hybr").hide();
                $(".commcorphyb").show();
                $(".corphyb").show();  
              } else if(optionValue === "hybrid"){
                $(".resid").hide();
                $(".comm").hide();
                $(".corp").hide();
                $(".hybr").show();
                $(".commcorphyb").show();
                $(".corphyb").show();
              } else{
                $(".resid").hide();
                $(".comm").hide();
                $(".corp").hide();
                $(".hybr").hide();
                $(".commcorphyb").hide();
                $(".corphyb").hide(); 
            }
        });
    }).change();
  });

// PRICES CALCULATIONS  

function finalprice(){
        var x = $("#building-type").val();
        if (x === "choose"){
            alert("Please select a Building Type")
            $("input[type=radio][name=product-line]").prop('checked', false);
        }
        else if (x === "commercial"){
            var elevreq = $("#elev-needed").val();

        }else if (x === "corporate" || x === "hybrid"){
                var floors = $("#floors").val();
                var basements = $("#basements").val();
                var occflr = $("#occ-flr").val();
                var stories = (parseInt(floors) + parseInt(basements));
                var occ = (occflr * stories);
                var elev = Math.ceil(parseInt(occ) / 1000);
                var columns = Math.ceil(parseInt(stories) / 20);
                var elevcol = Math.ceil(parseInt(elev) / parseInt(columns));
                var elevreq = Math.ceil(parseInt(elevcol) * parseInt(columns));
                if (isNaN(elevreq)){
                    elevreq = 0;
                } 

        }else if (x === "residential"){
            var apts = $("#res-apts").val();
            var floors = $("#floors").val();
            var doorflr = ((apts) / (floors));
            var shaftreq = Math.ceil((doorflr) / 6);
            var columns = Math.ceil(floors / 20);
            var elevreq = (shaftreq * columns);
            if (isNaN(elevreq)){
                elevreq = 0;
            } 
        };

        var z = $("#productline :input:checked").val();

        if (z === "standard"){
            var price = 7565;
            var fees = 0.1;
        }
        if (z === "premium"){
            var price = 12345;
            var fees = 0.13;

        }
        if (z === "excelium"){
            var price = 15400;
            var fees = 0.16;
        }
 
        var sum = (price * elevreq);
        var inst = (fees * sum);
        var total = ((parseFloat(sum)) + (parseFloat(inst)));
        if (isNaN(elevreq)){
            elevreq = 0;
        }    
        $("#el-req").val(elevreq);
        $("#e-u-p").val((price).toLocaleString('en-US', {style:'currency', currency:'USD'}));
        $("#e-t-p").val((sum).toLocaleString('en-US', {style:'currency', currency:'USD'}));
        $("#inst-fees").val((inst).toLocaleString('en-US', {style:'currency', currency:'USD'}));
        $("#fin-price").val((total).toLocaleString('en-US', {style:'currency', currency:'USD'}));

};
// RESET ACTION ON BUILDING TYPES CHANGE

$("#building-type").change(function() {
            $(".go").val(""); // replace go by the of the input to reset)
            // $("input:radio[name=product-line]:checked")[0].checked =  false; this is another possibilities
                // replace the (group) name of the button by the one to be unchecked
            $("input[type=radio][name=product-line]").prop('checked', false);    
});