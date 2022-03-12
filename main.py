from lib2to3.pgen2.token import NUMBER
import pygame
import random
import json



WIDTH, HEIGHT = 1080, 720
CARD_WIDTH, CARD_HEIGHT = 50*2, 75*2
WIN = pygame.display.set_mode((WIDTH,HEIGHT))
BLACK = (0,0,0)
WHITE = (255,255,255)
FPS = 60
pygame.display.set_caption("Bomb : The card game")
DECK = []
with open("settings.json","r") as fobj:
    content = json.load(fobj)
    NUMBER_OF_PLAYERS = content["number_of_players"]
    NUMBER_OF_DECKS = content["number_of_decks"]
DECK_LEN = 52 * NUMBER_OF_DECKS
BACK_CARD = pygame.image.load("back.png")
BACK_CARD = BACK_CARD.convert()
BACK_CARD = pygame.transform.scale(BACK_CARD,(CARD_WIDTH,CARD_HEIGHT))



def build_deck() -> list:
    num_cards = ["1","2","3","4","5","6","7","8","9","10"]
    pic_cards = ["jack","king","queen"]
    colours = ["heart","spade","diamond","club"]
    deck = []

    for i in colours:
        for j in num_cards:
            deck.append(i + "_" + j + ".png")
        for k in pic_cards:
            deck.append(i + "_" + k + ".png")
    
    return sorted(deck)

def show_deck() -> None:
    x, y = 0, 0

    for i in DECK:
        img = pygame.image.load(i)
        img.convert()
        img = pygame.transform.scale(img,(CARD_WIDTH,CARD_HEIGHT))
        WIN.blit(img,(x,y))
        x+=20

def build_players() -> None:
    playerVar = dict.fromkeys(('player%d'%i for i in range(NUMBER_OF_PLAYERS)),None)
    cardsPerPlayer = DECK_LEN//len(playerVar.keys())
    random.shuffle(DECK)
    cardSample = DECK.copy()

    for k,v in playerVar.items():
        if v == None:
            count = 0
            playerList = []
            while count < cardsPerPlayer:
                playerList.append(cardSample.pop(0))
                count += 1
            playerVar[k] = playerList
    playerVar["pot"] = cardSample
    
    with open("card_sample.json","w") as fobj:
        json.dump(playerVar,fobj,indent=6)
    


def main() -> None:
    clock = pygame.time.Clock()
    run = True   
    global DECK 
    DECK = build_deck()
    build_players()
    
    while run:

        clock.tick(FPS)

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False

            WIN.fill(BLACK)
        
        show_deck()
        pygame.display.update()

    pygame.quit()



if __name__ == "__main__":
    main()