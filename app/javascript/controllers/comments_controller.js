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

    //get element
    const form = document.getElementById(formId);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const commentBody = document.getElementById(commentBodyId);
    commentBody.classList.toggle("d-none");
  }
}
