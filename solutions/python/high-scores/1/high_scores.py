def latest(scores):
    if(len(scores)>1):
        return scores[len(scores)-1]
    else:
	return []

def personal_best(scores):
    return max(scores)

def personal_top_three(scores):
        if(scores==[]):
	    return []
	scores.sort(reverse=True)
	if (len(scores)>3):
	    return scores[0:3]
	else:
	    return scores
