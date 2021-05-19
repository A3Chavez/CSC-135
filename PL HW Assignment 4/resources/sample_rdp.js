function recursiveDescentRecognizer() {
    var x = document.getElementById("input");
    var input = x.value;
    input = input.trim();
    var token = input.split("");
    expression(token);
    if (token[1] != null || token[0] != "$") {
        errorResponse();
    }
}

function expression(token) {
    term(token);
    while (token[0] == "+" || token[0] == "-") {
        if (token[0] == "+") {
            token = match("+", token)
            term(token);
        }
        if (token[0] == "-") {
            token = match("-", token)
            term(token);
        }
    }
}

function term(token) {
    factor(token);
    while (token[0] == "*" || token[0] == "/") {
        if (token[0] == "*") {
            token = match("*", token)
            factor(token);
        }
        if (token[0] == "/") {
            token = match("/", token)
            factor(token);
        }
    }
}

function factor(token) {
    if (token[0] == "(") {
        token = match("(", token);
        expression(token);

        token = match(")", token);
    } else if (token[0] == "0") {
        token = match("0", token);
    } else if (token[0] == "1") {
        token = match("1", token);
    } else if (token[0] == "2") {
        token = match("2", token);
    } else if (token[0] == "3") {
        token = match("3", token);
    } else {
        errorResponse();
    }

}

function match(x, token) {
    if (token[0] == x) {
        return getNextToken(token);
    } else {
        errorResponse();
    }
}

function getNextToken(token) {
    token.shift();
    if (token[0] == "$") {
        legalResponse();
    }
    return token;
}

function errorResponse() {
    var x = document.getElementById("input");
    var str = x.value;
    var input = str.slice(0, -1);
    document.getElementById("output").innerHTML =
        "Errors found : " + input + " ";
    exit();
}

function legalResponse() {
    var x = document.getElementById("input");
    var str = x.value;
    var input = str.slice(0, -1);
    document.getElementById("output").innerHTML =
        "Passed : '" + input + "' is a legal expression";
}