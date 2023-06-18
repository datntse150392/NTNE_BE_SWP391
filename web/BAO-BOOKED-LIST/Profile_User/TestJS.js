var SearchBar = document.querySelector('.search-bar');
var listOfTitle = document.querySelectorAll('.tour-name');
var listOfContent = document.querySelectorAll('.tab-content');
var array_title = Array.from(listOfTitle);



function checkElementMatch(searchValue, element) {
    if (element.innerText.includes(searchValue)) {

        return true;
    } else {
        return false;
    }

}

SearchBar.oninput = function (e) {
    var searchValue = e.target.value;

    for (let i = 0; i < array_title.length; i++) {
        var item = array_title[i];

        var content_block = listOfContent[i];
        if (checkElementMatch(searchValue, item)) {
            content_block.style.display = 'block';
        } else {
            content_block.style.display = 'none';
        }
    }
};

