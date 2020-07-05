/*
 *
 *	Arrays script
 *
 */

fn split_words (text string) {
	for item in text.split(" ") {
		println(item)
	}
}

fn welcome (user []string) {

	println("Hello ${user[0]} ${user[1]}, you're ${user[2]}.")
}

fn remove_prefix (message string, prefix string) {

	println(message[prefix.len..])

}

fn add_value (mut array []string, value string) {
	*array << value
}

fn main () {

	text := "Hello i'm Ness"
	split_words(text)

	welcome(["Ness", "MC", "15"])

	remove_prefix("t!help", "t!")

	names := ["Ness", "Sparkot"]
	add_value(mut &names, "coucou")

	println(names)

}