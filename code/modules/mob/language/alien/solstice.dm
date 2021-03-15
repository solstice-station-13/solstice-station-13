/datum/language/sergal
	name = LANGUAGE_SERGAL
	desc = "The dominant language of the Sergal homeworld, Tal. It consists of aggressive low-pitched hissing and throaty growling."
	speech_verb = "snarls"
	ask_verb = "snarls"
	exclaim_verb = "barks"
	colour = "changeling"
	key = "s"
	flags = WHITELISTED
	space_chance = 20
	syllables = list("za","ryo","tsu","kya","kyu","kyo","pya","pyo","pyu","myo","gya","zu","zi","cho","cha","eru","tasu","byu","ina","byo","bya","sho","shu","sha", \
	"zyn","hiz","omi","non","bon","ya","yu","yo","ja","ju","jo","ha","hi","he","mi","ho","mu","hu","mu","na","ne","ni","no","ta","te","ti","to","ba","bi","bo","be", \
	"pa","pi","pe","po","pu","wa","wo","Sieg","ka","da","ke","de","ki","di","ko","do","ku","du","za","zu","sa","ga","se","ge","si","gi","so","go","su","gu","zi","ze", \
	"ra","zo","re","ro","ri","ru","a","a","e","e","i","i","o","o","u","u","n","y","yip","sieg","jud","act","xian","tal")
	shorthand = "SG"
	partial_understanding = list(
		LANGUAGE_HUMAN_EURO = 2,
		LANGUAGE_SPACER = 2,
		LANGUAGE_SIIK = 5,
		LANGUAGE_CANILUNZT = 5
	)

/datum/language/vulpkanin
	name = LANGUAGE_CANILUNZT
	desc = "The guttural language spoken and utilized by the inhabitants of Vazzend system, composed of growls, barks, yaps, and heavy \
	utilization of ears and tail movements. Vulpkanin speak this language with ease."
	speech_verb = "rrrfts"
	ask_verb = "rurs"
	exclaim_verb = "barks"
	colour = "vulpkanin"
	key = "V"
	space_chance = 40
	flags = WHITELISTED
	syllables = list("rur","ya","cen","rawr","bar","kuk","tek","qat","uk","wu","vuh","tah","tch","schz","auch", \
	"ist","ein","entch","zwichs","tut","mir","wo","bis","es","vor","nic","gro","lll","enem","zandt","tzch","noch", \
	"hel","ischt","far","wa","baram","iereng","tech","lach","sam","mak","lich","gen","or","ag","eck","gec","stag","onn", \
	"bin","ket","jarl","vulf","einech","cresthz","azunein","ghzth")
	shorthand = "CN"
	partial_understanding = list(
		LANGUAGE_HUMAN_EURO = 2,
		LANGUAGE_SPACER = 2,
		LANGUAGE_SIIK = 5,
		LANGUAGE_SERGAL = 5
	)
	
/datum/language/tajaran
	name = LANGUAGE_SIIK
	desc = "The most prevalant language of Almutahar, composed of expressive yowls and chirps. Native to the Sabelkyne."
	speech_verb = "mrowls"
	ask_verb = "mrowls"
	exclaim_verb = "yowls"
	colour = "tajaran"
	key = "j"
	space_chance = 40
	flags = WHITELISTED
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","saam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")
	shorthand = "SB"
	partial_understanding = list(
		LANGUAGE_HUMAN_EURO = 2,
		LANGUAGE_SPACER = 2,
		LANGUAGE_SERGAL = 5,
		LANGUAGE_CANILUNZT = 5
	)
