import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]
  connect() {
    console.log("Hello World!")
  }
  show() {
    this.formTarget.classList.toggle("d-none")
  }
}
