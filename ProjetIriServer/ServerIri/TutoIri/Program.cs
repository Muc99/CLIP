using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;
using System.IO;
using System.Threading;

namespace TutoIri
{
    class Program
    {
        static void Main(string[] args)
        {

            // Création de l'objet Bdd pour l'intéraction avec la base de donnée MySQL
            Bdd bdd = new Bdd();

            //Charger les mots communs
            List<String> words = BDDWord();

            // On crée notre 'manipulateur' de thread en y passant un 
            // paramètre classique
            CalculThread threadHandle = new CalculThread(words,bdd);

            // On crée notre thread en y donnant comme méthode boucle, une
            // méthode membre de notre manipulateur
            Thread t = new Thread(new ThreadStart(threadHandle.ThreadLoop));

            // La méthode ThreadLoop de l'objet threadHandle est appelée, et myParam est donc accessible!
            t.Start();



            Console.ReadKey();
        }

        public static List<String> BDDWord()
        {
            string sourceFile = @"gougenheim.txt";
            List<String> words = new List<string>();
            try
            {
                StreamReader monStreamReader = new StreamReader(File.OpenRead(sourceFile),System.Text.Encoding.UTF7);

                string ligne = monStreamReader.ReadLine();
                while (ligne != null)
                {
                    //On traite ensuite la ligne en cours
                    words.Add(ligne);
                    ligne = monStreamReader.ReadLine();
                }
                monStreamReader.Close();

            }
            catch (Exception)
            {
                Console.WriteLine("Problem loading File ... " + sourceFile);
            }
            return words;
        }
    }
}
