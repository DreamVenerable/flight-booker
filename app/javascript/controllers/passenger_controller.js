import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['orgDiv', 'container']

  add() {
    const divField = this.orgDivTarget.cloneNode(true)

    this.containerTarget.appendChild(divField)
  }

}
