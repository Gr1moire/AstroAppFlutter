import 'package:flutter/material.dart';

class Cards {
  GlobalKey _titleKey = GlobalKey();

  final List<String> arcanaNames = [
    "Le Tronc",
    "La Balance",
    "La Tour",
    "L'Aiguière",
    "La Flèche",
    "L'Epieu",
    "Le Tronc renversé",
    "La Balance renversée",
    "La Tour renversée",
    "L'Aiguière renversée",
    "La Flèche renversée",
    "L'Epieu renversé",
  ];

  final List<String> arcanaSymbols = [
    "Protection & générosité",
    "Justice & prospérité",
    "Ingéniosité & volonté",
    "Savoir & éveil",
    "Liberté & découverte",
    "Reconsidération & maladie",
    "Force & foi",
    "Jugement & trahison",
    "Difficulté & persévérance",
    "Egarement de l'âme & introspection",
    "Obstination & jalousie",
    "Epreuve & vengeance",
  ];

  final List<String> pastPositionArcanaDescriptions = [
    "La protection, la vie, la chance, l’abondance, la générosité, nutrition\n\nLe Tronc est un signe d’énergie positive. La Mère et le Contemplateur vous soutiennent dans vos entreprises. Nophica, au pied de l’Arbre de Vie, de sa faux, promet abondance et santé.</br></br>Le Tronc dans sa position dite divine est signe d'une enfance saine et de joie. C'est également un signe d'efforts fournis qui attendent encore de porter leurs fruits. La patience vous a été demandée et vous êtes restés optimiste. Une heureuse rencontre a pu croiser votre chemin vous apportant le soutien dont vous aviez besoin dans vos projets.",
    "Le jugement, la justice, l’équilibre, la prospérité, la vigueur, le pouvoir\n\nAzeyma la Gardienne vous tend les bras, tenant dans sa main gauche une épée embrasée, dans sa main droite un éventail doré. Brillante et radieuse, elle vous illumine et vous accueille. Elle vous promet vigueur pour l’avenir. Nald’Thal les Marchands, a ses pieds, maintiennent l’équilibre de votre âme et vous promettent prospérité.</br></br>Votre vie s'est jusqu'ici déroulée sans accroc, les finances se sont toujours bien portées et vous n'avez manqué de rien. Une vie droite et vertueuse a caractérisé votre existence et vos actions et rien ne semble avoir voulu empêcher cela. Vous avez par le passé fait une heureuse rencontre, peut-être même un amour passionnel.",
    "L’ingéniosité, la créativité, la volonté, la persévérance, la construction, la destruction\n\nByregot l’Artisan façonne sa tour complexe, il est le signe d’un projet aboutissant, tandis que Rhalgr le Destructeur, entreprend de la détruire de ses foudres rageuses et impitoyables, signe d’épreuve. Paradoxalement, il alimente les mécanismes complexes de la création de son fils.</br></br>Vous avez été bien entouré jusque-là, protégé des agressions de l'extérieur. Vous considérez que toutes les expériences sont bonnes à prendre car rien n'a pu vous nuire jusqu'ici. Cependant, au fond de vous, vous avez toujours cherché une pointe de danger et commencé à vous exposer un peu plus, quitte à vous éloigner de ceux qui vous ont jusque-là protégé. Une volonté de gagner en maturité par l'expérience vous a motivé à sortir de votre confort. C'est également le signe d'une potentielle rencontre, inquiétante aux premiers abords, car nouvelle et potentiellement dangereuse, mais qui a su se montrer bénéfique dans votre évolution jusqu'ici.",
    "Le savoir, la sagesse, la réflexion, l’introspection, l’éveil, la ressource\n\n</br>La sagesse de Thaliak l’Erudit se déverse du vase de Nymeia la Fileuse et s’étend via la mer d’éther vers tout être vivant, venant nourrir la vie et la connaissance. L’Aiguière est signe de vitalité et de renouvellement, physique ou spirituel.</br></br>Eveillé très jeune, vous vous êtes toujours intéressé à ce qui vous entoure. La mûre réflexion vous a toujours permis d'effectuer les bons choix dans la vie et cela n'a pas empêché votre intuition d'être également mise à profit de manière efficace. Le savoir a guidé vos pas vers de nouveau horizons. Cela peut également signifier que vous avez fait une rencontre majeure permettant votre éveil ou bouleversant votre vision du monde.",
    "La liberté, le voyage, la découverte, le chemin guidé, l’errance\n\nLlymlaen la Navigatrice guide les pas du Vagabond via la Flèche de son compas. Ils voyagent de pair pour découvrir de nouveaux horizons et apportent leur bénédiction aux voyageurs en chemin.</br></br>La Flèche est le signe d'une aventure ou d'un grand voyage passé. Une aventure qui vous a apporté du changement et élargi votre champ des possibilités. Le voyage a pu être physique ou spirituel et la Flèche peut alors être signe d'une quête de dépassement et d’optimisme face aux obstacles en chemin. Le vent vous a toujours accompagné vers votre destination et les réponses recherchées. Cela peut également signifier la rencontre d'un fidèle compagnon, qui est toujours resté à vos côtés.",
    "La victoire, la force, l’épreuve, la foi, la compassion, la miséricorde\n\nMenphina la Bien-Aimante baigne Halone la Conquérante de sa lumière lunaire. La Conquérante, portant son fidèle trident, a fait vœu de protéger la Bien-Aimante face à quiconque voudrait la déranger. Halone protège Menphina et Menphina améliore la puissance de la lance de Halone. L’Epieu est un symbole de victoire et de force.</br></br>Placé sous le signe de la Conquérante, vous avez toujours fait face avec bravoure aux épreuves de la vie, triomphant avec zèle. Cela peut également signifier de bonnes augures en amitié et en amour, une rencontre qui vous a réussi et vous a aidé à aller toujours plus loin."
    "La prudence, la reconsidération, la maladie, la blessure\n\nAlthyk le Contemplateur se tient au-devant de l’Arbre de Vie, armé de sa puissante hache de mythril. Il protège la source de la vie, coûte que coûte, quitte à perdre de vue le sens de celle-ci, motivé uniquement par sa divine tâche.</br></br>Vous avez par le passé fait un choix que vous commencez à regretter ou fait une rencontre qui ne s'est pas exactement passé comme vous l'auriez pensé. Il se peut également que vous ayiez vécu avec peu de choses et que vous ayiez décidé de vous reprendre en main et d'apporter aux autres ce que vous n'avez pas eu la chance d'avoir.",
    "Le jugement, la justice, l’équilibre, la trahison\n\nLes Marchands aux pieds d’Azeyma font appel au jugement divin, pesant le poids de votre âme. Nald plaide en votre faveur tandis que Thal juge si votre âme mérite le salut. D’un côté, l’éventail d’or vous permet d’aller de l’avant, tandis que de l’autre l’épée embrasée que porte la Gardienne vous condamne de son courroux divin, vous privant de toute ressource par ses feux destructeurs.</br></br>Des erreurs ont été commises, vous avez du reconsidérer vos actes sans quoi le malheur et le regret vous auraient rongé. Vous avez perdu et vous êtes peut-être même ruiné par ces expériences. Cela peut également venir d’une mauvaise rencontre ou de l’influence d’une mauvaise personne à votre égard, d'un amour autrefois passionnel mais déçu. Tout espoir n'est cependant pas perdu, vous êtes en quête de rédemption désormais.",
    "La difficulté, la volonté, la persévérance, la construction, la destruction\n\nRhalgr le Destructeur est impitoyable, au point de foudroyer la création de son propre fils. C’est à la fois un jugement et une épreuve, un rappel que la destruction n’est qu’une autre facette de la création, une facette nécessaire et une leçon donnée.</br></br>De nombreuses difficultés vous sont arrivées, si vous avez perdu le cap, il se peut que vous ayiez laissé derrière vous de nombreux regrets et projets avortés. La Tour renversée peut également signifier une rencontre brutale qui a bouleversé votre vie, vers des changements auxquels vous n’étiez pas préparés. Le désastre peut encore être évité, mais cela va demander du courage et de la persévérance.",
    "La fatigue, l'égarement de l'âme, la focalisation, l’introspection, la lassitude\n\nLa Fileuse et l’Erudit ne communiquent plus, ce qui entrave l’harmonie de leurs actions.</br></br>Vous vous êtes focalisé plus sur les problèmes que sur les solutions. Vous avez petit à petit perdu les repères qui vous ont façonné, peut-être même au point de vous fermer au monde. Cela peut également signifier une rencontre qui vous a influencé et réduit pendant un temps votre perception du monde ou a abusé de vous.",
    "L'obstination, la jalousie, la manipulation, l’errance\n\nOschon s’égare, décidant de s’éloigner des pas guidés par Llymlaen. Le Vagabond refuse que son esprit libre soit guidé par quelqu’un d’autre et retrouve l’errance qui le caractérise tant. Llymlaen est secrètement jalouse de l’amour que porte Oschon pour Menphina alors qu’elle est toujours à ses côtés. La Flèche renversée peut signifier une situation compliquée, une errance dans la vie, qui peut parfois mener à une impasse ou pire encore. L’avancée peut être inéluctable et aucune marche arrière n’est possible.</br></br>Vous vous êtes perdu en chemin, volontairement ou non, éventuellement du fait d'une personne vous ayant manipulé. La jalousie et l'obstination vous ont marqué et fait perdre vos repères au point de ne plus savoir où vous en êtes. Votre recherche de réponse vous ont amené à reconsidérer vos précédents engagements. Vous avez peut-être manqué la personne que vous cherchiez ou dont vous aviez besoin au moment propice.",
    "L'échec, la vengeance, l’épreuve, le conflit, la pitié\n\nLa fureur impitoyable de la Conquérente et l’amour de Menphina ont du mal à coexister, créant un écart important entre elles.</br></br>L’Epieu renversé est un signe de tension et de conflit dans votre vie. Cela peut également être l’annonce d’un moment de faiblesse. Vous avez pu baisser votre garde et payé le prix. Deux sentiments contradictoires vous ont fait hésiter, à la croisée des chemins, vous avez dû choisir entre la vengeance et le pardon. Une décision que vous avez peut-être pu regretter et qui n'a pas de retour possible. Un chapitre de votre vie s'est tourné mais continue de vous hanter aujourd'hui encore.",
  ]
  ;

  final List<String> presentPositionArcanaDescriptions = [
    "La protection, la vie, la chance, l’abondance, la générosité, la nutrition\n\nLe Tronc est un signe d’énergie positive. La Mère et le Contemplateur vous soutiennent dans vos entreprises. Nophica, au pied de l’Arbre de Vie, de sa faux, promet abondance et santé.</br></br>Le Tronc dans sa position dite divine est symbole de santé et d'efforts récompensés. Les projets que vous avez entrepris par le passé sont en train de porter leurs fruits, et vous pourrez bientôt en profiter. Il va encore falloir faire preuve de patience, mais la récompense en vaut la peine. Aidez votre prochain et prenez soin de vos proches, il se pourrait que vous soyiez surpris par l'impact positif que vous avez sur votre entourage, mais aussi parce que ça peut vous apporter en tant que personne.",
    "Le jugement, la justice, l’équilibre, la prospérité, la vigueur, le pouvoir\n\nAzeyma la Gardienne vous tend les bras, tenant dans sa main gauche une épée embrasée, dans sa main droite un éventail doré. Brillante et radieuse, elle vous illumine et vous accueille. Elle vous promet vigueur pour l’avenir. Nald’Thal les Marchands, a ses pieds, maintiennent l’équilibre de votre âme et vous promettent prospérité.</br></br>C'est le moment idéal pour entreprendre des projets, car ils ont de fortes chances d'aboutir. Réfléchissez cependant bien à la portée de ceux-ci et sur quelles fondations ils se basent. Construire son bonheur sur le malheur d'un autre pourrait se retourner ultimement contre vous. Restez prudent et conscient de la portée de vos actes et l’avenir est assuré. La rencontre ou les retrouvailles avec un camarade, potentiellement un partenaire pourrait survenir dans votre vie.",
    "L’ingéniosité, la créativité, la volonté, la persévérance, la construction, la destruction\n\nByregot l’Artisan façonne sa tour complexe, il est le signe d’un projet aboutissant, tandis que Rhalgr le Destructeur, entreprend de la détruire de ses foudres rageuses et impitoyables, signe d’épreuve. Paradoxalement, il alimente les mécanismes complexes de la création de son fils.</br></br>La Tour est signe d’un abri certain mais aussi de prudence face aux dangers qui nous entourent. C’est également un rappel face à la brutalité des épreuves de la vie. Mais le salut existe au bout de celles-ci. La Tour peut également représenter l’acceptation et la volonté inébranlable de faire face, de ne pas renoncer à ses projets, qu’il existe une solution au milieu de la tempête. Bravant les dangers vers cette lumière au loin, vous avancez impitoyablement, faisant fi des sacrifices. Attention cependant à ne pas entraîner vos proches dans votre sillages, assurez vous d'abord qu'ils souhaitent vous accompagner et restent fidèles. Une rencontre pourrait survenir dans votre vie, inquiétante aux premiers abords, mais néanmoins bénéfique pour accepter les épreuves sus-citées.",
    "Le savoir, la sagesse, la réflexion, l’introspection, l’éveil, la ressource\n\n</br>La sagesse de Thaliak l’Erudit se déverse du vase de Nymeia la Fileuse et s’étend via la mer d’éther vers tout être vivant, venant nourrir la vie et la connaissance. L’Aiguière est signe de vitalité et de renouvellement, physique ou spirituel.</br></br>Elle vous appelle à la réflexion, à l’écoute de vos pensées et émotions, car vous avez tout ce qu’il vous faut pour parvenir à la réponse que vous cherchez. Votre intuition vous permet d’aller de l’avant, de vous ouvrir à la nouveauté et à une meilleure prise de conscience de vous-même et de votre environnement. Cela peut également être le signe d’une rencontre qui étend votre perception du monde et ouvrir vos horizons, vers un changement certain.",
    "La liberté, le voyage, la découverte, le chemin guidé, l’errance\n\nLlymlaen la Navigatrice guide les pas du Vagabond via la Flèche de son compas. Ils voyagent de pair pour découvrir de nouveaux horizons et apportent leur bénédiction aux voyageurs en chemin.</br></br>La Flèche signifie que vous avez entrepris une aventure ou un grand voyage, qu'il soit physique ou spirituel. Une aventure qui apporte du changement dans votre vie, placée sous le signe de la découverte et de l’évolution. La Flèche peut alors être signe de dépassement, d’optimisme face aux obstacles en chemin. Le vent vous accompagne vers votre destination, une destination qui peut-être vous apportera les réponses à vos questions. Cela peut également signifier une rencontre, un compagnon fidèle qui reste à vos côtés pendant vos pérégrinations qu’il s’agisse là encore d’un voyage ou d’une quête spirituelle.",
    "La victoire, la force, l’épreuve, la foi, la compassion, la miséricorde\n\nMenphina la Bien-Aimante baigne Halone la Conquérante de sa lumière lunaire. La Conquérante, portant son fidèle trident, a fait vœu de protéger la Bien-Aimante face à quiconque voudrait la déranger. Halone protège Menphina et Menphina améliore la puissance de la lance de Halone. L’Epieu est un symbole de victoire et de force.</br></br>Placé sous le signe de la Conquérante, la réussite dans vos projets est à portée de main. Mais vous êtes face à un choix important, prenez le temps de considérer le problème sous différents points de vue, pour être certain de ne rien regretter. Prenez en assurance et écartez les éventuels soucis avant qu’ils ne soient gênant et vous n’aurez aucune difficulté à triompher dans les épreuves que vous pourriez rencontrer. Rien n’est jamais facile, mais vous savez prendre les bonnes décisions si vous réfléchissez suffisamment aux situations que vous rencontrez. C’est aussi le moment de vous lier d’amitié et d’avoir foi en vos camarades, leur fidélité pourrait devenir votre meilleure récompense. Cela peut également signifier de bonnes augures en amour, une relation passionnelle vous permettant de vous dépasser au quotidien."
    "La prudence, la reconsidération, la maladie, la blessure\n\nAlthyk le Contemplateur se tient au-devant de l’Arbre de Vie, armé de sa puissante hache de mythril. Il protège la source de la vie, coûte que coûte, quitte à perdre de vue le sens de celle-ci, motivé uniquement par sa divine tâche.</br></br>Il est conseillé d’être prudent et de reconsidérer vos choix, vous invitant à reprendre une vue globale et réfléchie de la situation avant de vous lancer dans vos entreprises. Faites également attention à votre santé et à celle de vos proches, il est peut-être temps de reprendre contact avec ceux que vous avez perdu de vue pour vous assurer de leur sécurité. C’est le signe d’une rencontre, d’une personne à qui tendre la main peut vous être bénéfique mutuellement.",
    "Le jugement, la justice, l’équilibre, la trahison\n\nLes Marchands aux pieds d’Azeyma font appel au jugement divin, pesant le poids de votre âme. Nald plaide en votre faveur tandis que Thal juge si votre âme mérite le salut. D’un côté, l’éventail d’or vous permet d’aller de l’avant, tandis que de l’autre l’épée embrasée que porte la Gardienne vous condamne de son courroux divin, vous privant de toute ressource par ses feux destructeurs.</br></br>Faites attention aux choix que vous entreprenez et réfléchissez bien avant d'agir, vous pourriez commettre des erreurs irréparables qui pourraient non seulement vous nuire, mais aussi nuire à votre entourage. Gare également au retour du bâton si vous recevez une somme d'argent innattendue, cela peut être motivé par un désir de vous exploiter ou vous faire vous écarter de votre droit chemin, auquel cas des représailles ne tarderont pas à se faire sentir. Attention à votre entourage immédiat, un jaloux pourrait vous entraîner vers votre chute.",
    "La difficulté, la volonté, la persévérance, la construction, la destruction\n\nRhalgr le Destructeur est impitoyable, au point de foudroyer la création de son propre fils. C’est à la fois un jugement et une épreuve, un rappel que la destruction n’est qu’une autre facette de la création, une facette nécessaire et une leçon donnée.</br></br>Les difficultés ne cessent de s'empiler sur votre chemin. Vous êtes toujours au milieu de la tempête sans percevoir le moindre répit. Il vous reste cependant un espoir, un salut, mais pour ça il faut persévérer et s'armer de courage pour faire face aux difficultés. Abandonner maintenant rendrait tous vos efforts et sacrifices vains. Une connaissance pourrait vous proposer un choix audacieux, risqué et effrayant, considérez bien la situation avant d'accepter.",
    "La fatigue, l'égarement de l'âme, la focalisation, l’introspection, la lassitude\n\nLa Fileuse et l’Erudit ne communiquent plus, ce qui entrave l’harmonie de leurs actions.</br></br>L’Aiguière renversée devient un signe d’errance de l’âme, d’un manque d’attention vers les éléments importants de votre vie. Vous vous focalisez sur les problèmes plutôt que les solutions. Vous perdez petit à petit ce qui vous a jusqu’alors façonné et risquez de perdre plus encore si vous ne vous reprenez pas. Prenez le temps de vous regarder dans un miroir et réfléchir à ce qui importe vraiment, sans vous fermer du monde qui vous entoure. Cela peut également signifier qu'une connaissance entrave votre perception du monde, vous aveugle vers à des fins précises. Mais cela peut aussi être une personne qui a perdu pied et a besoin de votre sagesse pour se retrouver et avancer.",
    "L'obstination, la jalousie, la manipulation, l’errance\n\nOschon s’égare, décidant de s’éloigner des pas guidés par Llymlaen. Le Vagabond refuse que son esprit libre soit guidé par quelqu’un d’autre et retrouve l’errance qui le caractérise tant. Llymlaen est secrètement jalouse de l’amour que porte Oschon pour Menphina alors qu’elle est toujours à ses côtés. La Flèche renversée peut signifier une situation compliquée, une errance dans la vie, qui peut parfois mener à une impasse ou pire encore. L’avancée peut être inéluctable et aucune marche arrière n’est possible.</br></br>Vous êtes en proie à l'hésitation, perdu en plein chemin. Vous pensiez faire le bon choix et commencez à réaliser que vous vous êtes trompé. Vous devez prendre le temps de réfléchir, de vous arrêter en plein chemin, reconsidérer la situation et réorienter vos objectifs, voire faire marche arrière. Ne laissez pas votre ego vous dicter votre conduite et ne soyez pas aveugle aux actions de vos proches. Cela peut également être le signe d’une rencontre ou d’une connaissance qui cherche à vous manipuler, quelqu’un de potentiellement jaloux, qui vous veut pour elle ou vous utiliser. Il est également possible qu’il s’agisse d’une personne dans le besoin, ayant besoin de votre guidance et vos conseils.",
    "L'échec, la vengeance, l’épreuve, le conflit, la pitié\n\nLa fureur impitoyable de la Conquérente et l’amour de Menphina ont du mal à coexister, créant un écart important entre elles.</br></br>Deux sentiments contradictoires vous occupent, une hésitation importante entre aller au-devant du conflit, faire régner votre bon droit et prouver votre valeur, votre vérité ou au contraire faire preuve de miséricorde et pardonner l’autre parti. C’est l’occasion de décider de l’issue d’une épreuve, de faire un choix important, mais prenez garde car un retour en arrière n’est pas envisageable. Prenez le moment pour réfléchir à votre approche. C’est aussi l’annonce d’une fin ou d’une épreuve très importante dans une relation, de dissensions ou d’attentes déçues.",
  
  ];

  final List<String> futurePositionArcanaDescriptions = [
    "La protection, la vie, la chance, l’abondance, la générosité, la nutrition</em></br></br>Le Tronc est un signe d’énergie positive. La Mère et le Contemplateur vous soutiennent dans vos entreprises. Nophica, au pied de l’Arbre de Vie, de sa faux, promet abondance et santé.</br></br>Le Tronc dans sa position dite divine est symbole de santé et d'efforts récompensés. Les projets que vous avez entrepris porteront leurs fruits et vous pourrez pleinement en profiter. La patience sera récompensée. Laissez vos proches en profiter également, votre générosité sera accueillie à bras ouverts et il se peut que vous y preniez plaisir. L'impact positif de vos actes pourraient également être récompensés. Il se pourrait également qu'un heureux événement arrive dans votre vie avec votre cher(e) et tendre.</br></div>",
    "Le jugement, la justice, l’équilibre, la prospérité, la vigueur, le pouvoir</em></br></br>Azeyma la Gardienne vous tend les bras, tenant dans sa main gauche une épée embrasée, dans sa main droite un éventail doré. Brillante et radieuse, elle vous illumine et vous accueille. Elle vous promet vigueur pour l’avenir. Nald’Thal les Marchands, a ses pieds, maintiennent l’équilibre de votre âme et vous promettent prospérité.</br></br>Votre vie s’équilibre et un avenir radieux et prospère vous attend. Cela peut signifier une réussite dans vos projets, mais gare au revers de la médaille car rien n’est jamais gratuit, un bonheur se construit parfois sur un malheur. Restez prudent et conscient de la portée de vos actes et l’avenir continera de vous sourire. La rencontre ou les retrouvailles avec une personne chère ou un partenaire sont à prévoir, peut-être même celle que vous cherchiez.</br></div>",
    "L’ingéniosité, la créativité, la volonté, la persévérance, la construction, la destruction</em></br></br>Byregot l’Artisan façonne sa tour complexe, il est le signe d’un projet aboutissant, tandis que Rhalgr le Destructeur, entreprend de la détruire de ses foudres rageuses et impitoyables, signe d’épreuve. Paradoxalement, il alimente les mécanismes complexes de la création de son fils.</br></br>Vous avez fait face à de nombreuses épreuves et êtes tout à fait prêt à sortir de votre confort quotidien. Le goût du risque et de l'aventure vous motivent. Vous serez amené à l'avenir à vous dépasser et enchaîner les expériences les unes après les autres. Votre ténacité vous fera apprendre de vos échecs, vous vous relèverez à chaque occurence, renouvelant l'expérience encore et toujours jusqu'à atteindre votre idéal. La Tour dans sa position dite divine peut être le signe que votre quête va toucher à sa fin, que la réponse que vous cherchiez via vos expériences n'est plus très loin. Persévérez et vous pourrez la toucher du doigt. Restez cependant prudent car une erreur de chemin pourrait vite surgir et vous faire perdre le fil. La précipitation n'apporterait rien de bon, continuez d'agir avec patience et précision, ne négligez aucun détail. Il se peut que vous fassiez une rencontre perturbante, alliée ou ennemie, mais pourtant la clé qui vous permettra peut-être de conclure vos projets.</br></div>",
    "Le savoir, la sagesse, la réflexion, l’introspection, l’éveil, la ressource</em></br></br></br>La sagesse de Thaliak l’Erudit se déverse du vase de Nymeia la Fileuse et s’étend via la mer d’éther vers tout être vivant, venant nourrir la vie et la connaissance. L’Aiguière est signe de vitalité et de renouvellement, physique ou spirituel.</br></br>De nombreux questionnements vont occuper votre avenir. Des questionnements qui vont demander une attention particulière. Il va falloir écouter vos pensées et émotions, les analyser et en tirer les conclusions nécessaires car au final le cheminement de votre pensée vous a toujours permis de trouver vos solutions. Votre réflexion est comme un fleuve continu, prenant source dans un problème et trouvant sa solution dans un océan infini de possibilités optimistes. Des possibilités qui vous ouvrent les bras vers un avenir radieux, placé sous le signe de l'illumination. Cela peut également être le signe d’une rencontre avec un mentor, un professeur ou une muse qui va étendre votre perception du monde et ouvrir vos horizons, vers un changement certain.</br></div>",
    "La liberté, le voyage, la découverte, le chemin guidé, l’errance</em></br></br>Llymlaen la Navigatrice guide les pas du Vagabond via la Flèche de son compas. Ils voyagent de pair pour découvrir de nouveaux horizons et apportent leur bénédiction aux voyageurs en chemin.</br></br>Votre voyage ou votre aventure va bientôt toucher au but. Vous trouverez bientôt la place que vous vous cherchiez. Il va être temps de faire un point sur vous-même et ce que ce voyage vous a apporté à vous et à vos compagnons de route. Prenez le temps de profiter de ces instants avec vos proches et de tisser des liens forts qui vous resteront à jamais. Au bout du voyage, vous vous trouverez changé, meileur que ce que vous avez pu être par le passé, quelqu'un sur qui l'on peut compter. Les compagnons de vos pérégrinations vous apporteront beaucoup et feront partie des plus fidèles sur qui compter.</br></div>",
    "La victoire, la force, l’épreuve, la foi, la compassion, la miséricorde</em></br></br>Menphina la Bien-Aimante baigne Halone la Conquérante de sa lumière lunaire. La Conquérante, portant son fidèle trident, a fait vœu de protéger la Bien-Aimante face à quiconque voudrait la déranger. Halone protège Menphina et Menphina améliore la puissance de la lance de Halone. L’Epieu est un symbole de victoire et de force.</br></br>Placé sous le signe de la Conquérante, la réussite dans vos projets est à portée de main. Vous serez amené à prendre des décisions majeures dans votre vie, prenez soin d'y réfléchir au préalable car ces choix seront décisifs et fondateurs pour l'avenir. Il se peut que vous ayiez besoin d'agir de manière forte et impitoyable pour parvenir à vos fins, mais vos motivations sont justes. Unissez vous à vos alliés de confiance et rien ne pourra vous entraver. Le pardon peut cependant être l'autre réponse possible à la résolution d'un conflit. Pesez bien la situation avant d'agir. Cela peut également signifier de bonnes augures en amour, une relation passionnelle vous permettant de vous dépasser au quotidien, mais vous devrez peut-être vous battre pour obtenir ce bonheur.</br></div>"
    "La prudence, la reconsidération, la maladie, la blessure</em></br></br>Althyk le Contemplateur se tient au-devant de l’Arbre de Vie, armé de sa puissante hache de mythril. Il protège la source de la vie, coûte que coûte, quitte à perdre de vue le sens de celle-ci, motivé uniquement par sa divine tâche.</br></br>Il va falloir être prudent à l'avenir et reconsidérer vos choix. Vous êtes peut-être en train de faire une erreur et vous le paierez cher. Prenez une vue globale et réfléchie de la situation pour éviter le désastre. Il se pourrait également que vous ou un proche tombiez malade si vous négligez votre santé. La fatigue vous guette, vous aurez besoin de calme et de repos. C'est le moment d'éviter de vous lancer dans des situations qui pourraient vous dépasser. C’est également le signe de retrouvailles avec un proche, perdu de vue depuis longtemps, une personne à qui tendre la main pourrait vous être bénéfique mutuellement.</br></div>",
    "Le jugement, la justice, l’équilibre, la trahison</em></br></br>Les Marchands aux pieds d’Azeyma font appel au jugement divin, pesant le poids de votre âme. Nald plaide en votre faveur tandis que Thal juge si votre âme mérite le salut. D’un côté, l’éventail d’or vous permet d’aller de l’avant, tandis que de l’autre l’épée embrasée que porte la Gardienne vous condamne de son courroux divin, vous privant de toute ressource par ses feux destructeurs.</br></br>Vous allez commettre une grave erreur de parcours dans un avenir proche ou lointain, quelque chose d'irréparable qui pourrait non seulement vous nuire, mais aussi nuire à votre entourage. C'est le signe d'une trahison à venir, ne faites pas confiance aux avantages que l'on pourrait vous proposer car vous le regretteriez amèrement. Les épreuves qui vous attendent sont toutes sauf radieuses, mais tout espoir n'est pas perdu si vous vous reprenez dès maintenant pour faire le bon choix. Soyez vigilants, c'est peut-être le moment de faire un tri dans votre entourage pour éviter de vous faire avoir.</br></div>",
    "La difficulté, la volonté, la persévérance, la construction, la destruction</em></br></br>Rhalgr le Destructeur est impitoyable, au point de foudroyer la création de son propre fils. C’est à la fois un jugement et une épreuve, un rappel que la destruction n’est qu’une autre facette de la création, une facette nécessaire et une leçon donnée.</br></br>Les difficultés que vous pouvez rencontrer vont continuer impitoyablement à entraver votre progression. La tempête va continuer de faire rage pendant un bon moment et aucune lumière pour vous orienter ne semble promise. Néanmoins, ne perdez pas espoir, la solution existe toujours et il est peut-être temps de faire la paix avec vous-même, pour réfléchir plus posément à la situation. Ainsi armé de courage et de persévérance, vous pourriez trouver le salut. Il est de toute façon trop tard pour faire marche arrière, si vous abandonnez, vous perdrez non seulement tout ce que vous avez réalisé jusqu'ici, mais vos détracteurs en profiteront également pour s'acharner sur vous. Vous pourriez faire la connaissance d'un individu dangereux vous proposant un choix audacieux, risqué et effrayant, considérez bien la situation avant d'accepter.</br></div>",
    "La fatigue, l'égarement de l'âme, la focalisation, l’introspection, la lassitude</em></br></br>La Fileuse et l’Erudit ne communiquent plus, ce qui entrave l’harmonie de leurs actions.</br></br>L’Aiguière renversée devient un signe d’errance de l’âme, d’un manque d’attention vers les éléments importants de votre vie. Vous risquez de vous borner sur les problèmes plutôt que les solution, ce qui aura pour effet de vous aveugler et vous ronger. Ainsi égaré, vous pourriez perdre tous vos repères et vous enfermer dans un cercle vicieux. Vous perdrez vos fondations sans espoir apparent de vous reprendre. Prenez le temps de vous regarder dans un miroir et réfléchir à ce qui importe vraiment, sans vous fermer du monde qui vous entoure. C'est maintenant qu'il vous faut donc réfléchir aux conséquences de vos actes et éveiller votre conscience.  Cela peut également signifier qu'une connaissance va entraver votre perception du monde, vous aveugler vers à des fins précises, gare à ne pas laisser l'amour vous aveugler et vous dicter votre conscience. Mais cela peut aussi être une personne qui a perdu pied et a besoin de votre sagesse pour se retrouver et avancer.</br></div>",
    "L'obstination, la jalousie, la manipulation, l’errance</em></br></br>Oschon s’égare, décidant de s’éloigner des pas guidés par Llymlaen. Le Vagabond refuse que son esprit libre soit guidé par quelqu’un d’autre et retrouve l’errance qui le caractérise tant. Llymlaen est secrètement jalouse de l’amour que porte Oschon pour Menphina alors qu’elle est toujours à ses côtés. La Flèche renversée peut signifier une situation compliquée, une errance dans la vie, qui peut parfois mener à une impasse ou pire encore. L’avancée peut être inéluctable et aucune marche arrière n’est possible.</br></br>L'errance vous guette et vous ne savez pas encore déterminer si c'est une bonne ou une mauvaise chose. Vos objectifs perdus de vue, vous avancerez par hasard au gré des expériences qui seront pour certaines fort désagréables. Borné, vous refusez que l'on vous dicte votre conduite mais vous devez néanmoins prendre le temps de réfléchir, de vous arrêter en plein chemin, reconsidérer la situation et réorienter vos objectifs. Cela peut également être le signe d’une rencontre ou d’une connaissance qui cherchera à vous manipuler, quelqu’un de potentiellement jaloux, qui vous veut pour elle ou vous utiliser. Il est également possible qu’il s’agisse d’une personne dans le besoin, ayant besoin de votre guidance et vos conseils.</br></div>",
    "L'échec, la vengeance, l’épreuve, le conflit, la pitié</em></br></br>La fureur impitoyable de la Conquérente et l’amour de Menphina ont du mal à coexister, créant un écart important entre elles.</br></br>Un conflit important et violent vous attend. Il se peut que vous perdriez beaucoup de cette rencontre et un choix vous sera imposé. Peu importe ce que vous déciderez, vous risquez de perdre quelque chose dans les deux situations. Néanmoins, vous pouvez encore limiter les pertes, reconsidérer vos relations et vous armer de volonté face à l'adversité. L'issue de ce conflit dépendra de votre résolution, n'attendez pas que l'issue soit décidée par l'autre parti, prenez les devants. C’est aussi l’annonce d’une fin ou d’une épreuve très importante dans une relation, de dissensions ou d’attentes déçues.</br></div>",

  ];

  final List<Color> arcanaMainColors = [
    Color(0xff93a639),
    Color(0xffaf492e),
    Color(0xffaf6f2e),
    Color(0xff29576d),
    Color(0xff28725a),
    Color(0xff314174),
    Color(0xff93a639),
    Color(0xffaf492e),
    Color(0xffaf6f2e),
    Color(0xff29576d),
    Color(0xff28725a),
    Color(0xff314174)
  ];

  final List<Color> arcanaSecondaryColors = [
    Color(0xFFCBDC75),
    Color(0xffdd7b61),
    Color(0xffdda061),
    Color(0xff507b90),
    Color(0xff519881),
    Color(0xff5a699a),
    Color(0xffCBDC75),
    Color(0xffdd7b61),
    Color(0xffdda061),
    Color(0xff507b90),
    Color(0xff519881),
    Color(0xff5a699a)
  ];

  final List<Color> arcanaTertiaryColors = [
    Color(0xffedf982),
    Color(0xffffc0af),
    Color(0xffffd7af),
    Color(0xff8cafc0),
    Color(0xff8dc6b3),
    Color(0xff95a1c7),
    Color(0xffedf982),
    Color(0xffffc0af),
    Color(0xffffd7af),
    Color(0xff8cafc0),
    Color(0xff8dc6b3),
    Color(0xff95a1c7),
  ];

  final List<AssetImage> arcanaImages = [
    AssetImage('assets/cards/Bole.png'),
    AssetImage('assets/cards/Balance.png'),
    AssetImage('assets/cards/Spire.png'),
    AssetImage('assets/cards/Ewer.png'),
    AssetImage('assets/cards/Arrow.png'),
    AssetImage('assets/cards/Spear.png'),
    AssetImage('assets/cards/BoleReverse.png'),
    AssetImage('assets/cards/BalanceReverse.png'),
    AssetImage('assets/cards/SpireReverse.png'),
    AssetImage('assets/cards/EwerReverse.png'),
    AssetImage('assets/cards/ArrowReverse.png'),
    AssetImage('assets/cards/SpearReverse.png'),
  ];

  final AssetImage cardBack = AssetImage('assets/cards/Back.png');
  final List<String> positionText = [
    "Passé",
    "Présent",
    "Futur",
  ];

  double getTitlePosition(double screenHeight) {
    final RenderBox renderBoxTitle =
        _titleKey.currentContext.findRenderObject();
    final positionTitle = renderBoxTitle.localToGlobal(Offset.zero);
    return screenHeight - (positionTitle.dy * 1.5);
  }

  // TODO: Add color by arcana
  Widget displayArcanaName(List<List<int>> drawnCards, int lastCardDrawn,
      num activePage, bool isVisible) {
    String arcanaNameText = ' ';
    Color textColor = Colors.transparent;
    if (drawnCards[activePage][0] != -7) {
      arcanaNameText = this.arcanaNames[drawnCards[activePage][0]];
    } else if (!(drawnCards[activePage][0] == -7) && lastCardDrawn >= 0)
      arcanaNameText = this.arcanaNames[lastCardDrawn];
    else
      arcanaNameText = ' ';
    if (drawnCards[activePage][0] != -7)
      textColor = this.arcanaMainColors[drawnCards[activePage][0]];

    return (AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0,
      duration: Duration(milliseconds: 500),
      child: Container(
        key: _titleKey,
        child: AnimatedDefaultTextStyle(
          style: TextStyle(color: textColor),
          duration: Duration(milliseconds: 150),
          child: Text(
            arcanaNameText,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    ));
  }

  Widget displayDrawPositionName(num activePage) {
    return Text(
      positionText[activePage],
      style: TextStyle(
        fontSize: 22,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget displayArcanaSymbols(List<List<int>> drawnCards, int lastCardDrawn,
      num activePage, bool isVisible) {
    String arcanaSymbolsText = 'Ceci est caché';
    Color textColor = Colors.transparent;
    if (drawnCards[activePage][0] != -7) {
      arcanaSymbolsText =
          "« " + this.arcanaSymbols[drawnCards[activePage][0]] + " »";
    } else if (!(drawnCards[activePage][0] == -7) && lastCardDrawn >= 0)
      arcanaSymbolsText = "« " + this.arcanaSymbols[lastCardDrawn] + " »";
    else
      arcanaSymbolsText = ' ';
    if (drawnCards[activePage][0] != -7)
      textColor = this.arcanaMainColors[drawnCards[activePage][0]];

    return (AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0,
      duration: Duration(milliseconds: 500),
      child: Container(
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 150),
          style: TextStyle(color: textColor),
          child: Text(
            arcanaSymbolsText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    ));
  }
}
