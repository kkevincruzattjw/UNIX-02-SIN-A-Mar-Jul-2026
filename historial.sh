    1  git remote -v
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    5  git push -u origin eval_p2_1_g2
    6  git branch
    7  ls kepler
    8  pwd
    9  ls
   10  cd evaluation
   11  ls
   12  ls kepler
   13  mv kepler/docs kepler/registros
   14  mkdir kepler/plantillas
   15  ls kepler
   16  git add .
   17  git commit -m "Fix problem 1: corrected directory structure"
   18  ls kepler
   19  ls kepler/registro
   20  ls kepler/registros
   21  mv kepler/sensores.log kepler/registros/
   22  mv kepler/ajustes.old kepler/ajustes.conf
   23  ls kepler
   24  ls kepler/registros
   25  git add .
   26  git commit -m "Fix problem 2: moved and renamed files"
   27  chmod 600 kepler/registros/sensores.log
   28  ls -l kepler/registros/sensores.log
   29  git add .
   30  git commit -m "Fix problem 3: set correct permissions on sensores.log"
   31  ls -l kepler/registros/sensores.log
   32  chmod u+x kepler/runner.sh
   33  chmod o-w kepler/ajustes.conf
   34  ls -l kepler/runner.sh
   35  ls -l kepler/ajustes.conf
   36  git add .
   37  git commit -m "Fix problem 4: corrected symbolic permissions"
   38  chmod u+s kepler/runner.sh
   39  ls -l kepler/runner.sh
   40  git add .
   41  git commit -m "Fix problem 5: enabled SUID on runner.sh"
   42  chmod +t /tmp/kepler_zone
   43  mkdir -p /tmp/kepler_zone
   44  chmod +t /tmp/kepler_zone
   45  ls -ld /tmp/kepler_zone
   46  git add .
   47  git commit -m "Fix problem 6: enabled sticky bit on /tmp/kepler_zone"
   48  gpg --full-generate-key
   49  gpg --list-keys vega@kepler.lab
   50  gpg --encrypt --recipient vega@kepler.lab kepler/registros/sensores.log
   51  ls kepler/registros
   52  git add .
   53  git commit -m "Fix problem 7: generated GPG key and encrypted sensores.log"
   54  gpg --clearsign kepler/ajustes.conf
   55  ls kepler
   56  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   57  gpg --detach-sign kepler/runner.sh
   58  gpg --verify kepler/runner.sh.sig kepler/runner.sh
   59  git add .
   60  git commit -m "Fix problem 8: created and corrected GPG signatures"
   61  ./calificar.sh kepler
   62  cd ..
   63  ./calificar.sh kepler
   64  ../calificar.sh kepler
   65  ls
   66  ls -a
   67  history > historial.sh
