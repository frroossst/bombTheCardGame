from distutils.command.build import build
import pygame

WIDTH, HEIGHT = 1080, 720
WIN = pygame.display.set_mode((WIDTH,HEIGHT))
BLACK = (0,0,0)
WHITE = (255,255,255)
FPS = 60
pygame.display.set_caption("Bomb : The card game")
DECK = []



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


def main() -> None:
    clock = pygame.time.Clock()
    run = True    
    DECK = build_deck()
    print(DECK)
    while run:
        clock.tick(FPS)
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False

            WIN.fill(BLACK)
            pygame.display.update()

    pygame.quit()

if __name__ == "__main__":
    main()