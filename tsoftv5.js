selector.addEventListener("click",e=>{
    console.log(e)
}); 

document.addEventListener("DOMContentLoaded",e=>{
    console.log(e)
});

window['appName'] = {
    data() {
        return {
            P:``,
        }
    },
}
Vue.creatApp(appName).mount(`#app-selector`);

(`#selector`).on('submit', e => {
    e.stopPropagation();
    e.preventDefault();
    const formEl = e.target;
    if(!T.checkValidity(formEl))
        return;
    var data = new FormData(formEl);
    axios.post('/srv/service/servicepath', data).then(response => {
        const result = response.data;
        console.log('result:', result);
        formEl.reset();
        T.notify({
            text:"element",
            className: 'success',
            duration: 3200
        });
    });
});

new Swiper(selector, {
    slidesPerView: 2,
    spaceBetween: T.isMobile() ? 8 : 15,
    navigation: {
        nextEl: `#swiper-next-${BLOCK.ID}`,
        prevEl:`#swiper-prev-${BLOCK.ID}`,
    },
    pagination: {
        el: '.swiper-pagination',
        clickable: true
    },
    breakpoints: {
        576: {
            slidesPerView: 3
        },
        768: {
            slidesPerView: 4
        }
    }
});

axios.get("url").then((res)=> {
    console.log(res.data);
})
.catch((error)=> {
    console.log(error);
})
axios.post("url", formData).then((res)=> {
    console.log(res.data);
})
.catch((error)=> {
    console.log(error);
})

fetch("users.json").then(res=> res.json())
.then(data=> {
        data.forEach(el => {
        console.log(el);
    });
})
.catch(err => console.log(err))

console.log();
console.log('hey',hey);

Cart.callback.add.push((res)=>{
        console.log(res) 
})

T.ready(function(){
    
})
T.each(T(`div`),(i, el)=>{
    console.log(i, el);
});

T.setCookie(cookieName, cookieValue, exdays) 

T.getCookie(cookieName)

BLOCK.ID
SETTING.DELAY
IMAGE.URL

T.getLink(`param`,'value','link');

popoverAlert.show(
    T(`selector`)[0], msg, false, `btn btn-danger text-left`, true, `inline`
);  

T(`selector`);

T.wrap(T(`toWrapSelector`)[0],'','classname');

T(`selector`).addClass('active');

T(`selector`).removeClass('active');
T(`selector`).toggleClass('active');
T(`selector`).hasClass('active');
T(`selector`).index();
T(`#selector`).on(`click`, e => {
    e.stopPropagation();
    e.preventDefault();
    const el = e.target;
    
});
T(`#selector`).off(`click`, e => {
    e.stopPropagation();
    e.preventDefault();
    const el = e.target;
    
});

T(`#selector`).one(`click`, e => {
    e.stopPropagation();
    e.preventDefault();
    const el = e.target;
    
});

T(`selector`).trigger('click');


T(`selector`).html('element');

T(`selector`).text('text');
T(`selector`).height();
T(`selector`).height(400);
T(`selector`).show(`flex`);
T(`selector`).hide();

T.notify({
    text:`messageandtext`,
    className: `success`,
    duration: 3200,
    stopOnFocus: true,
    close: true,
    gravity:`top`,
    position: `left`,
    iconClass: `ti-thumbs-up`,
});

T.modal({
    id: 'new-modal',
    class: `classname`,
    width: `480px`,
    title: `ModalTitle`,
    html: result.statusText,
    close: true,
    openCallback: () => {
    },
    closeCallback: () => {
    }
});

window.publishingPopupCallback=function(){
    
}
T.tooltip(T(`selector`)[0], {
    placement:`top`
});

if(!T.checkValidity(e.target)) return;  

T.vat(price, vat);

T.format(number);

T.timeConverter(1652702396000, `d.m.y`);

const button = T(`#form_submit_button`)[0];
T.buttonLock.dom = button;
T.buttonLock.tmp = button.innerHTML;
T.buttonLock.lock();


T.buttonLock.unlock();

loadSubFolder({
    pageId: 1,
    blockParentId: 1000,
    subFolder: 'subfoldername',
    params: { oneparam: oneparam, twoparam: twoparam },
    success:  function(loadRes){
        T.modal({ html: loadRes, width:'801px' });
    }
});
T.isMobile()



////

