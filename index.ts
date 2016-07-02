import 'core-js';
import 'rxjs/Rx';
import 'zone.js/dist/zone';

import {bootstrap} from '@angular/platform-browser-dynamic';
import {Component} from '@angular/core';


@Component({
    selector: 'accordion-group',
    template: `
        <div class="accordion-group" id="accordion-groupx"></div>
    `,
    directives: [AccordionComponent]
})
class AccordionGroupComponent {
}


@Component({
    selector: 'accordions',
    template: `
        <div id="accordion"></div>
    `
})
class AccordionComponent {
}


bootstrap(AccordionComponent);
