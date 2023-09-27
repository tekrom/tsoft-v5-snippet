border-primary
fw-bold
text-underline
btn-primary
btn-outline-primary
bg-primary
position-desktop-relative
position-desktop-sticky
position-desktop-absolute
position-desktop-fixed
position-relative
position-sticky
position-absolute
position-fixed
flex-direction-column
flex-direction-column-reverse
flex-direction-row
flex-direction-row-reverse
flex-wrap
flex-wrap-reverse
flex-shrink-0
align-items-center
align-items-flex-end
align-items-flex-start
justify-content-center
justify-content-between
justify-content-around
justify-content-evenly
justify-content-flex-start
justify-content-flex-end
container
hover-scale

{subfolder pageId="3" blockId="1004" subfolder="personalization"}   


{product id="{$P.ID}" assign="MY_PRODUCT"}

{category id="{$TABLE_ID}" assign="MY_CATEGORY"} 

{menu key="MENU_FOOTER" assign="MENU_FOOTER"}
{brand id="{$P.BRAND_ID}" assign="BRAND"}
{model id="{$P.MODEL_ID}" assign="MODEL"}

scrollToElm('[href=\'#idToScroll\']', 200);

<div class="dic" scrollToElm(`[href='#idToScroll']`);></div>
{format price=($P.PRICE_SELL - ($P.PRICE_SELL * $P.NUMERIC1/100))}
{vat price=($P.PRICE_SELL - ($P.PRICE_SELL * $P.NUMERIC1/100)) vat=$P.VAT}
<div id="selector" class="row" v-cloak>
</div>
<script>
    const appName = {
        data() {
            return {
            }
        }
    };
    Vue.createApp(appName).mount('selector');
</script>
/srv/service/content-v5/sub-folder/{$PAGE_ID/{$BLOCK.PARENT_ID}/subfoldername/?product={$P.ID}&variant={$P.VARIANT_ID}
{vat price=$P.PRICE_SELL vat=$P.VAT}
{format price=$P.PRICE_SELL}
|string_format:'%.1f'
|date_format:'Y,m,d,H,i,s'
|strip_tags|escape:'html'
|strpos:''
|default:''
|replace:'':''
|@count
|escape
{exchange price=$P.PRICE_SELL from=$P.TARGET_CURRENCY to='USD'}
THEME_FOLDER
$smarty.foreach.name.iteration
$smarty.foreach.first.last
RELATED_PRODUCTS_IDS1_COUNT
SYMBOL_DATA
<pre>{$smarty.server|@debug_print_var}</pre>
{assign var="CATARRAY" value=","|explode:$P.CATEGORY_IDS}
{math assign="SEPETTUTARI" equation="x*((100+v)/100)*((100-y)/100)" x=$P.PRICE_SELL y=$P.ADDITIONAL_FIELD_1 v=$P.VAT}
https://api.whatsapp.com/send?phone=9{$WHATSAPP_NO}&text=
json_decode($P.VARIANT_DATA, true)
{$P.ID}
BLOCK.ID
javascript:void(0)
|substr:0:5
|substr:0:5
<pre>{arr|@debug_print_var}</pre>
{url type='page' id='68'}
<pre>{$arr|@var_dump}</pre>
/Data/EditorFiles/v5images/
data-toggle="dropdown"
/Data/EditorFiles/v5images/
{debug}
{/literal}
BLOCK.TITLE
BLOCK.TITLE
SETTING
/srv/service/order-v4/order-return/${$P.ID}
/srv/service/product/searchAll/test
/srv/service/gallery/video-detail/${$P.ID}
/srv/service/product-detail/view/606
/srv/service/content/get/block_id/folder_name
/srv/service/language/change/tr
/srv/shopping/shopping/set-currency/tl
/srv/shopping/shopping/set-country/TR
/srv/service/content/get-block/1003/category/catID
/srv/service/category/get/catID
/srv/service/product/filter/category/catID?pg=1
/srv/service/category/getTree/catID
/srv/service/content/get-block/1018/content/içerik_id
/srv/service/category/getTree/catID
/srv/service/content/get-block/1018/content/içerik_id
/srv/service/product-detail/credit-card-installment-list/${$P.ID}/${$P.VARIANT_ID}
/srv/service/product-detail/payment-options/${$P.ID}/${$P.VARIANT_ID}
/srv/campaign-v2/campaign/get-list-by-type/product/${$P.ID}
/srv/campaign-v2/campaign/get-list-by-type/product/${$P.ID}
/srv/campaign-v2/campaign/get-list-by-type/cart
/srv/campaign-v2/campaign/get-list-by-type/category/id
/srv/service/cart/load?link=sepet
/srv/service/product-detail/comments/${$P.ID}
/srv/service/product-detail/comment-average/${$P.ID}
/srv/service/filter/get/brands
/srv/service/product/get-related-products/${$P.ID}/1
/srv/service/content/getBlock/1070/product/${$P.ID}
/srv/service/product/get-related-products/${$P.ID}/1
/srv/service/product/get-related-products/${$P.ID}/2
/srv/service/product/get-related-products/${$P.ID}/3
/srv/service/product/get-related-products/${$P.ID}/4
