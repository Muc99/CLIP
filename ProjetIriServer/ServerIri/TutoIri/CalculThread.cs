using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace TutoIri
{
    class CalculThread
    {
        
        // Cet entier sera utilisé comme paramètre
        List<String> words;
        Bdd bdd;

        // Constructeur
        public CalculThread (List<String> words, Bdd bdd)
        {
            this.words = words;
            this.bdd = bdd;
        }

        // Méthode boucle du thread
        public void ThreadLoop()
        {
            //Tant que le thread n'est pas tué, on travaille
            while (Thread.CurrentThread.IsAlive)
            {
                //Verifie si des cours doivent metre mis a jour
                int idCours = bdd.GetidCours();
                if (idCours > 0)
                {
                    //recupere les infos de la note
                    Tuple<int, int, String,int> infoNote = bdd.GetNote();

                    //enregistre la note entiere
                    bdd.StoreNote(infoNote.Item2,infoNote.Item3);

                    //supprime les anciens blocs
                    bdd.deleteBloc(infoNote.Item2);

                    //traitement sur la note entiere : stockage dans bdd
                    storeBlock(infoNote);

                    //params = id du cours
                    String textBloc = bdd.GetBlocs(idCours);

                    //retire la ligne
                    bdd.RemoveFirstLine();

                    //supprimer les anciens mots-clefs
                    bdd.RemoveOldWords(idCours);

                    //Calcul de frequence
                    List<Tuple<String, int>> listFreq = CalculFreq(textBloc, words);
                    
                    bdd.InsertKeyWord(idCours, listFreq);
                }
            }
        }

        //ENLEVER les accents lors des comparaisons
        public static List<Tuple<String, int>> CalculFreq(String text, List<String> words)
        {
            text = text.ToLower();
            List<Tuple<String, int>> listFreq = new List<Tuple<string, int>>();
            while (text.Length != 0)
            {
                if (text.ElementAt(0) == ' ')
                {
                    text = text.Substring(1, text.Length - 1);
                    continue;
                }
                else
                {
                    string mot = "";
                    while (true)
                    {
                        if (text.Length != 0 && (text.ElementAt(0) != ' ' && text.ElementAt(0) != '.' && text.ElementAt(0) != ';' && text.ElementAt(0) != '!' && text.ElementAt(0) != '?' && text.ElementAt(0) != ',' && text.ElementAt(0) != '-'  && text.ElementAt(0) != ':'))
                        {
                            mot += text.ElementAt(0);
                            text = text.Substring(1, text.Length - 1);
                            continue;
                        }
                        else
                        {
                            if (text.Length != 0)
                                text = text.Substring(1, text.Length - 1);
                            break;
                        }
                    }
                    //Verif si le mot n'est pas commun
                    if (words.Contains(mot))
                        continue;


                    //Ajout dans la liste
                    if (mot.Length > 1)
                    {
                        for (int i = 0; i < listFreq.Count; i++)
                        {
                            if (listFreq[i].Item1 == mot)
                            {
                                listFreq[i] = new Tuple<String, int>(mot, listFreq[i].Item2 + 1);
                                break;
                            }
                            //Si pas deja existant
                            else if (i == listFreq.Count - 1)
                            {
                                listFreq.Add(new Tuple<String, int>(mot, 1));
                                break;
                            }

                        }
                        if (listFreq.Count == 0)
                            listFreq.Add(new Tuple<String, int>(mot, 1));
                    }
                }
            }
            return listFreq;
        }

        public void storeBlock(Tuple<int, int, String,int> infoNote)
        {
            String texte = infoNote.Item3;
            //s'arrete si plus de span
            while (texte.Contains("<span class="))
            {
                //cherche les index des spans
                int indexStart = texte.LastIndexOf("<span class=");
                int indexStop = texte.IndexOf("</span>");

                //recupere le temps et le texte
                string temps = texte.Substring(indexStart + 13,8);
                string contenu = texte.Substring(indexStart + 21+ 2, indexStop - indexStart- 23);

                //suprime le contenu et les spans
                texte = texte.Remove(indexStart, indexStop - indexStart+7);

                //envoie le resultat dans la bdd
                bdd.StoreBloc(infoNote.Item2,temps,contenu,infoNote.Item4);
            }
        }
    }
}
