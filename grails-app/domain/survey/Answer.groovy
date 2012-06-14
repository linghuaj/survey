/*
Answer Model list all the answers(choices) for the question
Author: Linghua Jin
Date: 6/12/2012
*/

package survey

class Answer {
	String answerName
	static belongsTo=[question:Question]

    static constraints = {
    }
	String toString(){
	return "${answerName}"
}
}
