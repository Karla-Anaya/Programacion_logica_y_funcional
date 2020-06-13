Base = [
	["Laura","Queretaro"],
	["Alena","Paris"],
	["Claudia","San Francisco"],
	["Queretaro","Mexico"],
	["Paris","Francia"],
	["San Francisco","EUA"],
	["Mexico","America"],
	["Francia","Europa"],
	["EUA","America"],]

def lugar(X,Y):
	if not X:
		return []
	if len(X):
		if Y == X[0][0]:
			return X[0][1]
		else:
			return lugar(X[1:],Y)


def esta(E1,E2):
	B = lugar(Base,E1)
	L = lugar(Base, B)
	if L == E2 or B == E2:
		return True
	LE = lugar(Base, L)
	if LE == E2:
		return True
	else:
		return False

print(esta("Alena","Europa"))
