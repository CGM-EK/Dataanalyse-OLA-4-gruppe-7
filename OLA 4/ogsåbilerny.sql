INSERT INTO bilerny (makemodel, prices, forhandler, modelår, f_reg, km_tal, drivmiddel, bs_forbrug, CO2, 
periodisk_afg, ydelse, tophastighed, geartype, trækvægt, nypris, kategori, `type`, vægt, bredde, længde,
højde, lastevne, max_træk_m_b, trækhjul, abs_brems, tank_kap, døre, beskrivelse, cvr)
SELECT n.makemodels, n.prices, n.forhandler, n.modelår, n.f_reg, n.km_tal, n.drivmiddel, n.bs_forbrug, n.CO2, 
n.periodisk_afg, n.ydelse, n.tophastighed, n.geartype, n.trækvægt, n.nypris, n.kategori, n.`type`, n.vægt, n.bredde, n.længde,
n.højde, n.lastevne, n.max_træk_m_b, n.trækhjul, n.abs_brems, n.tank_kap, n.døre, n.beskrivelse, n.cvr
FROM opg3.biler n
LEFT JOIN opg2.biler1 b ON n.makemodels = b.makemodel
WHERE b.car_id IS NULL;