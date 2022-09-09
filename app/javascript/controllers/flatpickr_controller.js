import Flatpickr from 'stimulus-flatpickr';
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin.js';
// import { Controller } from "@hotwired/stimulus";


export default class extends Flatpickr {
  connect() {
    this.config = {
      mode: 'range',
      plugins: [new rangePlugin({ input: "#secondRangeInput"})]
    }
    super.connect()
  }
}
