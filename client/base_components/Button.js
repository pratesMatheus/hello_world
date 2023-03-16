class Button {
  constructor(id, text){
    this.element = document.createElement("button");
    this.element.id = id;
    this.element.innerHTML = text;
  }
  addListener(fn){
    this.element.addEventListener("click", fn);
  }
}
