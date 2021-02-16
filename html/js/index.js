$(document).keyup(function(e) {
	if (e.key === "Escape") {
	  $.post('http://yrp_drugs/CloseYRPdrugs', JSON.stringify({}));
 }
});
$(document).ready(function() {
	window.addEventListener('message', function(event) {
		var item = event.data;
		if (item.yrp_drugs_craft == true) {
            $('.package').css('display', 'none');
			$('body').css('display', 'block');
            $('.craft').css('display', 'block');
            $('.weed').css('display', 'block');
        } else if (item.yrp_see_weed == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.weed-info').css('display', 'block');
        } else if (item.yrp_see_opium == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.opium-info').css('display', 'block');
        } else if (item.yrp_see_coke == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.coke-info').css('display', 'block');
        } else if (item.yrp_see_meth == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.meth-info').css('display', 'block');
        } else if (item.yrp_see_heroin == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.heroin-info').css('display', 'block');
        } else if (item.yrp_see_mdma == true) {
            $('.weed').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.mdma-info').css('display', 'block');
        } else if (item.yrp_see_weed_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.weed-pack').css('display', 'block');
        } else if (item.yrp_see_opium_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.opium-pack').css('display', 'block');
        } else if (item.yrp_see_coke_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.coke-pack').css('display', 'block');
        } else if (item.yrp_see_meth_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.meth-pack').css('display', 'block');
        } else if (item.yrp_see_heroin_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.heroin-pack').css('display', 'block');
        } else if (item.yrp_see_mdma_c == true) {
            $('.weed').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.mdma-pack').css('display', 'block');
		} else if (item.yrp_drugs_package == true) {
            $('.craft').css('display', 'none');
			$('body').css('display', 'block');
            $('.package').css('display', 'block');
            $('.weed').css('display', 'block');
        } else if (item.yrp_illegal_package == true) {			
            $('.craft').css('display', 'none');
			$('.opium-package').css('display', 'block');
			$('.coke-package').css('display', 'block');
			$('.meth-package').css('display', 'block');
			$('.heroin-package').css('display', 'block');
			$('.mdma-package').css('display', 'block');
		} else if (item.yrp_illegal_craft == true) {
            $('.package').css('display', 'none');
			$('.opium').css('display', 'block');
			$('.coke').css('display', 'block');
			$('.meth').css('display', 'block');
			$('.heroin').css('display', 'block');
			$('.mdma').css('display', 'block');
        } else if (item.yrp_all_close == true) {
            $('body').css('display', 'none');
            $('.craft').css('display', 'none');
            $('.package').css('display', 'none');
            $('.opium').css('display', 'none');
			$('.coke').css('display', 'none');
			$('.meth').css('display', 'none');
			$('.heroin').css('display', 'none');
            $('.mdma').css('display', 'none');
            $('.opium-package').css('display', 'none');
			$('.coke-package').css('display', 'none');
			$('.meth-package').css('display', 'none');
			$('.heroin-package').css('display', 'none');
            $('.mdma-package').css('display', 'none');
            $('.weed-info').css('display', 'none');
            $('.opium-info').css('display', 'none');
            $('.coke-info').css('display', 'none');
            $('.meth-info').css('display', 'none');
            $('.heroin-info').css('display', 'none');
            $('.mdma-info').css('display', 'none');
            $('.weed-pack').css('display', 'none');
            $('.opium-pack').css('display', 'none');
            $('.coke-pack').css('display', 'none');
            $('.meth-pack').css('display', 'none');
            $('.heroin-pack').css('display', 'none');
            $('.mdma-pack').css('display', 'none');
        } else if (item.yrp_back_pack == true) {
            $('.weed').css('display', 'block');
            $('.weed-pack').css('display', 'none');
            $('.opium-pack').css('display', 'none');
            $('.coke-pack').css('display', 'none');
            $('.meth-pack').css('display', 'none');
            $('.heroin-pack').css('display', 'none');
            $('.mdma-pack').css('display', 'none');
        } else if (item.yrp_back_pack_il == true) {
            $('.weed').css('display', 'block');
            $('.opium-package').css('display', 'block');
			$('.coke-package').css('display', 'block');
			$('.meth-package').css('display', 'block');
			$('.heroin-package').css('display', 'block');
            $('.mdma-package').css('display', 'block');
            $('.weed-pack').css('display', 'none');
            $('.opium-pack').css('display', 'none');
            $('.coke-pack').css('display', 'none');
            $('.meth-pack').css('display', 'none');
            $('.heroin-pack').css('display', 'none');
            $('.mdma-pack').css('display', 'none');
        } else if (item.yrp_back_craft == true) {
            $('.weed').css('display', 'block');
            $('.weed-info').css('display', 'none');
            $('.opium-info').css('display', 'none');
            $('.coke-info').css('display', 'none');
            $('.meth-info').css('display', 'none');
            $('.heroin-info').css('display', 'none');
            $('.mdma-info').css('display', 'none');
        } else if (item.yrp_back_craft_il == true) {
            $('.weed').css('display', 'block');
            $('.opium').css('display', 'block');
			$('.coke').css('display', 'block');
			$('.meth').css('display', 'block');
			$('.heroin').css('display', 'block');
            $('.mdma').css('display', 'block');
            $('.weed-info').css('display', 'none');
            $('.opium-info').css('display', 'none');
            $('.coke-info').css('display', 'none');
            $('.meth-info').css('display', 'none');
            $('.heroin-info').css('display', 'none');
            $('.mdma-info').css('display', 'none');
		}
	});

	$(".offnui").click(function() {
        $.post('http://yrp_drugs/CloseYRPdrugs', JSON.stringify({}));
    });

    $(".back").click(function() {
        $.post('http://yrp_drugs/BackToPackage', JSON.stringify({}));
    });

    $(".back2").click(function() {
        $.post('http://yrp_drugs/BackToCrafting', JSON.stringify({}));
    });
    
    $(".SeeWeedCraft").click(function() {
        $.post('http://yrp_drugs/SeeWeedCraft', JSON.stringify({}));
    });
    
    $(".SeeOpiumCraft").click(function() {
        $.post('http://yrp_drugs/SeeOpiumCraft', JSON.stringify({}));
    });
    
    $(".SeeCokeCraft").click(function() {
        $.post('http://yrp_drugs/SeeCokeCraft', JSON.stringify({}));
    });
    
    $(".SeeMethCraft").click(function() {
        $.post('http://yrp_drugs/SeeMethCraft', JSON.stringify({}));
    });
    
    $(".SeeHeroinCraft").click(function() {
        $.post('http://yrp_drugs/SeeHeroinCraft', JSON.stringify({}));
	});
    
    $(".SeeMdmaCraft").click(function() {
        $.post('http://yrp_drugs/SeeMdmaCraft', JSON.stringify({}));
    });

    $(".SeeWeedPackage").click(function() {
        $.post('http://yrp_drugs/SeeWeedPackage', JSON.stringify({}));
    });

    $(".SeeOpiumPackage").click(function() {
        $.post('http://yrp_drugs/SeeOpiumPackage', JSON.stringify({}));
    });

    $(".SeeCokePackage").click(function() {
        $.post('http://yrp_drugs/SeeCokePackage', JSON.stringify({}));
    });

    $(".SeeMethPackage").click(function() {
        $.post('http://yrp_drugs/SeeMethPackage', JSON.stringify({}));
    });

    $(".SeeHeroinPackage").click(function() {
        $.post('http://yrp_drugs/SeeHeroinPackage', JSON.stringify({}));
    });

    $(".SeeMdmaPackage").click(function() {
        $.post('http://yrp_drugs/SeeMdmaPackage', JSON.stringify({}));
    });








    
	$(".CraftWeed").click(function () {
		let inputValue = $(".InputWeed").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftWeed', JSON.stringify({
            weed: inputValue,
		}));
        return;
    })
    
	$(".CraftOpium").click(function () {
		let inputValue = $(".InputOpium").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftOpium', JSON.stringify({
            opium: inputValue,
		}));
        return;
	})
	$(".CraftCoke").click(function () {
		let inputValue = $(".InputCoke").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftCoke', JSON.stringify({
            coke: inputValue,
		}));
        return;
	})
	$(".CraftMeth").click(function () {
		let inputValue = $(".InputMeth").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftMeth', JSON.stringify({
            meth: inputValue,
		}));
        return;
	})
	$(".CraftHeroin").click(function () {
		let inputValue = $(".InputHeroin").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftHeroin', JSON.stringify({
            heroin: inputValue,
		}));
        return;
	})
	$(".CraftMdma").click(function () {
		let inputValue = $(".InputMdma").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze vycraftit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/CraftMdma', JSON.stringify({
            mdma: inputValue,
		}));
        return;
	})
	$(".PackageWeed").click(function () {
		let inputValue = $(".InputPackageWeed").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageWeed', JSON.stringify({
            packWeed: inputValue,
		}));
        return;
	})
	$(".PackageOpium").click(function () {
		let inputValue = $(".InputPackageOpium").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageOpium', JSON.stringify({
            packOpium: inputValue,
		}));
        return;
	})
	$(".PackageCoke").click(function () {
		let inputValue = $(".InputPackageCoke").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageCoke', JSON.stringify({
            packCoke: inputValue,
		}));
        return;
	})
	$(".PackageMeth").click(function () {
		let inputValue = $(".InputPackageMeth").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageMeth', JSON.stringify({
            packMeth: inputValue,
		}));
        return;
	})
	$(".PackageHeroin").click(function () {
		let inputValue = $(".InputPackageHeroin").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageHeroin', JSON.stringify({
            packHeroin: inputValue,
		}));
        return;
	})
	$(".PackageMdma").click(function () {
		let inputValue = $(".InputPackageMdma").val()
        if (!inputValue) {
            $.post("http://yrp_drugs/Notification", JSON.stringify({
                text: "Nelze zabalit 0 kusů"
            }))
            return
        }
        $.post('http://yrp_drugs/PackageMdma', JSON.stringify({
            packMdma: inputValue,
		}));
        return;
    })

})

let scale = 0;
const cards = Array.from(document.getElementsByClassName("job"));
const inner = document.querySelector(".inner");

function slideAndScale() {
cards.map((card, i) => {
	card.setAttribute("data-scale", i + scale);
	inner.style.transform = "translateX(" + scale * 8.5 + "em)";
});
}

(function init() {
slideAndScale();
cards.map((card, i) => {
	card.addEventListener("click", () => {
		const id = card.getAttribute("data-scale");
		if (id !== 2) {
			scale -= id - 2;
			slideAndScale();
		}
	}, false);
});
})();

