<html>
<head>
	<title>Anthony Chavez Recursive Descent Parser</title>
</head>

<body style="background-color:cyan">
<center><h1>CSC 135 Recursive Descent Parser</h1></center>

<h2>PL Homework Assignment 4:</h2>
<h3>Web-based Recursive Descent Recognizer</h3>
<p>In this assignment you are to implement a recursive-descent recognizer with a web interface for the BNF grammar given below. Based on the pseudocode you have done in PL Assignment 1, this is a good opportunity to develop the web programming skills required by today's IT field.</p>

<p>EXP ::= EXP + TERM | EXP - TERM | TERM</p>
<p>TERM ::= TERM * FACTOR | TERM / FACTOR | FACTOR</p>
<p>FACTOR ::= ( EXP ) | DIGIT</p>
<p>DIGIT ::= 0 | 1 | 2 | 3</p>

<p>The following is a set of requirements for this recognizer (parser)</p>
<ul>
	<li>Ask the user for an input stream.</li>
	<li>Report "legal" or "errors found" (not both!).</li>
	<li>Assume the input stream is the token stream.</li>
	<li>Assume the input stream terminates with a $.</li>
	<li>Assume there is no white space.</li>
	<li>Use a form to collect input and return the output.</li>
	<li>Test your recognizer with illegal and legal strings.</li>
	<li>Give a brief description of this recognizer for the user on how to use and what method that it based on.</li>
</ul>

<h3>Submission:</h3>
<p>Here are two sample testing sets<br>
Valid set: 1+2$, 0-3*2$, 2/(3+1)$<br>
Invalid set: 1+2, 1*4$, 1*a$ 
</p>

<br>


<br>
<br>
<a href="http://athena.ecs.csus.edu/~chavezan/">Anthony Chavez Home Page</a>

</body>
</html>