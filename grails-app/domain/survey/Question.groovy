/*
1. Question Model list all the questions for the questionnaire
2. A Question has many Answers.

Author: Linghua Jin
Date: 6/11/2012
*/

package survey

class Question {
	String questionName	
	String questionType
	
	static hasMany=[answer:Answer]

    static constraints = {
		questionName()
		questionType(inList:["Text","SingleChoice","MultipleChoice"])
    }
	
	String toString(){
	return "${questionName}"
	}

}
