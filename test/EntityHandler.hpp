#pragma once
#include <SFML/Graphics.hpp>
#include <Entity.hpp>

class EntityHandler{
private:
    sf::RenderWindow &window;
    std::vector<Entity> entities;
    
public:
    EntityHandler(sf::RenderWindow &pWindow);
    void add(Entity e);
    void draw();
    Entity* get(std::string name);
    std::vector<Entity> getVector();
    void handleGravity();
};