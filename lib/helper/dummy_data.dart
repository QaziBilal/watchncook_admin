import 'package:watchncook_admin/helper/constants.dart';
import 'package:watchncook_admin/models/model_recipe.dart';

List<RecipeModel> reciepList = [
  RecipeModel(
      name: "Easy Fried Rice",
      imageUrl: AppImages.easyFriedRice,
      description:
          "A quick fried rice recipe like you get at your favorite Chinese restaurant. Leftover rice, plus a couple of eggs, baby carrots, peas, and soy sauce is all you need. Garnish with sliced green onions, if desired.",
      ingredients: [
        '⅔ cup chopped baby carrots',
        '½ cup frozen green peas',
        '2 tablespoons vegetable oil',
        '1 clove garlic, minced, or to taste (Optional)',
        '2 large eggs',
        '3 cups leftover cooked white rice',
        '1 tablespoon soy sauce, or more to taste',
        '2 teaspoons sesame oil, or to taste'
      ],
      steps: [
        'Assemble ingredients.',
        'Place carrots in a small saucepan and cover with water. Bring to a low boil and cook for 3 to 5 minutes. Stir in peas, then immediately drain in a colander.',
        'Heat a wok over high heat. Pour in vegetable oil, then stir in carrots, peas, and garlic; cook for about 30 seconds. Add eggs; stir quickly to scramble eggs with vegetables.',
        'Stir in cooked rice. Add soy sauce and toss rice to coat. Drizzle with sesame oil and toss again.',
        'Serve hot and enjoy!'
      ],
      ytLink: "ytLink",
      category: "Rice",
      cookingTime: '20 mins'),
  RecipeModel(
      name: "Chicken Biryani",
      imageUrl: AppImages.chickenBiryani,
      ingredients: [
        '4 tablespoons vegetable oil, divided',
        '4 small potatoes, peeled and halved',
        '2 large onions, finely chopped',
        '2 cloves garlic, minced',
        '1 tablespoon minced fresh ginger root',
        '2 medium tomatoes, peeled and chopped',
        '1 teaspoon salt',
        '1 teaspoon ground cumin',
        '½ teaspoon chili powder',
        '½ teaspoon ground black pepper',
        '½ teaspoon ground turmeric',
        '2 tablespoons plain yogurt',
        '2 tablespoons chopped fresh mint leaves',
        '½ teaspoon ground cardamom',
        '1 (2 inch) piece cinnamon stick',
        '3 pounds boneless, skinless chicken pieces cut into chunks',
        '1 pound basmati rice',
        '2 ½ tablespoons vegetable oil',
        '1 large onion, diced',
        '5 pods cardamom',
        '3 whole cloves',
        '1 (1 inch) piece cinnamon stick',
        '½ teaspoon ground ginger',
        '1 pinch powdered saffron',
        '4 cups chicken stock',
        '1 ½ teaspoons salt'
      ],
      steps: [
        'Gather all ingredients.',
        'Heat 2 tablespoons of oil in a large skillet. Fry potatoes in hot oil until lightly browned, about 3 to 5 minutes. Remove to a paper towel-lined plate to drain; set aside.',
        'Add remaining 2 tablespoons of oil to the skillet. Add onions, garlic, and fresh ginger; cook and stir until onion is soft and golden. Add tomatoes, salt, cumin, chili powder, pepper, and turmeric; cook, stirring constantly, for 5 minutes.',
        'Stir in yogurt, mint, ground cardamom, and cinnamon stick. Cover and cook over low heat, stirring occasionally, until tomatoes are cooked to a pulp. It may be necessary to add a little hot water if mixture becomes too dry and starts to stick to the pan.',
        'Add chicken and stir well to coat. Cover and cook over very low heat until chicken is tender, 35 to 45 minutes. There should only be a little very thick gravy left when chicken is finished cooking. If necessary cook uncovered for a few minutes to reduce the gravy.',
        'Meanwhile, make the rice: Wash rice well and drain in a colander for at least 30 minutes.',
        'Heat oil in a large skillet. Add onion; cook and stir until golden. Add cardamom pods, cloves, cinnamon stick, ground ginger, and saffron; stir in rice until coated with spices.',
        'Heat stock and salt in a medium pot until hot; pour over rice and stir well.',
        'Add chicken mixture and potatoes; stir gently to combine. Bring to a boil.',
        'Reduce heat to very low, cover with a tight-fitting lid, and steam for 20 minutes without lifting the lid or stirring.',
        'Spoon biryani onto a warm serving dish.',
      ],
      ytLink: "ytLink",
      description:
          "Chicken biryani is a delicious Pakistani/Indian rice dish that's typically reserved for special occasions such as weddings, parties, or holidays such as Ramadan. It has a lengthy preparation, but the work is definitely worth it. For biryani, basmati rice is the ideal variety to use.",
      cookingTime: "1 hr 50 mins",
      category: "Rice"),
  RecipeModel(
      name: "Afghani Kabli Pulao",
      imageUrl: AppImages.afghaniPulao,
      ingredients: [
        '1 onion, peeled and halved',
        '1 whole head garlic, loose skins removed',
        '1 cinnamon stick',
        '4 cardamom pods, crushed',
        '1 teaspoon ground black pepper',
        '1 teaspoon cumin seed',
        '1 teaspoon salt',
        '1 teaspoon white sugar',
        '1 teaspoon paprika',
        '1 teaspoon coriander seeds',
        '4 whole cloves',
        '3 ½ cups water, or as needed to cover',
        '2 cups sella basmati rice',
        '1 tablespoon canola oil',
        '1 onion, chopped',
        '3 cloves garlic, minced',
        '1 cup matchstick carrots',
        '½ cup raisins',
        '½ cup slivered almonds',
        '1 teaspoon cumin seed',
        '1 teaspoon ground black pepper',
        '1 cardamom pod, shell removed and seeds crushed into a powder',
        '1 whole clove'
      ],
      steps: [
        'Make the broth: Place halved onion, garlic head, cinnamon stick, cardamom pods, pepper, cumin seed, salt, sugar, paprika, coriander seeds, and cloves into a pressure cooker. Pour in water to cover.',
        "Close the cooker securely and place the pressure regulator over the vent according to manufacturer's instructions. Set to high and heat until steam escapes in a steady flow and makes a whistling sound, about 5 minutes. Reduce to medium and cook for 20 minutes. Let the pressure release naturally, about 10 minutes. Unlock the lid and remove.",
        'When the broth is almost finished, start the rice: Soak rice in cool water for 5 minutes, then rinse until water runs clear.',
        'Strain cooled broth into a bowl. Clean out the pressure cooker, then place over medium heat and add oil.',
        'Add onion and garlic to the cooker; cook and stir until softened and browned, 7 to 10 minutes. Stir in carrots and cook until soft, about 3 minutes more. Add strained rice, raisins, almonds, cumin seed, pepper, cardamom powder, and clove. Stir to combine, then pour in enough broth to cover.',
        'Close the cooker securely and seal the vent; set to high and heat until the first whistle, 5 to 7 minutes. Reduce to medium and cook for 5 minutes. Remove from the heat and let rest for 7 minutes, then let pressure release naturally, about 10 minutes. Immediately transfer cooked rice to a serving dish to prevent overcooking.',
        "Boil broth ingredients for 1 hour. After soaking the rice, combine all rice ingredients and all broth (if broth doesn't measure 3 1/2 cups, add water to get that amount of liquid) and bring to a boil. Reduce heat to low and place a paper towel over the pot. Cover with a lid and cook until rice is tender, about 25 minutes."
      ],
      ytLink: "ytLink",
      description:
          "This Afghan rice dice called kabuli pulao is made in a pressure cooker. The perfectly textured rice is infused with flavor from a seasoned homemade broth. You can also prepare it on your stovetop.",
      cookingTime: "1 hr 39 mins",
      category: "Rice")
];
