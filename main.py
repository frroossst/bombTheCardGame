import pygame

WIDTH, HEIGHT = 1080, 720
WIN = pygame.display.set_mode((WIDTH,HEIGHT))
BLACK = (0,0,0)
WHITE = (255,255,255)
FPS = 60
pygame.display.set_caption("Bomb : The card game")


def main():
    clock = pygame.time.Clock()
    run = True
    
    while run:
        clock.tick(FPS)
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False

            WIN.fill(WHITE)
            pygame.display.update()

    pygame.quit()

if __name__ == "__main__":
    main()