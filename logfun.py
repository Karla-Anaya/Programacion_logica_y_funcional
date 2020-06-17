Requisitos = {
	"Oracle","SQL/PL","Linux","Unix","Shell","C++","Proc*C","TuxedoV12", "VB6", "Java","WebServices","MicroServicios"
} 

print("Responda con Si, si domina el campo")

def entrevista():
	R1 = input("\n Oracle BBDD : ").upper()
	R2 = input(" SQL y PL/SQL : ").upper()
	R3 = input(" Linux : ").upper()
	R4 = input(" Unix : ").upper()
	R5 = input(" Shell : ").upper()
	R6 = input(" C++ : ").upper()
	R7 = input(" Proc*C : ").upper()
	R8 = input(" TuxedoV12 : ").upper()
	R9 = input(" VB6 : ").upper()
	R10 = input(" Java : ").upper()
	R11 = input(" WebServices : ").upper()
	R12 = input(" MicroServicios : ").upper()
	Experiencia = set()
	if R1 == "SI":
		Experiencia.add("Oracle")
	if R2 == "SI":
		Experiencia.add("SQL/PL")
	if R3 == "SI":
		Experiencia.add("Linux")
	if R4 == "SI":
		Experiencia.add("Unix")
	if R5 == "SI":
		Experiencia.add("Shell")
	if R6 == "SI":
		Experiencia.add("C++")
	if R7 == "SI":
		Experiencia.add("Proc*C")
	if R8 == "SI":
		Experiencia.add("TuxedoV12")
	if R9 == "SI":
		Experiencia.add("VB6")
	if R10 == "SI":
		Experiencia.add("Java")
	if R11 == "SI":
		Experiencia.add("WebServices")
	if R12 == "SI":
		Experiencia.add("MicroServicios")
	print ("Experiencia del usuario",Experiencia)
	print ("Habilidades faltantes: ",Requisitos - Experiencia)
	if (len(Requisitos & Experiencia) >= 6):
		return "SI ESTAS CAPACITADO PARA EL TRABAJO"
	else:
		return "NO ESTAS CAPACITADO PARA EL TRABAJO"

print(entrevista())
