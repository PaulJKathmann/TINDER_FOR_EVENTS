const newName = document.querySelector("#new_name");
  const nameShow = document.querySelector("#show_name");

  newName.addEventListener("keyup", (event) => {
    let name = document.querySelector("#new_name").value;
    nameShow.innerText = name
  });

  const newPrimary = document.querySelector("#event_primary_color");
  const primaryShow = document.querySelectorAll(".show_primary");

  newPrimary.addEventListener("change", (event) => {
    let primary = document.querySelector("#event_primary_color").value;
    for (const element of primaryShow) {
      element.style.backgroundColor = primary;
    }
  });

  const newSecondary = document.querySelector("#event_secondary_color");
  const secondaryShow = document.querySelectorAll(".show_secondary");
  const secondaryTextShow = document.querySelectorAll(".show_secondary_text");

  newSecondary.addEventListener("change", (event) => {
    let secondary = document.querySelector("#event_secondary_color").value;
    for (const element of secondaryShow) {
      element.style.backgroundColor = secondary;
    }
    for (const element of secondaryTextShow) {
      element.style.color = secondary;
    }
  });

  /* const newLogo = document.querySelector("#event_logo");
  const logoShow = document.querySelector("#show_logo");

  function createObjectURL(object) {
    return (window.URL) ? window.URL.createObjectURL(object) : window.webkitURL.createObjectURL(object);
  }

  function revokeObjectURL(url) {
    return (window.URL) ? window.URL.revokeObjectURL(url) : window.webkitURL.revokeObjectURL(url);
  }

  function myUploadOnChangeFunction() {
    if(this.files.length) {
        for(var i in this.files) {
            var src = createObjectURL(this.files[i]);
            var image = new Image();
            image.src = src;
            logo.innerText = image
            // Do whatever you want with your image, it's just like any other image
            // but it displays directly from the user machine, not the server!
        }
    }
  }

  newLogo.addEventListener("blur", (event) => {
    const source = createObjectURL(newLogo);
    logoShow.src = source;
  }); */
