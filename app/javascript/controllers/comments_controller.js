import { Controller } from "@hotwired/stimulus"

export default class extends Controller {                                     
  initialize(){
    console.log("initialize executes only once");
  }
  connect() {
    console.log("connect execute when rails application connected");
  }
  toggleForm(event){
    console.log("Action to be performed on button click");
    event.preventDefault();
    event.stopPropagation();

    //get params
    const formId = event.params["form"];
    const commentBodyId = event.params["body"];
    const editButtonId = event.params["edit"];

    //get element
    const form = document.getElementById(formId);
    const commentBody = document.getElementById(commentBodyId);
    const editButton = document.getElementById(editButtonId)

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
   
    commentBody.classList.toggle("d-none");
    this.toggleEditButton(editButton);
  }

  toggleEditButton(editButton){
    if(editButton.innerText == "Edit"){
      editButton.innerText = "Cancel";
      this.toggleEditButtonClass(editButton);
    } else {
      editButton.innerText = "Edit";
      this.toggleEditButtonClass(editButton);
    }
  }

  toggleEditButtonClass(editButton){
    editButton.classList.toggle('btn-secondary');
    editButton.classList.toggle('btn-warning');
  }
}
