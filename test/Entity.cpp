#include <Entity.hpp>
#include <math.h>

Entity::Entity(std::string pName, float pX, float pY, float pRadius, float pMass, sf::Color pColor, float pV0x, float pV0y){
    name = pName;
    position = sf::Vector2f(pX, pY);
    velocity = sf::Vector2f(pV0x, pV0y);
    radius = pRadius;
    mass = pMass;
    color = pColor;
    
    planet.setPosition(position);
    planet.setRadius(radius);
    planet.setFillColor(color);
}

void Entity::setPosition(sf::Vector2f v){
    planet.setPosition(v);
}
sf::Vector2f Entity::getPosition(){
    sf::Vector2f offset = sf::Vector2f(radius, radius);
    return planet.getPosition() + offset;
}
sf::CircleShape Entity::getSelf(){
    return planet;
}
void Entity::translate(sf::Vector2f v){
    sf::Vector2f newVec;
    newVec.x = v.x;
    newVec.y = v.y;
    planet.setPosition(planet.getPosition() + newVec);
}
std::string Entity::getName(){
    return name;
}
float Entity::getMass(){
    return mass;
}
sf::Vector2f Entity::calculateGravity(Entity star){
    sf::Vector2f distVec = star.getPosition() - planet.getPosition();
    float magDistVec = sqrt((distVec.x*distVec.x) + (distVec.y*distVec.y)); 
    sf::Vector2f dirVec = distVec / magDistVec;
    sf::Vector2 acceleration = (G*star.getMass()/(magDistVec*magDistVec)) * dirVec;
    velocity = velocity + acceleration;
    
    return velocity;
}

