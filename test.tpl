<div id="bid-form" class="row">
    <form :action="'/Diger/Form.php" method="post" novalidate autocomplete="off" class="col-12" ref="bidForm" @submit.prevent="sendForm">
        <div class="row">
            <div class="col-12 mb-1">
                <div class="w-100 popover-wrapper position-relative">
                    <select name="subject" id="bid-subject" class="form-control form-control-md" data-validate="required">
                        <option value="">{#select_subject#}</option>
                        <option>{#bid1#}</option>
                        <option>{#bid2#}</option>
                        <option>{#other#}</option>
                    </select>
                </div>
            </div>
            <div class="col-12 mb-1">
                <div class="w-100 popover-wrapper position-relative">
                    <input type="text" id="bid-fullname" name="fullname" class="form-control form-control-md" placeholder="{#fullname#}" data-toggle="placeholder" data-validate="required">
                </div>
            </div>
            <div class="col-12 mb-1">
                <div class="w-100 popover-wrapper position-relative">
                    <input type="tel" id="bid-mobile_phone" name="mobile_phone" class="form-control form-control-md" placeholder="{#phone#}" data-toggle="placeholder" data-flag-masked data-validate="required,phone">
                </div>
            </div>
            <div class="col-12 mb-1">
                <div class="w-100 popover-wrapper position-relative">
                    <input type="email" id="bid-email" name="email" class="form-control form-control-md" placeholder="{#email#}" data-toggle="placeholder" data-validate="required,email">
                </div>
            </div>
            <div class="col-12 mb-1">
                <div class="w-100 popover-wrapper position-relative">
                    <textarea class="form-control form-control-md" id="bid-message" name="message" placeholder="{#your_message#}" data-toggle="placeholder" data-validate="required"></textarea>
                </div>
            </div>
            <div class="col-12 mb-1">
                <div class="w-100 input-group popover-wrapper">
                    <div class="input-group-prepend">
                        <img :src="captcha" id="bidCaptcha" />
                    </div>
                    <input type="text" id="bid-security_code" name="security_code" class="form-control form-control-md" placeholder="{#security_code#}">
                    <div class="input-group-append" @click="refreshCode">
                        <i class="ti-cw text-primary"></i>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <button type="submit" id="bid-send" class="btn btn-primary w-100">{#send#}</button>
            </div>
        </div>
    </form>
</div>



<script>
    const bidForm = {
        data() {
            return {
                data: DATA,
                captcha: `/SecCode.php?${new Date().getTime()}`
            }
        },
        methods: {
            sendForm() {
                const self = this;
                const form = self.$refs.bidForm;
                const formData = new FormData(form);
                axios.post(form.action, formData).then(response => {
                    const res = response.data;
                    if(res.status < 1) {
                        popoverAlert.show(
                            form.querySelector(`[name="${res.key}"]`), 
                            res.statusText, 
                            3000, 
                            `btn btn-danger no-radius text-left`,
                            true,
                            res.key == 'security_code' ? '' : 'inline'
                        );
                    } else {
                        form.reset();
                        if (T('.focused').length > 0) {
                            T('.focused').removeClass('focused');
                        }
                        T.notify({
                            text: res.statusText,
                            duration: 3500,
                            className : 'success',
                            iconClass : 'ti-thumbs-up',
                        })
                    }
                    self.refreshCode();
                });
            },
            refreshCode() {
                T('#bid-security_code')[0].value = '';
                this.captcha = `/SecCode.php?${new Date().getTime()}`
            }
        },
        mounted() {
            initComponents();
        }
    };
    Vue.createApp(bidForm).mount('#bid-form');
</script>
<style>
    #myform {
        display: flex;
        flex-wrap: wrap;
        padding: 50px;
    }
    #myform>* {
        width: 100%;
        min-height: 39px;
        border-radius: 11px;
        padding: 10px;
        box-sizing: border-box;
        margin: 10px;
    }
</style>
<form id="myform" class="d-flex">
    <input type="text" name="Ad_Soyad" class="formgen3
    position-absolute position-relative position-desktop-relative  position-relative position-desktop-relative position-desktop-absolute
    ">
    <input type="text" name="Email" class="formgen3">
    <input type="text" name="Odeme_Sekli" class="position-desktop-absolute formgen3 justify-content-center justify-content-flex-end justify-content-flex-start align-items-flex-start align-items-center justify-content-center">
    <input type="text" name="Tel" class="formgen3">
    <textarea rows="4" name="Mesaj" class="formgen3 btn btn-primary btn-outline-danger container-fluid"></textarea>
    <input rows="4" type="file" class="file" data-name="resim">
    <input rows="4" type="file" class="file" data-name="evrak">
    <input type=hidden name="FormBaslik" value="Ödeme Bildirimi">
    <input type=hidden name="FormUyari" value="Ödeme bildiriminiz alınmıştır.Teşekkür ederiz.">
    <input type=hidden name="FormAlici" value="a2z5sc">
    <input type="submit" value="Gönder">
</form>
<script src="/theme/standart/js/vue-bundle.js?v=2"></script>
<script>
    $(document).ready(function () {
        $(`#myform`).on('submit', e => {
            e.stopPropagation();
            e.preventDefault();
            const formEl = e.target;
            var data = new FormData(formEl);
            [...formEl].forEach((el, i) => {
                if (el.type == "file") {
                    data.append(el.dataset.name, el.files[0]);
                }
            });
            axios.post('/Diger/Form.php', data).then(response => {
                const result = response.data;
                Message.showDialog(result)
            });
        });
    });
</script>
