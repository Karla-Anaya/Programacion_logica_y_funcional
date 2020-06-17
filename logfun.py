Requisitos = {
	"Oracle","SQL/PL","Linux","Unix","Shell","C++",
	"Proc*C","TuxedoV12", "VB6", "Java","WebServices","MicroServicios"
} 

print("Responda con 1, si domina el campo")

def entrevista():
	R1 = input("\n Oracle BBDD : ")
	R2 = input(" SQL y PL/SQL : ")
	R3 = input(" Linux : ")
	R4 = input(" Unix : ")
	R5 = input(" Shell : ")
	R6 = input(" C++ : ")
	R7 = input(" Proc*C : ")
	R8 = input(" TuxedoV12 : ")
	R9 = input(" VB6 : ")
	R10 = input(" Java : ")
	R11 = input(" WebServices : ")
	R12 = input(" MicroServicios : ")
	Experiencia = set()
	if R1 == 1:
		Experiencia.add("Oracle")
	if R2 == 1:
		Experiencia.add("SQL/PL")
	if R3 == 1:
		Experiencia.add("Linux")
	if R4 == 1:
		Experiencia.add("Unix")
	if R5 == 1:
		Experiencia.add("Shell")
	if R6 == 1:
		Experiencia.add("C++")
	if R7 == 1:
		Experiencia.add("Proc*C")
	if R8 == 1:
		Experiencia.add("TuxedoV12")
	if R9 == 1:
		Experiencia.add("VB6")
	if R10 == 1:
		Experiencia.add("Java")
	if R11 == 1:
		Experiencia.add("WebServices")
	if R12 == 1:
		Experiencia.add("MicroServicios")
	print ("Experiencia del usuario",Experiencia)
	print ("Habilidades faltantes: ",Requisitos - Experiencia)
	if (len(Requisitos & Experiencia) >= 6):
		return "SI ESTAS CAPACITADO PARA EL TRABAJO"
	else:
		return "NO ESTAS CAPACITADO PARA EL TRABAJO"

print(entrevista())

