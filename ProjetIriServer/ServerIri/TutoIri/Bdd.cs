using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;

namespace TutoIri
{
    public class Bdd
    {

        private MySqlConnection connection;

        // Constructeur
        public Bdd()
        {
            this.InitConnexion();
        }

        // Méthode pour initialiser la connexion
        private void InitConnexion()
        {
            // Création de la chaîne de connexion
            string connectionString = "SERVER=127.0.0.1; DATABASE=projetclip; UID=root; PASSWORD=";
            this.connection = new MySqlConnection(connectionString);
        }

        public String GetBlocs(int idCours)
        {
            string query = "SELECT bloc.contenu FROM bloc, note, cours WHERE note.idCours = "+idCours+";";
            //Open connection
            this.connection.Open();
            String texte="";


            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //Read the data and store them in the list
            while (dataReader.Read())
            {
                texte += dataReader["contenu"]+" ";
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
            return texte;
        }

        public int GetidCours()
        {
            string query = "SELECT idCours FROM note, updatebloc Where updatebloc.idNote = note.idNote";
            //Open connection
            this.connection.Open();
            int id=0;


            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //Read the data and store them in the list
            while (dataReader.Read())
            {
                id = Int32.Parse(dataReader["idCours"].ToString());
                break;
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
            return id;
        }

        public Tuple<int, int, String, int> GetNote()
        {
            string query = "SELECT idUtilisateur, idNote, contenuTotal, speed FROM updatebloc";
            //Open connection
            this.connection.Open();

            Tuple<int, int, String, int> info= new Tuple<int,int,string,int>(0,0,"",0);

            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //Read the data and store them in the list
            while (dataReader.Read())
            {
                info = new Tuple<int, int, string, int>(Int32.Parse(dataReader["idUtilisateur"].ToString()), Int32.Parse(dataReader["idNote"].ToString()), dataReader["contenuTotal"].ToString(), Int32.Parse(dataReader["speed"].ToString()));
                break;
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
            return info;
        }

        public void deleteBloc(int idNote)
        {
            string query = "DELETE FROM bloc WHERE idNote ="+idNote;
            //Open connection
            this.connection.Open();

            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
        }

        public void StoreBloc(int idNote, string date, string contenu, int speed)
        {
            // Ouverture de la connexion SQL
            this.connection.Open();

            // Création d'une commande SQL en fonction de l'objet connection
            MySqlCommand cmd = this.connection.CreateCommand();


            // Requête SQL
            cmd.CommandText = "INSERT INTO bloc (idNote, date, contenu,speed) VALUES (@idNote, @date,@contenu,@speed)";

            // utilisation de l'objet contact passé en paramètre
            cmd.Parameters.AddWithValue("@idNote", idNote);
            cmd.Parameters.AddWithValue("@date","00-00-00 "+date);
            cmd.Parameters.AddWithValue("@contenu", contenu);
            cmd.Parameters.AddWithValue("@speed", speed);

            // Exécution de la commande SQL
            cmd.ExecuteNonQuery();

            // Fermeture de la connexion
            this.connection.Close();
        }

        public void StoreNote(int idNote,string contenu)
        {
            // Ouverture de la connexion SQL
            this.connection.Open();

            // Création d'une commande SQL en fonction de l'objet connection
            MySqlCommand cmd = this.connection.CreateCommand();


            // Requête SQL
            cmd.CommandText = "UPDATE note SET contenu=@contenu WHERE idNote=@idNote";

            // utilisation de l'objet contact passé en paramètre
            cmd.Parameters.AddWithValue("@contenu", contenu);
            cmd.Parameters.AddWithValue("@idNote", idNote);

            // Exécution de la commande SQL
            cmd.ExecuteNonQuery();

            // Fermeture de la connexion
            this.connection.Close();
        }

        public void RemoveFirstLine()
        {

            string query = "DELETE FROM updatebloc LIMIT 1";
            //Open connection
            this.connection.Open();

            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();
            
            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
        }

        public void RemoveOldWords(int idCours)
        {
            string query = "DELETE FROM motclefs WHERE idCours =" + idCours;
            //Open connection
            this.connection.Open();

            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, this.connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.connection.Close();
        }

        //insert les mots clefs
        public void InsertKeyWord(int idcours, List<Tuple<String, int>> listFreq)
        {
            int min = 15;
            int max = 30;
            
            int X = listFreq.Min(x => x.Item2);
            int Y = listFreq.Max(x => x.Item2);
            foreach (Tuple<String, int> tuple in listFreq)
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                //Calcul valeur
                int valeur = (int)((((double)(tuple.Item2 - X)) / (Y - X) + 1) * 15);

                // Requête SQL
                cmd.CommandText = "INSERT INTO motclefs (idCours, mot, frequence, tailleMot) VALUES (@idcours, @mot,@frequence,@tailleMot)";

                // utilisation de l'objet contact passé en paramètre
                cmd.Parameters.AddWithValue("@idcours", idcours);
                cmd.Parameters.AddWithValue("@mot", tuple.Item1);
                cmd.Parameters.AddWithValue("@frequence", tuple.Item2);
                cmd.Parameters.AddWithValue("@tailleMot", valeur);

                // Exécution de la commande SQL
                cmd.ExecuteNonQuery();

                // Fermeture de la connexion
                this.connection.Close();
            }
        }

     
    }
}
