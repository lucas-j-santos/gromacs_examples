import mbuild as mb
import foyer

methane = mb.Compound(name='_CH4')
methane.mass = 16.05
box = mb.fill_box(compound=[methane], box=[3.0,3.0,3.0], density=100.0)

trappe = foyer.forcefields.load_TRAPPE_UA()
box_ff = trappe.apply(box)
box_ff.save('common/box.gro', overwrite=True, combine='all')
box_ff.save('common/box.top', overwrite=True, combine='all')
