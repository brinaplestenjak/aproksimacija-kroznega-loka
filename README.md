# Aproksimacija-krožnega-loka

Repozitorij vsebuje MATLAB programe za aproksimacijo krožnega loka s parametričnimi polinomi. Programi so bili napisani v sklopu pisanja diplomske naloge Aproksimacija krožnega loka na Fakulteti za računalništvo in informatiko ter Fakulteti za matematiko in fiziko (Univerza v Ljubljani): interdiscplinarni univerzitetni študijski program prve stopnje Računalništvo in matematika. Ljubljana, 2025.

## Uporaba

Programe lahko poženete v okolju ```MATLAB```.

Graf Taylorjevega interpolanta lahko dobite s klicem
`TaylorApproximation.m`, kjer s `fi` podate kot, s `s` število točk,  z `n` pa stopnjo polinoma. 

Kontrolne točke Bézierjevih krivulj, ki predstavljajo določeno optimalno geometrijsko aproksimacijo dobimo s klicem:
- `G1Parabolic.m` za parabolično aproksimacijo geometrijskega reda 1, kjer funkciji podamo kot `fi`,
- `G0Morken.m` za parabolično aproksimacijo geometrijskega reda 0, ki jo je odkril Mørken, kjer funkciji podamo kot `fi`,
- `G0Parabolic.m` za optimalno parabolično aproksimacijo geometrijskega reda 0 glede na radialno napako, kjer funkciji podamo kot `fi` in toleranco `e`,
- `G0ParabolicSimplified` za optimalno parabolično aproksimacijo geometrijskega reda 0 glede na poensotavljeno radialno napako, kjer funkciji podamo kot `fi` in toleranco `e`,
- `G2Cubic.m` za kubično aproksimacijo geometrijskega reda 2, kjer funkciji podamo kot `fi`,
- `G1Cubic.m` za optimalno kubično aproksimacijo geometrijskega reda 1 glede na radialno napako, kjer funkciji podamo kot `fi` in toleranco `e`,
- `G1CubicSimplified.m` za optimalno kubično aproksimacijo geometrijskega reda 1 glede na radialno napako, kjer funkciji podamo kot `fi` in toleranco `e`.

Kontrolne točke uporabimo pri klicu funkcij
- `PlotApproximation.m`, ki nam za kontrolne točke `b` nariše krivuljo ter kontrolni poligon na `s` točkah,
- `PlotError.m`, ki nam za kontrolne točke `b` nariše radialno in poenostavljeno radialno napako ter kontrolni poligon na `s` točkah.

Red aproksimacij lahko preverimo v 
- `G0ParabolicErrorOrder.m`, ki nam vrne prvih `m` radialnih razdalj aproksimacij kotov pi/2^i in red napake, ki jih računa na `s` točkah, `G0Morken.m` pa kliče s toleranco `e`,
- `G0CubicErrorOrder.m`, ki nam vrne prvih `m` radialnih razdalj aproksimacij kotov pi/2^i in red napake, ki jih računa na `s` točkah, `G1Cubic.m` pa kliče s toleranco `e`.




