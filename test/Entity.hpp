#pragma once
#include <SFML/Graphics.hpp>
#include <string>

class Entity{
private:
    sf::Vector2f position;
    sf::Vector2f velocity;
    float mass;
    float radius;
    sf::CircleShape planet;
    sf::Color color;
    std::string name;
    const float G = 6.67;
    
public:
    Entity(std::string pName, float pX, float pY, float pRadius, float pMass, sf::Color pColor, float pV0x, float pV0y);
    void setPosition(sf::Vector2f v);
    sf::Vector2f getPosition();
    sf::CircleShape getSelf();
    void translate(sf::Vector2f v);
    std::string getName();
    float getMass();
    sf::Vector2f calculateGravity(Entity star);
};