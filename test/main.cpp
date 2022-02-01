#include <iostream>
#include <SFML/Graphics.hpp>
#include <Entity.hpp>
#include <EntityHandler.hpp>

int main()
{
	sf::RenderWindow window(sf::VideoMode(1200, 800), "Test");
    window.setFramerateLimit(60);
    
    EntityHandler eh = EntityHandler(window);
    
    //            name   X    Y     r   m   color          v0x v0y
    eh.add(Entity("sun", 550, 350, 50, 50, sf::Color::Yellow, 0, -1));
    eh.add(Entity("earth", 800, 350, 5, 1, sf::Color::Blue, 0, -1));
    eh.add(Entity("mars", 300, 350, 2, 0.5, sf::Color::Red, 0, 0.8));
    
    
    
    
    while(window.isOpen()){
        sf::Event event;
        while(window.pollEvent(event)){
            if(event.type == sf::Event::Closed){
                window.close();
            }
        }
        
        
        eh.handleGravity();
        
        
        window.clear(sf::Color::Black);
        eh.draw();
        window.display();
        
    }
    
    
	return 0;
}
