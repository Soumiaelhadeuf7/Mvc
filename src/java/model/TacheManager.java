/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

public class TacheManager {
    private final List<Tache> taches = new ArrayList<>();

    public void ajouterTache(String description) {
        taches.add(new Tache(description));
    }

    public List<Tache> getTaches() {
        return taches;
    }

   
}