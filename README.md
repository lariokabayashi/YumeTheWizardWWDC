# WWDC Scholarship Winner 2024: Larissa's Journey with "Yume The Wizard"

In 2024, Larissa was awarded a prestigious WWDC scholarship, recognizing her exceptional talent and passion for coding. Her winning submission, an interactive app playground titled "Yume The Wizard," was selected as one of the top 50 Distinguished Winners, earning her an invitation to Apple in Cupertino.

## Project Overview

For the 2024 WWDC scholarship competition, applicants were tasked with creating an interactive app playground on a topic of their choice. Larissa's project was inspired by her scientific initiation research, which delved into the ethical implications and fairness of machine learning models.

## "Yume The Wizard"

"Yume The Wizard" is an engaging and educational app that guides users through the process of training and validating an image classification model. The app uses a captivating narrative to introduce users to Yume, a wizard who helps them understand and apply key principles in machine learning.

## Key Features and Motivations

- **Educational Narrative:** The app features an immersive storyline where users assist Yume in building a machine learning model. This narrative approach makes complex concepts accessible and engaging for users of all ages.
- **Ethics and Fairness:** The project emphasizes the importance of data diversity, transparency, and continuous improvement of algorithms to mitigate bias in machine learning. Users learn about these critical principles through interactive tasks and challenges within the app.
- **Interactive Learning:** Users participate in hands-on activities, such as data collection, model training, and validation, which demonstrate the real-world applications of machine learning.
- **Transparency and Improvement:** The app showcases how ongoing monitoring and refinement of ML models can lead to more ethical and fair outcomes, promoting a deeper understanding of responsible AI practices.

## Technologies Used

### CreateML and CoreML

- **Biased Model:** A small dataset of 20 images of cats and dogs from the game's own pixel data was used, split into 80% training and 20% testing. The model experienced overfitting during training, achieving 100% accuracy but proving ineffective in predicting new outcomes.
- **Unbiased Model:** A larger dataset comprising 717 images of real-life cats and dogs, including drawings, was used, with 573 images for testing and 144 for training. Data augmentation techniques, such as blur and noise, were applied to expand the dataset and improve the model's performance for both real-life and pixel art images.
- **Results:** The improved image classification model achieved positive results for both real-life cats and dogs as well as those in pixel art. However, continuous monitoring and improvement of the model are necessary due to its susceptibility to failures.

### Apple Frameworks

- **SpriteKit:** Used to add interactive elements and animations to the Swift Playground.
- **AVFAudio:** Integrated to add sound effects and enhance the user experience.
- **Photos Library:** Enabled users to test the model with their own cat and dog photos.

## Screenshots

![App Screenshot](YumeTheWizard.png)

## Impact and Recognition

Larissa's project earned her a Swift Student Challenge Award at WWDC 2024, showcasing her dedication to promoting ethical practices in AI and machine learning. This prestigious recognition also granted her an invitation to attend the in-person WWDC 2024 event.


Credits:

Sound effects obtained from:

(https://www.zapsplat.com)

kaggle dataset downloaded from:

(https://www.kaggle.com/datasets/samuelcortinhas/cats-and-dogs-image-classification?select=train) on Public Domain

Real world image of Cats and Dogs downloaded from Freepik:

[Cat-1 Image](https://br.freepik.com/fotos-gratis/gato-futurista-com-oculos-de-protecao_94936866.htm)
[Cat-2 Image](https://br.freepik.com/psd-gratuitas/belo-retrato-de-gato-isolado_38310653.htm#query=gato&position=44&from_view=search&track=sph&uuid=6f74c674-6caf-46e7-bdcf-fda12447053b)
[Cat-3 Image](https://br.freepik.com/fotos-gratis/o-gato-vermelho-ou-branco-eu-no-estudio-branco_9405874.htm#query=gato&position=47&from_view=search&track=sph&uuid=6f74c674-6caf-46e7-bdcf-fda12447053b)
[Dog-1 Image](https://br.freepik.com/fotos-gratis/vista-frontal-do-conceito-de-cachorro-fofo-engracado_11524384.htm#page=3&query=dog&position=25&from_view=search&track=sph&uuid=f5b27127-906b-493f-869c-b95914220aa0)
[Dog-2 Image](https://br.freepik.com/psd-gratuitas/retrato-de-grupo-de-filhotes-adoraveis_3730286.htm)
[Dog-3 Image](https://br.freepik.com/fotos-gratis/cao-de-raca-pura-sendo-adoravel-em-um-estudio_15615916.htm)

The Font used in all Scenes:

Open font: (https://fonts.google.com/share?query=pixelify)

Websites frequently utilized during the development of this playground:

- Aseprite: Primary platform for creating all pixel art assets.
- Figma: Key tool for prototyping and designing the project.
- Stack Overflow: Go-to resource for resolving coding issues.

Additionally, all other aspects of this project, including design, coding, and illustration, were executed by me, Larissa Okabayashi.

Also, I want to thank my family, friends and mentors for their invaluable guidance and support throughout this project.
