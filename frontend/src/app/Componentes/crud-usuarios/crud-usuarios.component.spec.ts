import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CRUDUsuariosComponent } from './crud-usuarios.component';

describe('CRUDUsuariosComponent', () => {
  let component: CRUDUsuariosComponent;
  let fixture: ComponentFixture<CRUDUsuariosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CRUDUsuariosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CRUDUsuariosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
