def entrevista(R):
	if not R:
		return []
	if R:
		print "Manejas: " , (R[0])
		r = input()
		if (r == 1):
			return [R[0]] + entrevista(R[1:])
		else:
			return entrevista(R[1:])

Requisitos = {"Oracle","SQL/PL","Linux","Unix","Shell","C++","Proc*C","TuxedoV12", "VB6", "Java","WebServices","MicroServicios"}
print "Responde con un 1 para si y 0 para no"
L = list (Requisitos)
R = set(entrevista(L))
if (len(R) > 7 ):
	print "Si estas capacitado para el trabajo"
else:
	print "No estas capacitado para el trabajo"
