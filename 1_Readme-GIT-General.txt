Un mode operatoire "git" pour travail en equipe
===============================================

NB: l'odre des operations est tr�s important !!!

Un des membres de l'�quipe effectue EN PREMIER les �tapes 1,2,3,4
et continuera ult�rieurement avec les �tapes 6 , 7 , 8 , ...

Les autres membres de l'�quipe pourront effectuer l' �tape 5
SEULEMENT APRES la fin des �tapes 1,2,3,4 !!!!

1 . cr�ation et test (sans GIT) d'un embryon de projet 
  a) cr�er par exemple un nouveau projet maven "prjXy" (avec pom.xml)
    sous eclipse ou bien un nouveau dossier "prjXy" avec contenu html+css+js
    sous notepad++
  b) tester un minimum (test unitaire ou "run as ... / run on server ou ...)
  
2 . prise en charge par git en mode local
  a) git init (en ligne de commande ou via tortoise git)
  b) copier/coller adapt� de .gitignore
  c) git add * et git commit -a -m version_initiale
     (en ligne de commande ou via tortoise git)
     
3. pr�paration d'un r�ferentiel GIT distant (souvent avec github)
   a) se connecter avec son compte github (ex: didier-tp , pwd007! )
   b) cr�er un nouveau r�f�rentiel vide (sans readme , sans .gitignore) 
      sous git hub ==> nouvelle url de type
   https://github.com/didier-tp/web3b.git
   
4. push initial vers le r�f�rentiel distant (g�r� par gitHub):
   a) se placer dans le r�pertoire du projet (o� il y a .git)
   b) lancer les commandes suivantes (directement dans "cmd" ou via ".bat"):
   REM git remote add Web3bGitHubOrigin https://username:password@urlRepoDistantGit
   git remote add Web3bGitHubOrigin https://didier-tp:pwd007!@github.com/didier-tp/web3b.git
   git push -u Web3bGitHubOrigin master   
   
5. clonage du r�f�rentiel distant/partag� GIT
   a) se placer quelquepart (cmd , cd )
   b) lancer la commande git clone https://github.com/didier-tp/web3b.git
   ou �ventuellement git clone https://didier-tp:pwd007!@github.com/didier-tp/web3b.git
   c) �ventuelle importation dans un IDE (exemple: 
      import ... / existing maven project sous eclipse)  
    
6. am�lioration du code , test et commit local
   a) am�iorer un ou plusieurs fichiers
   b) tests (unitaires ou via navigateur ou ...)
   c) commit (en ligne de commande ou avec tortoise git ou avec un IDE)
   
7. pull/push (avec merge automatique ou conflit)
   a) tenter un push direct (cmd / git push , tortoise git , IDE )
   b) si n�cessaire lancer d'abord un pull
      c)  si besoin g�rer les conflits (*)
          et r�-efectuer un test et un nouveau commit
   d) relancer si besoin un push , retenter le cycle a,b,c,d si besoin  
   
8) pull � lancer r�guli�rement/souvent pour charger les modifications
   effectu�s par les autres membres de l'�quipe:
   * git pull (ligne de cmd, tortoise git ou via IDE )
   
   
========================
(*) r�solution des conflits:
juste apr�s un pull qui d�clenche en interne "fetch + merge",
certains conflits peuvent �tre � g�rer manuellement .
Les fichiers en conflit sont pr�cis�s par le message de la commande pull.
"git status" ou bien les couleurs de "tortoise git" peuvent �galement
servir � identifier les fichiers en conflit.
Via un �diteur tel que "notepad++" on peut ouvrir 1 � 1 les
fichiers en conflit et effectuer une fusion adapt�e au cas par cas
de la version locale avec cetaines lignes de la version distante.
Si les modifications sont importantes, quelques tests (unitaire, web, ...)
peuvent �tre ensuite appropri�s.
il faut ensuite effectuer un commit pour enregistrer les fichiers
o� les conflits ont �t� r�solus avant de r�-effectuer un push.

      