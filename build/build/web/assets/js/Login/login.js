/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function login(formSelector) {
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }

    // formRules sẽ chứa tất cả rule của form chúng ta

    var formRules = {

    }
    var validatorRules = {
        required: function (value) {
            return value ? undefined : "Vui lòng nhập vào ô trống bên trên"
        },
        min: (min) => {
            return function (value) {
                return value.length >= min ? undefined : `Vui lòng nhập ít nhất ${min} kí tự vào đây`;
            }
        },
    }

    // Lấy ra element trong DOM theo formSelecter
    var formElement = document.querySelector(formSelector);
    if (formElement) {
        // Lấy ra những thẻ có name và rules
        var inputs = formElement.querySelectorAll('[name][rules]')
        // Sẽ return về Nodelist;
        for (var input of inputs) {
            var rules = input.getAttribute('rules').split('|');
            // Đặt 1 tên biến để có thể lưu khi tách input có rules chứa min:6
            var ruleHasValue;
            for (var rule of rules) {
                if (rule.includes(':')) {
                    var ruleInfo = rule.split(':');
                    rule = ruleInfo[0];
                    ruleHasValue = ruleInfo[1];
                }

                if (Array.isArray(formRules[input.name])) {
                    if (ruleHasValue) {
                        formRules[input.name].push(validatorRules[rule](ruleHasValue));
                    } else {
                        formRules[input.name].push(validatorRules[rule]);
                    }
                } else {
                    console.log(rule);
                    formRules[input.name] = [validatorRules[rule]];
                }
            }
            // Lắng nghe những sự kiện để blur, change, ...
            input.onblur = handleValidate;
            input.oninput = handleClearErrors; // Khi có nội dung được nhập vào phải xóa đi class invalid đừng hiện đỏ

        }
    }

    // Nơi để chứa các function thực hiện các sự kiện
    // Xử lý sự kiện khi bị blur
    function handleValidate(event) {
        var rules = formRules[event.target.name];
        console.log(event.target.value);
        for (var rule of rules) {
            var errorMessage = rule(event.target.value)
            if(errorMessage) {
                var inputBox = getParent(event.target, '.inputbox');
                if(inputBox) {
                    var formMessage = inputBox.querySelector('.form-message');
                    if(formMessage) {
                        formMessage.innerText = errorMessage;
                        inputBox.classList.add('invalid');
                    }
                    break;
                }
            }
        }
        return !errorMessage;
        // Để check input
    }
    // Xử lý sự kiện khi nhập input vào 
    function handleClearErrors(event) {
        var inputBox = getParent(event.target, '.inputbox');
        if (inputBox) {
            if (inputBox.classList.contains('invalid')) {
                var formMessage = inputBox.querySelector('.form-message');
                formMessage.innerText = '';
                inputBox.classList.remove('invalid');
            }
        }
    }
}

