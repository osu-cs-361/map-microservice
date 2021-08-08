// You can use the following file in combination with copy/pasting the html code in test.html (copy area should be 
// clearly identified). 

// This function creates an eventListener for the submit button on the new project form
const getMapID = document.querySelector("#mapIDForm");
getMapID.addEventListener('submit', async (e) => {
    e.preventDefault();

    // get form values
    let mapID = getMapID.elements.mapID.value;


    // Set base url for use in fetch function
    let url = "http://flip3.engr.oregonstate.edu:14956/beach/" + mapID;

    // Set config variable to be used as 2nd paramter in fetch (fetch init object)
    const config = {
        method: 'GET',
    };

    // make Post request to url
    const res = await fetch(url, config);
    const data = await res.json();

    // Update attributes to display selected map
    let iframe = document.querySelector("#iframeUpdate");
    iframe.setAttribute("src", data.src);
    let link = document.querySelector("#anchorUpdate");
    link.setAttribute("href", data.href);

    // Reset form values
    getMapID.elements.mapID.value = "";
})