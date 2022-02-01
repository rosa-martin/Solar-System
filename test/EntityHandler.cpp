#include <EntityHandler.hpp>

EntityHandler::EntityHandler(sf::RenderWindow &pWindow):window(pWindow){
}

void EntityHandler::add(Entity e){
    entities.push_back(e);
}

void EntityHandler::draw(){
    for(auto i = entities.begin(); i != entities.end(); i++){
        window.draw((*i).getSelf());
    }
}

Entity* EntityHandler::get(std::string name){
    for(auto i = entities.begin(); i != entities.end(); i++){
        if((*i).getName() == name){
            return &(*i);
        }
       
    }
}
std::vector<Entity> EntityHandler::getVector(){
    return entities;
}
void EntityHandler::handleGravity(){
    Entity* star = nullptr;
    for(auto i = entities.begin(); i != entities.end(); i++){
        if((*i).getName() == "sun"){
            star = &(*i);
            break;
        }
    }
    
    for(auto i = entities.begin(); i != entities.end(); i++){
        if((*i).getName() == "sun"){
            continue;
        } else {
            sf::Vector2f v = (&(*i))->calculateGravity(*star);
            (&(*i))->translate(v);
        }
    }
}