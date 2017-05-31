
/* 
BASE DE CONOCIMIENTOS: Sintomas de alergias respiratorias, cutáneas y digestivas.
Contiente ademas el identificador de imagenes de acuerdo al sintoma y alergénico.
*/

conocimiento('nasal',
[
    'Presencia de estornudos',
    'Picazon de nariz',
    'Congestion Nasal',
    'Secrecion de Moco',
    'Sensacion de sequedad en la garganta'
]).

conocimiento('Alergia Respiratoria\nTipo: Pulmonar',
[
    'Inflamacion e irritacion en los pulmones',
    'Tos Seca',
    'Sibilancia',
    'Dificultad para respirar'
]).

conocimiento('Alergia Respiratoria\nTipo: Pulmonar',
[
    'Inflamacion e irritacion en tejido bronquial',
    'Tos Seca',
    'Sibilancia',
    'Dificultad para respirar'
]).

conocimiento('Alergia en el area de los Ojos',
[
    'Ojos inflamados',
    'Irritacion en los ojos',
    'Picazon en los ojos',
    'Lagrimeo en los ojos'    
]).

conocimiento('Alergia en el area de los Ojos',
[
    'Ojos inyectados en sangre',
    'Irritacion en los ojos',
    'Picazon en los ojos',
    'Lagrimeo en los ojos'
]).

conocimiento('Alergia en el area de los Oidos',
[
    'Congestion del Oido',
    'Problemas de audicion'
]).

conocimiento('dermatitis',
[
    'Comezon'
]).

conocimiento('Alergia en el area de los Oidos',
[
    'Estallidos en el Oido',
    'Problemas de audicion'
]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%respiratoria - nasal
id_imagen_preg('Presencia de estornudos','estornudo').
id_imagen_preg('Picazon de nariz','picazon_nariz').
id_imagen_preg('Congestion Nasal','congestion_nasal').
id_imagen_preg('Secrecion de Moco','secrecion_nasal').
id_imagen_preg('Sensacion de sequedad en la garganta','sequedad').

%respiratoria - pulmonar
id_imagen_preg('Inflamacion e irritacion en los pulmones','inf_irr_pulmones').
id_imagen_preg('Inflamacion e irritacion en tejido bronquial','inf_irr_bronquios').
id_imagen_preg('Tos Seca','tos_seca').
id_imagen_preg('Sibilancia','sibilancia').
id_imagen_preg('Dificultad para respirar','dif_respirar').

%ojos
id_imagen_preg('Ojos inflamados','ojos_inflamados').
id_imagen_preg('Ojos inyectados en sangre','ojos_inyectados_sangre').
id_imagen_preg('Irritacion en los ojos','ojos_irritados').
id_imagen_preg('Picazon en los ojos','picazon_ojos').
id_imagen_preg('Lagrimeo en los ojos','lagrimeo_ojos').

id_imagen_preg('Comezon','comezon').