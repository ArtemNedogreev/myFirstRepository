let http404Error = (404, "Not Found")
// http404Error имеет тип (Int, String), и равен (404, "Not Found")

let (statusCode, statusMessage) = http404Error
//Дал название значениям, к которым буду через эти названия обращаться

print("Server code is \(statusCode)")
print("Server status is \(statusMessage)")
// --Вывел в консоль--

let (justStatusCode, _) = http404Error
// объявил новую константу, привязав к ней кортеж. Но в названии дал подчеркивание, чтобы исключить второй параметр

print("server status \(justStatusCode)")
// --Вывел в консоль--

let server200status = (statusCode: 200, description: "OK")
//Присвоил каждому значению свое название прямо в списке значений

print("Server status is \(server200status.statusCode)")
print("Server message is \(server200status.description)")
// --Вывел в консоль--

print("Server status is \(server200status.statusCode)")
print("Server message is \(server200status.description)")
// --Вывел в консоль--///////

print("Hello World")
print("111")
