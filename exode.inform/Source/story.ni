"Exode" by "Léopold Tal" (in French)

The story headline is "Une aventure domestique".
The story genre is "Fantasy".
The release number is 1.
The story description is "'C'est inutile', dit Johannes. Il ne vous appelle pas maman. Vous voulez lui répondre, mais vous n'osez pas croiser son regard.

Les yeux rivés sur le sol, vous l'entendez finir son café et poser le bol sur la table. La parole vous revient lorsqu'il ouvre la porte.

'Mais… où iras-tu ?'

'C'est mon affaire.' Est-ce de la hargne dans sa voix, ou simplement de l'indifférence ?

Vous restez figée devant le portail longtemps après qu'il a disparu sur la grand'route. Puis les bruits de la ferme vous ramènent à vous-même. Votre labeur quotidien n'attend pas ; il est temps de nourrir les poules."
The story creation year is 2021.

[File inclusion is broken on 6L38. You need to manually add the feelies to the release after building. Sorry.]
Release along with an interpreter,
	[a file of "Aide-mémoire" called "aide-memoire.pdf",
	a file of "Livret d'introduction" called "Introduction-FI-fr.pdf",
	a file of "Solution" called "solution.txt"]
	the source text,
	and cover art ("Un champ dans la brume").

When play begins:
	say the story description;
	say line break.

Part 1 - Mechanics

When play begins:
	now the right hand status line is "[map region of the location]".

The standard report taking rule response (A) is "Vous rangez [the noun] dans une poche de votre tablier."

Chapter 1 - Terms

Section 1 - Actions out of world

Requesting the credits is an action out of world applying to nothing.
Understand "credits" as requesting the credits.

Carry out requesting the credits:
	say credits.

To say credits:
	say "Merci beaucoup à l'association Palo Altours pour l'organisation de la jam, à rature et Fabien pour avoir testé le jeu, et à Björn David 'Eleas' Paulsen pour son aide en Inform 7."

Requesting the help is an action out of world applying to nothing.
Understand "about" and "info" and "aide" and "help" as requesting the help.

Carry out requesting the help:
	say "Ce jeu a été réalisé pour la Game Jam Hitboxmakers de 2021.
	
	Si vous êtes un nouveau joueur de fiction interactive, n'hésitez pas à consulter l'aide-mémoire qui liste quelques commandes courantes, ou le livret d'introduction qui explique en détail comment jouer.";
	say line break;
	say credits.

Section 2 - Testing tools - Not for release

After reading a command:
	if the player's command matches the regular expression "^\p":
		say "[bracket]Noté.[close bracket]";
		reject the player's command.

Section 3 - Understanding

Understand "johannes" and "johanes" and "yohannes" and "yohanes" and "johann" and "johan" and "yohann" and "yohan" and "hans" and "hansel" and "hanschen" and "hannes" and "hanes" and "jojo" and "jean" and "jan" and "jens" and "fils" and "enfant" and "homme" and "garcon" as "[Johannes]".

Understand "gifler [someone]" and "insulter [someone]" as attacking.

Understand the command "rejoindre" as "x". [kinda hacky…]

A thing can be climbable.
Does the player mean climbing:
	if the noun is climbable:
		if the noun is the lumiere:
			it is very likely;
		it is likely;
	if the noun is the marches or the noun is the marches-etranges:
		say "[The noun] is the marches.";
		it is possible;
	otherwise:
		it is unlikely.

Instead of climbing when the noun is a door:
	try entering the noun.

Section 4 - Senses

Every thing has some text called the sound. The sound of a thing is usually "".
Definition: A thing is silent rather than audible if the sound of it is "".

The report listening rule is not listed in any rulebook.
Carry out listening to something silent:
	say "Vous n'entendez rien."
Carry out listening to something audible:
	say "[The sound of the noun][paragraph break]".
Carry out listening to a room:
	let target be a random audible thing in the noun;
	if target is nothing:
		say "Le silence règne.";
	otherwise:
		try listening to the target instead.

Every thing has some text called the scent. The scent of a thing is usually "".
Definition: A thing is scentless rather than scented if the scent of it is "".

The report smelling rule is not listed in any rulebook.
Carry out smelling something scentless:
	say "[The noun] n['][as] pas d'odeur."
Carry out smelling something scented:
	say "[The scent of the noun][paragraph break]".
Carry out smelling a room:
	let target be a random scented thing in the noun;
	if target is nothing:
		say "Vous ne sentez rien.";
	otherwise:
		try smelling the target instead.

Every thing has some text called the texture. The texture of a thing is usually "Vous touchez [the noun] du bout des doigts."
The report touching things rule and the report touching other people rule are not listed in any rulebook.
Carry out touching something when the noun is not the player:
	say "[The texture of the noun][paragraph break]".

Chapter 2 - Kinds

Section 1 - Communication

Talking is an action applying to one thing. Understand "parler [something]" and "parler a/au/aux [something]" as talking.
Understand "crier [something]" and "crier a [something]" as talking.

Talking is speech. Asking something for something is speech. Answering something that a topic is speech. Telling something about a topic is speech. Asking something about a topic is speech.

Instead of speech:
	say "Déroutée, vous essayez de parler [aux noun]."
Instead of speech when the noun is the player:
	say "Vous grommelez pour vous-même."

Understand "faire signe/signes/coucou" as waving hands.

Hailing is an action applying to one thing. Understand "faire signe/signes/coucou [something]" and "faire signe/signes/coucou a [something]" as hailing.
Carry out hailing:
	try waving hands instead.

Section 2 - Chickens

A chicken is a kind of animal. The sound of a chicken is usually "Johannes ne s'est jamais habitué aux cris des poules. Vous les trouvez rassurants, mais il dit qu'ils lui donnent des maux de tête." The scent of a chicken is usually "Une bonne odeur de basse-cour." The texture of a chicken is usually "La poule se laisse caresser."

Understand "poule" and "poules" and "coq" and "coqs" and "poussin" and "poussins" and "oiseau" and "oiseaux" and "cocotte" and "cocottes" and "cotcot" as a chicken.

Feeding is an action applying to one thing. Understand "nourrir [someone]" and "donner a manger a/au/aux/-- [someone]" as feeding.

Instead of feeding a chicken:
	say "Vous n'avez pas de grain."

Before giving something to a chicken (called bawky):
	try feeding the bawky instead.

Every turn when the player can see a chicken:
	say "[one of]Les poules caquètent.[or]Quelques-unes des poules grattent le sol à vos pieds.[or]Une poule trouve un insecte et le mange.[or]Deux poules se disputent à coups de bec.[or]Une poule se met à courir, soulevant un nuage de poussière.[at random]"

Part 2 - Rooms

The description of the player is "Vos jupes sont trouées et votre tablier couvert de taches. Vous n'en avez aucune honte[_]: les travaux de la ferme sont rudes. Il serait inconvenant de porter en semaine les habits du dimanche."

Understand "jupe" and "jupes" and "tablier" as yourself.

Chapter 1 - Réalité

Section 1 - Cour

La Cour is a room. "La cour de votre ferme, où vos [poules] gambadent du lever au coucher du soleil et cherchent des insectes dans le sable. Le poulailler où elles dorment est à l'ouest. Votre maison se dresse au nord, en haut de quelques [marches]."

Instead of going inside from the Cour:
	say "Vous pouvez entrer dans la maison (au nord) ou dans le poulailler (à l'ouest)."
Instead of going nowhere from the Cour:
	say no-leaving-farm.
Instead of exiting from the Cour:
	say no-leaving-farm.
To say no-leaving-farm:
	say "Il est trop tard pour courir après Johannes."

Some poules brunes are chickens in the Cour. The printed name of the poules brunes is "poules". The description of the poules brunes is "Elles caquètent avec indignation. Pourquoi leur repas tarde-t-il autant[_]?"

La jatte de grain is a container in the Cour. "Une jatte est posée près de la porte." Understand "jattes" and "ble" as the jatte.

La cle is a thing. "La clé du grenier gît au sol." The printed name of the cle is "clé du grenier". The indefinite article is "la". Understand "clef" and "grenier" as the cle. The description of the cle is "Une petite clé un peu rouillée. Elle ouvre le grenier."

After taking or searching the jatte for the first time:
	key-reveal.
Instead of looking under the jatte for the first time:
	key-reveal.
Instead of examining the jatte for the first time:
	say "Elle est censée contenir du grain pour les poules, mais il n'y en a plus. Vous allez devoir monter en chercher au grenier.";
	key-reveal.

To key-reveal:
	if the cle is nowhere:
		say "Sous la jatte, vous trouvez la clé du grenier. Vous avez l'esprit si troublé que vous aviez oublié qu'elle est rangée là.";
		move the cle to the player.

La maison-exterior is privately-named scenery in the Cour. "Votre maison est une bâtisse de pierres, construite il y a bien des générations." The printed name of the maison-exterior is "maison". Understand "maison" or "mur" or "murs" or "toit" or "ferme" or "pierre" or "pierres" or "batisse" as the maison-exterior.

The maison-exterior can be enterable. The maison-exterior is enterable.
Instead of entering the maison-exterior:
	try going north.

Le poulailler-exterior is privately-named scenery in the Cour. "Johannes et vous avez bâti ce poulailler ensemble. D'ordinaire, ce souvenir vous remplit de fierté[_]; aujourd'hui, il est amer." The printed name of the poulailler-exterior is "poulailler". Understand "poulailler" as the poulailler-exterior.

The poulailler-exterior can be enterable. The poulailler-exterior is enterable.
Instead of entering the poulailler-exterior:
	try going west.

Les marches (f) are a door. The marches are up of the Cour and down of the Maison. Understand "marche" and "marches" and "escalier" as the marches.
The marches are open, not openable, and not lockable.

[TODO: scenery: sol, ciel, soleil]

Section 2 - Poulailler

Le Poulailler is west of the Cour. "À cette heure-ci, le poulailler est vide, car les poules ne rentrent que pour dormir. Leurs [nid]s de paille sont alignés sur les perchoirs en bois. La seule issue est à l'est, vers la cour." Outside from the Poulailler is the Cour.

Instead of going nowhere from the Poulailler:
	say "La sortie est à l'est."

Le nid reel is a container in the Poulailler. The printed name of the nid reel is "nid". Understand "nids" and "paille" as the nid. [TODO: special "les poules n'ont pas pondu" empty message]

Le perchoir reel is privately-named scenery in the Poulailler. The printed name of the perchoir reel is "perchoir". Understand "perchoir" and "perchoirs" and "bois" as the perchoir reel. The description of the perchoir reel is "Quelques perchoirs de bois pour vos poules."

Les murs du poulailler (m) are scenery in the Poulailler. "Le poulailler est fait de quelques lattes de bois." Understand "mur" and "latte" and "lattes" as the murs du poulailler.

Section 3 - Maison

La Maison is north of the Cour. [also up of it, because of the steps] "Votre bonne vieille maison de pierre est si vide. Johannes a grandi ici, et maintenant, plus rien…

Quelques [marches] au sud descendent vers la cour, et une [echelle] mène au grenier." Outside from the Maison is the Cour.

Report going to the Maison from the Cour:
	say "Vous montez les marches de votre maison."
Report going to the Cour from the Maison:
	say "Vous descendez dans la cour."

Instead of going nowhere from the Maison:
	say "Vous pouvez descendre les marches au sud, ou monter par l'échelle."

Les murs de la maison (m) are scenery in the Maison. "Ces épais murs de pierre ont vu vos ancêtres grandir." Understand "mur" and "pierre" and "pierres" as the murs de la maison.

L' echelle reelle (f) is a door. It is up of the Maison and down of the Cour Etrange. The printed name of the echelle reelle is "échelle". Understand "barreau" and "barreaux" and "bois" and "massif" as the echelle.
The echelle is open. The echelle is not openable. The echelle is not lockable. The echelle is locked. The echelle is climbable.

The description of the echelle is "Cette grande échelle de bois massif [if the player is in the Maison]mène au[otherwise]descend du[end if] grenier."

Instead of going up from the Maison when the echelle is locked and the player does not carry the cle:
	say "Vous n'avez pas la clé du grenier sur vous."
Before going up from the Maison when the player carries the cle:
	now the echelle is unlocked.

Report going to the Cour Etrange from the Maison:
	say "Vous grimpez l'échelle."
Report going to the Maison from the Cour Etrange:
	say "Vous redescendez l'échelle."

[TODO: scenery: meubles]

Realite is a region. The Cour, the Poulailler, and the Maison are in Realite. The printed name of Realite is "Réalité".

Chapter 2 - Enfance

Section 1 - Cour

La Cour Etrange is a room. "[one of]Avec stupeur,[or]L'enchantement (ou l'hallucination[_]?) persiste, et[stopping] vous vous retrouvez dans un endroit incompréhensible. Vous bien êtes sous les toits, vous reconnaissez bien la [charpente] et l['][echelle reelle] de votre grenier, mais il vous semble être dans la cour de votre ferme[_]: voilà le poulailler à l'ouest, la maison avec ses [marches-etranges] au nord, les [poules blanches] autour de vos pieds. Et pourtant tout cela tient dans le grenier." The printed name of the Cour Etrange is "Cour…?".

Instead of going inside from the Cour Etrange:
	say "Vous pouvez entrer dans la maison (au nord) ou dans le poulailler (à l'ouest). Vous pouvez également redescendre par l'échelle."
Instead of going nowhere from the Cour Etrange:
	say no-jumping.
Instead of exiting from the Cour Etrange:
	say no-jumping.
To say no-jumping:
	say "Vous ignorez si c'est l'air libre ou un mur qui vous attend, mais vous craignez de tomber."

La charpente is scenery in the Cour Etrange. "Le ciel apparaît entre les poutres du grenier." Understand "mur" and "murs" and "toit" and "tuile" and "tuiles" and "poutre" and "poutres" and "ciel" and "soleil" and "bleu" and "azur" as the charpente.

La maison-etrange-exterior is privately-named scenery in the Cour Etrange. "C'est, ou cela paraît être, votre maison, à l'intérieur de son propre grenier." The printed name of the maison-etrange-exterior is "maison". Understand "maison" or "mur" or "murs" or "toit" or "ferme" or "pierre" or "pierres" or "batisse" as the maison-etrange-exterior.

The maison-etrange-exterior can be enterable. The maison-etrange-exterior is enterable.
Instead of entering the maison-etrange-exterior:
	try going north.

Le poulailler-etrange-exterior is privately-named scenery in the Cour Etrange. "Votre vieux poulailler n'a rien de remarquable, si ce n'est qu'il est dans le grenier." The printed name of the poulailler-etrange-exterior is "poulailler". Understand "poulailler" as the poulailler-etrange-exterior.

The poulailler-etrange-exterior can be enterable. The poulailler-etrange-exterior is enterable.
Instead of entering the poulailler-etrange-exterior:
	try going west.

Les marches-etranges (f) are a door. The marches-etranges are up of the Cour Etrange and down of the Maison Etrange. The printed name of the marches-etranges is "marches". Understand "marche" and "marches" and "escalier" as the marches-etranges.
The marches-etranges are open, not openable, and not lockable.

Some poules blanches are chickens in the Cour Etrange. The printed name of the poules blanches is "poules". The description of the poules blanches is "Étrange[_]: vous avez toujours eu des poules rousses et brunes, mais celles-ci sont blanches." Understand "blanc" and "blanche" and "blancs" and "blanches" as the poules.

Johannes Enfant is a man in the Cour Etrange. "[one of]Un petit garçon — non, c'est Johannes, mais redevenu enfant —[or]Johannes[stopping] court après les poules." Understand "[Johannes]" and "bebe" and "petit" as Johannes Enfant. The printed name of Johannes Enfant is "Johannes".

The description of Johannes Enfant is "Il semble étrangement immatériel, comme une apparition." The sound of Johannes Enfant is "Johannes crie gaiement après les poules." The texture of Johannes Enfant is "Vous caressez les cheveux de Johannes."

Instead of speech when the noun is Johannes Enfant:
	say "Johannes se blottit contre vos jupes."

Instead of attacking Johannes Enfant:
	say "Vous giflez Johannes. Il se retient courageusement de pleurer."

Instead of kissing Johannes Enfant:
	say "Il se serre contre vous."

Instead of going to the Maison Etrange from the Cour Etrange when Johannes is in the Cour Etrange:
	say "Johannes vous tire par la manche. 'Maman[_]! Il faut que tu m'aides à ramasser les œufs[_]!'"

Section 2 - Poulailler

Le Poulailler Etrange is west of the Cour Etrange. "C'est bien votre poulailler. Il semble identique à celui dont vous avez l'habitude, à part peut-être que le bois est un peu plus brillant, la paille un peu plus dorée, les [nid]s un peu plus douillets, la cour à l'est un peu plus proche." The printed name of the Poulailler Etrange is "Poulailler…?". Outside from the Poulailler Etrange is the Cour Etrange.

Instead of going nowhere from the Poulailler Etrange:
	say "La sortie est à l'est."

Les murs du poulailler etrange (m) are scenery in the Poulailler Etrange. "Le mur est lisse et solide." The printed name of the murs du poulailler etrange is "murs du poulailler". Understand "murs" and "mur" and "latte" and "lattes" as the murs du poulailler etrange.

Le nid etrange is a container in the Poulailler Etrange. The printed name of the nid etrange is "nid". Understand "nids" and "paille" as the nid.

Les oeufs (m) are in the nid etrange. The printed name of the oeufs is "œufs". Understand "oeuf" as the oeufs. [FIXME: understand "œuf(s)"] The description of the oeufs is "De beaux œufs blancs."

Le perchoir etrange is privately-named scenery in the Poulailler Etrange. The printed name of the perchoir etrange is "perchoir". Understand "perchoir" and "perchoirs" and "bois" as the perchoir etrange. The description of the perchoir etrange is "Le bois des perchoirs est propre et brillant."

After taking the oeufs for the first time:
	say "Plus vous ramassez d[']œufs, plus vous en trouvez. Vous en accumulez plusieurs douzaines dans les poches de votre tablier."

Instead of eating the oeufs:
	if the player does not carry the oeufs:
		say "(prenant d'abord les œufs)[command clarification break]";
		try taking the oeufs;
	say "Vous gobez un des œufs. Vos provisions ne semblent pas diminuer."

Instead of giving the oeufs to Johannes Enfant:
	say "'Tiens, Hänschen, voilà de beaux œufs pour toi, bien frais.' Vous donnez quelques-uns des œufs à Johannes, puis d'autres, puis encore d'autres, sans jamais les épuiser. Quand il a rempli ses mains et ses poches, il vous embrasse et court vers la maison.";
	now Johannes Enfant is nowhere.

Enfance is a region. The Cour Etrange and the Poulailler Etrange are in Enfance.

Chapter 3 - Adolescence

Section 1 - Maison

La Maison Etrange is north of the Cour Etrange. [also up of it, because of the steps] "Vous trouvez votre maison dans l'état où Johannes la mettait à quinze ans, c'est-à-dire dans un [desordre] abominable. Des vêtements roulés en boule jonchent le sol jusqu'aux [marches-etranges] ou pendent des barreaux de l['][echelle], les meubles sont couverts de détritus, la vaisselle n'est pas faite." The printed name of the Maison Etrange is "Maison[_](?)". Outside from the Maison Etrange is the Cour Etrange.

Before going to the Grenier from the Maison Etrange for the first time:
	say "Vous inspirez profondément. Qui sait ce que vous trouverez en haut de cette échelle ?"

Instead of going nowhere from the Maison Etrange:
	say "Vous pouvez descendre les marches au sud, ou monter par l'échelle."

Les murs de la maison etrange (m) are scenery in the Maison Etrange. "Il a même sali les murs[_]!" The printed name of the murs de la maison etrange is "murs de la maison". Understand "murs" and "mur" and "pierre" and "pierres" as the murs de la maison etrange.

The desordre is scenery in the Maison Etrange. The printed name of the desordre is "désordre". Understand "vetement" and "vetements" and "habit" and "habits" and "sale" and "sales" and "detritus" and "ordure" and "ordures" and "vaisselle" and "assiette" and "assiettes" and "couvert" and "couverts" and "chaos" and "bordel" and "boxon" and "abominable" as the desordre.

The description of the desordre is "Johannes était si désordonné à cet âge. Il n'était jamais à la maison, ne rentrait que pour manger, et laissait tout en plan."

The scent of the desordre is "Pouah[_]! Ça sent le fauve[_]!"

Understand the command "ranger" as "take".
Instead of taking or searching the desordre:
	say "Vous tentez de mettre un peu d'ordre, mais autant nettoyer les écuries d'Augias."

Le journal intime is in the Maison Etrange. "Parmi tout ce chaos, Johannes a laissé traîner son journal intime.[one of] A-t-il vraiment jamais été négligent à ce point[_]? Ou l'a-t-il fait par défi[_]?[or][stopping]". The description of the journal intime is "Vous voyez parfois Johannes écrire dans ce carnet froissé." Understand "cahier" and "carnet" as the journal. The journal can be openable. The journal is openable.

Understand the command "lire" as something new.

Reading is an action applying to one thing. Understand "lire [something]" as reading.

Instead of reading something when the noun is not the journal:
	say "Il n'y a rien d'écrit sur [the noun]."

Instead of reading or opening the journal:
	say "Après tout, vous avez bien le droit. S'il ne veut pas vous parler, vous n'avez pas d'autre choix. Il n'avait qu'à pas laisser traîner son journal intime.
	
	Il n'a que ce qu'il mérite.";
	end the story saying "Vous n'aurez plus jamais besoin de lui parler."

Instead of burning or attacking the journal:
	say "Vous ne voulez rien garder de ce fils indigne. Ce ramassis de sottises adolescentes fera un très bon allume-feu, et c'est tout ce qui vous intéresse.
	
	Il ne vaut pas qu'on pense à lui.";
	end the story saying "Vous oubliez Johannes."

L' echelle etrange (f) is a door. It is up of the Maison Etrange and down of the Grenier. The printed name of the echelle etrange is "échelle". Understand "barreau" and "barreaux" and "bois" and "massif" as the echelle.
The echelle is open. The echelle is not openable. The echelle is not lockable. The echelle is climbable.

The description of the echelle is "Cette grande échelle de bois massif mène[if the Grenier is enchanted]… au grenier, ou à un autre enchantement[_]?[otherwise] au grenier.[end if] Johannes a accroché des vêtements sales aux barreaux."

Adolescence is a region. The Maison Etrange is in Adolescence.

Chapter 4 - Âge adulte

Section 1 - Grenier

Le Grenier is a room.

Age Adulte is a region. The Grenier is in Age Adulte. The printed name of Age Adulte is "Âge adulte".

The Grenier can be enchanted or mundane. The Grenier is enchanted.

The printed name of the Grenier is "Grenier[if the grenier is enchanted][_](?)[end if]".

The description of the Grenier is "[if the Grenier is enchanted][enchanted-grenier][otherwise]Le grenier est revenu à la normale. Le soleil filtre en longs rayons entre les tuiles du toit. Mais il est absolument vide. Où sont vos sacs de grains, vos barils d'huile et de bière, votre lard fumé ?[end if]"

To say enchanted-grenier:
	say "Votre grenier a été aménagé comme[one of] — vous hésitez un moment, puis la mémoire vous revient —[or][stopping] le bal de la Saint-Martin dernière. De riches [tentures] recouvrent les fenêtres et les fentes du toit, ne laissant aucune source de lumière, et pourtant toute la pièce est éclairée comme par des centaines de chandelles.[no line break]"

Before listing nondescript items of the Grenier: 
	if the echelle etrange is marked for listing: 
		now the echelle etrange is not marked for listing.

Instead of going nowhere from the Grenier:
	say "Vous ne voyez pas d'autre issue que l'échelle… mais ce que vous voyez n'est pas toujours vrai."
Instead of exiting from the Grenier:
	if Johannes Adulte is in the Grenier:
		try going down;
	otherwise:
		say "Vous pourriez redescendre l'échelle… ou alors… peut-être que…[line break]"

A thing can be ghostly.

Instead of smelling something ghostly:
	say "[The noun] vous rappelle une absence, un caveau vide."
Instead of touching or attacking something ghostly:
	say "Votre main passe au travers."
Instead of throwing something at something ghostly:
	say "[The noun] passe à travers [the second noun] et tombe au sol.";
	move the noun to the location.

In French regarder is a verb. In French sembler is a verb.
Instead of talking someone ghostly:
	say "[The noun] vous [regardes], mais ne [sembles] pas vous voir."

A thing can be illusory.

Les tentures (f) are scenery in the Grenier. Understand "riche" and "riches" and "tenture" as the tentures. The tentures can be openable. The tentures are openable. The tentures are illusory.

The description of the tentures is "Ces tentures décoraient le bal de la Saint-Martin, vous vous en souvenez très bien[_]: vous avez aidé vous-même à les coudre. Elles protègent ce bal de la lumière du jour."

The sound of the tentures is "Les tentures bruissent."

The scent of the tentures is "Les tentures sentent le parfum et la poussière."

The texture of the tentures is "Vous n'êtes pas sûre qu'elles existent réllement, mais elles sont bel et bien tangibles. Leur velours épais pèse lourdement dans votre main."

Understand the commands "dechirer" and "arracher" as "attack".
Instead of opening or taking or attacking the tentures:
	say "Vous arrachez les tentures. À la lumière du jour, toutes les illusions se dissolvent. Les danseurs et les musiciens disparaissent, et même les tentures dans vos mains ne sont plus que des rayons de soleil.";
	now the Grenier is mundane;
	now every illusory thing is nowhere; [FIXME: hide it differently so you don't get the default message]
	try looking.

Le sol is scenery in the Grenier. "Les planches du grenier, normalement inégales, sont polies comme un parquet." Understand "plancher" and "planche" and "planches" and "parquet" and "par terre" as the sol.

Les fenetres (f) are scenery in the Grenier. The printed name of the fenetres is "fenêtres". Understand "fenetres" and "fenetre" and "toit" and "tuiles" and "fentes" and "fente" and "poutre" and "poutres" and "charpente" as the fenetres.

The description of the fenetres is "[if the Grenier is enchanted]Tout le toit est caché par de lourdes tentures.[otherwise]Entre les tuiles du toit, une chaude lumière filtre en longs rayons. Elle semble réelle et solide, comme si vous pouviez la toucher.[end if]".

Understand "mur" and "murs" as the tentures when the Grenier is enchanted.
Understand "mur" and "murs" as the fenetres when the Grenier is mundane.

La lumiere is scenery in the Grenier. The printed name of the lumiere is "lumière". Understand "rayon" and "rayons" and "soleil" and "jour" and "chandelles" as the lumiere.

The description of the lumiere is "[if the Grenier is enchanted]La pièce est éclairée d'une lumière enchantée, mais la lumière réelle est occultée par les tentures.[otherwise]Un long rayon de soleil relie le sol au toit, comme un pont de lumière.[end if]".

The scent of the lumiere is "[if the Grenier is enchanted]Cette lumière inexplicable a une odeur déplaisante, comme putréfiée.[otherwise]Vous respirez l'odeur chaude d'un rayon de soleil.[end if]".

The texture of the lumiere is "[if the Grenier is enchanted]Cette fausse lumière vous paraît froide et visqueuse.[otherwise]La lumière semble si solide que vous pourriez la toucher, et vous le pouvez en effet.[end if]".

The lumiere can be enterable. The lumiere is enterable.
Instead of climbing or entering the lumiere:
	try going up.
Instead of pulling or pushing the lumiere:
	if the Grenier is enchanted:
		try touching the lumiere;
	otherwise:
		say "Le rayon de lumière est solidement ancré."

The fenetres can be enterable. The fenetres are enterable.
Instead of climbing or entering the fenetres:
	try going up.

Report going to the Air from the Grenier for the first time:
	say "Vous posez le pied sur le rayon de lumière, et n'êtes pas surprise de constater qu'il soutient votre poids. Vous l'escaladez, traversant le toit sans effort."

Section 2 - Ghost waltz

Liesl is a ghostly illusory woman in the Grenier. Understand "elisabeth" and "elizabeth" and "lies" and "lise" and "lisa" and "schutzenliesl" and "femme" and "fille" and "tresse" and "tresses" and "trese" and "treses" and "blonde" and "blondes" as Liesl.

The description of Liesl is "Elle tourne et sautille au bras de Johannes. Son sourire est fixe, comme celui d'une poupée."

The sound of Liesl is "Le rire cristallin de Liesl retentit."

Les danseurs (m) are ghostly illusory people in the Grenier. "Des jeunes gens et des jeunes filles valsent tout autour de vous au son des [violons] et des fifres. Parmi eux, [Johannes] danse avec [Liesl][one of] — Liesl aux tresses blondes, qui lui plaisait tant l'été dernier[or] — Liesl au sourire carnassier, qui ne l'aurait jamais rendu heureux[or] — Liesl que vous n'aimiez pas[or][stopping]."

Understand "jeunes" and "jeune" and "femmes" and "hommes" and "filles" and "gens" and "danseur" and "danseuse" and "danseuses" and "valse" and "bal" as the danseurs.

The description of the danseurs is "Les danseurs valsent autour de vous. Ils passent à travers les tentures comme si elles n'étaient qu'un mirage."

The sound of the danseurs is "La pièce résonne des rires et des conversations des danseurs."

Les violons (m) are ghostly illusory people in the Grenier. Understand "musiciens" and "musicien" and "orchestre" and "violon" and "violons" and "violoniste" and "violonistes" and "violoneux" and "fifre" and "fifres" and "son" and "musique" as the violons.

The description of the violons is "Vous ne reconnaissez personne dans l'orchestre. Ces musiciens ne semblent pas vraiment avoir de visage."

The sound of the violons is "Les musiciens jouent une valse endiablée."

Johannes Adulte is a man in the Grenier. Understand "[Johannes]" as Johannes Adulte. The printed name of Johannes Adulte is "Johannes". Johannes Adulte is ghostly.

The initial appearance of Johannes Adulte is "[if the Grenier is enchanted]Johannes danse avec Liesl.[otherwise]Johannes est assis par terre, rêveur.[end if]".

The description of Johannes Adulte is "Il semble encore moins réel, presque transparent."

The sound of Johannes Adulte is "[if the Grenier is enchanted]Johannes discute avec Liesl avec animation.[otherwise]Johannes murmure pour lui-même, très bas.[end if]"

Instead of going to the Air from the Grenier when the lumiere is not climbable:
	say "Il n'y a pas de trou de cheminée par lequel passer."

Instead of doing something other than examining or listening or smelling to Johannes when the Grenier is enchanted:
	say obsession.
Instead of giving something to Johannes when the Grenier is enchanted:
	say obsession.
To say obsession:
	say "Johannes ne voit rien, n'entend rien. Il n'a d'yeux que pour Liesl."

Instead of talking Johannes Adulte when the Grenier is mundane:
	say "Il hoche la tête, mais ses pensées sont ailleurs."

Instead of giving or showing something to Johannes Adulte when the Grenier is mundane and the noun is not the journal:
	say "Johannes regarde [the noun] un instant puis retourne à ses pensées."

Instead of giving or showing the journal to Johannes Adulte when the Grenier is mundane:
	say "Johannes regarde le journal un instant. 'Mon vieux journal intime[_]? C'est une bonne idée. Cela me rappellera des souvenirs…'
	
	Il se lève et, le nez dans le journal, s'éloigne, marchant sur un rayon de soleil. Il traverse le toit sans même s'en apercevoir.";
	now the journal is nowhere;
	now Johannes Adulte is nowhere;
	now the lumiere is climbable.

Chapter 5 - Sommet

Section 1 - Air

L' Air (m) is up of the Grenier. "L'air est solide sous vos pieds. Tout le paysage vous apparaît : la ferme directement en-dessous de vous, les champs autour, les villages et les bois. La grand'route le traverse de part en part et disparaît à l'horizon."

Instead of going nowhere from the Air:
	say "Vous virevoltez dans la brise."
Understand the command "voler" as "jump".
Instead of jumping in the Air:
	say "Vous sautez de nuage en nuage."

Le paysage is scenery in the Air. "Vous laissez couler votre regard le long du paysage. C'est votre pays natal, et chaque sillon vous est familier, mais pour la première fois vous le voyez entier, comme une immense tapisserie dont vous êtes un seul fil." Understand "paysage" and "paysages" and "champ" and "champs" and "village" and "villages" and "bois" and "foret" and "forets" and "grand" and "route" and "grand-route" and "horizon" and "pays" and "contree" and "sillon" and "sillons" as the paysage.

Instead of smelling the paysage:
	try smelling the ciel.
Instead of touching the paysage:
	try touching the ciel.

Le toit is scenery in the Air. "Le toit de tuiles rouges est à quelques mètres sous vos pieds." Understand "toit" and "tuiles" and "tuile" and "rouge" and "rouges" as the toit. The texture of the toit is "Vous redescendez un instant pour tapoter le toit."

La ferme is scenery in the Air. "D'ici, votre ferme vous paraît si petite, mais si pleine de vie." Understand "cour" and "basse" and "basse-cour" and "poulailler" and "maison" and "poule" and "poules" and "sol" and "terre" as the ferme.
The sound of the ferme is "Le bruit de la cour vous parvient indisctinctement."

La lumiere exterieure is scenery in the Air. "La lumière du soleil éclate en rayons sous vos pas, vous soutenant à travers les airs." The printed name of the lumiere exterieure is "lumière". Understand "rayon" and "rayons" and "soleil" and "jour" as the lumiere.

Le ciel is scenery in the Air. "L'azur s'étend tout autour de vous, parsemé de quelques nuages. Une douce brise souffle." Understand "azur" and "cieux" and "vent" and "vents" and "brise" and "zephyr" and "air" and "nuage" and "nuages" as the ciel. The scent of the ciel is "Le zéphyr porte une senteur de fleurs et de forêts." The texture of the ciel is "Vous laissez le vent souffler entre vos doigts."

Johannes Voyageur is a man in the Air. "Johannes est à plusieurs heures de marche, mais vous le voyez aussi nettement que s'il était face à vous." Understand "[Johannes]" or "marcheur" as Johannes Voyageur. The printed name of Johannes Voyageur is "Johannes".
The description of Johannes Voyageur is "Il s'est à moitié retourné et vous regarde calmement. Vous ne sauriez pas dire s'il est très loin, ou à portée de main. Il n'a rien de l'air immatériel des autres : il semble plus réel et solide que jamais.[one of][or] Il a l'air d'attendre quelque chose de vous, mais vous ne savez pas quoi.[stopping]".
The texture of Johannes Voyageur is "Vous tendez la main et vous assurez qu'il est réellement palpable."

Johannes Voyageur can be thoughtful, contented, or dismayed. Johannes Voyageur is thoughtful.

Confrontation is a scene. Confrontation begins when the player is in the Air. Confrontation ends happily when Johannes Voyageur is contented. Confrontation ends sadly when Johannes Voyageur is dismayed.

Instead of speech when the noun is Johannes Voyageur:
	say "Les lèvres de Johannes bougent, mais vous n'entendez que le bruit du vent."

Instead of waving something in the presence of Johannes Voyageur:
	say wave-hail.
Instead of waving hands in the presence of Johannes Voyageur:
	say wave-hail.
To say wave-hail:
	say "Après un moment, Johannes répond à votre signe."

Instead of kissing Johannes Voyageur:
	say "Johannes hésite, puis accepte votre affection.";
	now Johannes Voyageur is contented.

Instead of giving something to Johannes Voyageur:
	say "Johannes semble surpris, mais accepte votre présent. Il range [the noun]	avec soin dans son baluchon.";
	now Johannes Voyageur is contented.

Instead of throwing something at Johannes Voyageur:
	say "Le visage tordu de rage, vous jetez [the noun] à la tête de votre fils ingrat. Il parvient tout juste à esquiver le coup.";
	now Johannes Voyageur is dismayed.

Instead of attacking Johannes Voyageur:
	say "Le visage tordu de rage, vous giflez votre fils ingrat. Il grimace et se frotte la joue.";
	now Johannes Voyageur is dismayed.

When Confrontation ends happily:
	say "Johannes sourit. Après un moment, il vous fait un signe amical, puis se retourne et reprend sa route — d'un pas plus léger, il vous semble. Vous attendrez patiemment de le revoir.";
	end the story finally saying "Tous les oiseaux quittent le nid."

When Confrontation ends sadly:
	say "Johannes vous tourne le dos et reprend son chemin. Il crache sur le sol.";
	end the story saying "Il ne reviendra pas."

Sommet is a region. The Air is in Sommet.
