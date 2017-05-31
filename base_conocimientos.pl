
/* 
BASE DE CONOCIMIENTOS: Sintomas de alergias respiratorias, cutáneas y digestivas.
Contiente ademas el identificador de imagenes de acuerdo al sintoma y alergénico.
*/

%reciclar congestion_nasal, estornudo, secrecion_nasal
conocimiento('respiratoria_nasal',
[
    'Presencia de estornudos',
    'Picazon de nariz',
    'Congestion Nasal',
    'Secrecion de Moco',
    'Sensacion de sequedad en la garganta'
]).

conocimiento('respiratoria_pulmonar',
[
    'Inflamacion en cualquier parte del cuerpo e irritacion en los pulmones',
    'Tos Seca',
    'Sibilancia',
    'Dificultad para respirar'
]).

conocimiento('respiratoria_pulmonar',
[
    'Inflamacion e irritacion en tejido bronquial',
    'Tos Seca',
    'Sibilancia',
    'Dificultad para respirar'
]).

conocimiento('respiratoria_ojos',
[
    'Ojos inflamados',
    'Irritacion en los ojos',
    'Picazon en los ojos',
    'Lagrimeo en los ojos'    
]).

conocimiento('respiratoria_ojos',
[
    'Ojos inyectados en sangre',
    'Irritacion en los ojos',
    'Picazon en los ojos',
    'Lagrimeo en los ojos'
]).

conocimiento('respiratoria_rinits',
[
    'Presencia de Estornudos',
    'Congestion nasal',
    'Secrecion de moco',
    'Ojos inflamados'
]).

conocimiento('respiratoria_asma_bronquial',
[
    'Presencia de Tos',
    'Dificultad para Respirar',
    'Sibilancia',
    'Sensación de Presión en el Pecho'
]).

conocimiento('cutanea_dermatitis',
[
    'Comezon',
    'Ronchas rojas',
    'Ampollas',
    'Sensacion de sequedad en la garganta'
]).

conocimiento('cutanea_dermatitis',
[
    'Comezon',
    'Ronchas grises',
    'Ampollas',
    'Sensacion de sequedad en la garganta'
]).

conocimiento('cutanea_dermatitis_atopica',
[
    'Comezon',
    'Ronchas rojas',
    'Ampollas',
    'Sensacion de sequedad en la garganta',
    'Ronchas en Parpados Inferiores'
]).

conocimiento('cutanea_dermatitis_atopica',
[
    'Comezon',
    'Ronchas grises',
    'Ampollas',
    'Sensacion de sequedad en la garganta',
    'Ronchas en Parpados Inferiores'
]).

conocimiento('cutanea_urticaria',
[
    'Sensacion de Hinchazon',
    'Protuberancias Rojas',
    'Verdugones que cubren grandes areas de la Piel',
    'Picazon aguda en cualquier area del Cuerpo'
]).

conocimiento('cutanea_urticaria',
[
    'Sensacion de Hinchazon',
    'Protuberancias Blancas',
    'Verdugones que cubren grandes areas de la Piel',
    'Picazon aguda en cualquier area del Cuerpo'
]).

conocimiento('cutanea_angiodema',
[
    'Inflamacion en manos',
    'Inflamacion en pies',
    'Inflamacion en genitales'
]).

conocimiento('cutanea_anafilaxia',
[
    'Dolor abdominal',
    'Diarrea',
    'Mareo',
    'Urticaria',
    'Vomito',
    'Sensacion de Hinchazon',
    'Perdida de conocimiento'
]).

conocimiento('cutanea_clasica_general',
[
    'Enrojecimiento en cualquier parte del cuerpo',
    'Picazon aguda en cualquier area del Cuerpo',
    'Ampollas',
    'Erupciones',
    'Inflamacion en cualquier parte del cuerpo',
    'Descamacion'
]).

conocimiento('digestiva_tipo_1',
[
    'Fiebre de Heno',
    'Secrecion de Moco',
    'Estornudos',
    'Picazon de nariz',
    'Picazon de ojos',
    'Picazon de paladar'
]).

conocimiento('digestiva_tipo_2',
[
    'Fiebre de Heno',
    'Secrecion de Moco',
    'Estornudos',
    'Picazon de nariz',
    'Sibilancia',
    'Presencia de Tos'
]).

conocimiento('digestiva_tipo_3',
[
    'Inflamacion de Lengua',
    'Sensacion de opresion en la Garganta',
    'Nauseas',
    'Vomito',
    'Diarrea',
    'Sibilancia',
    'Picazon en los ojos'
]).

conocimiento('digestiva_tipo_3',
[
    'Inflamacion de Labios',
    'Sensacion de opresion en la Garganta',
    'Nauseas',
    'Vomito',
    'Diarrea',
    'Sibilancia',
    'Picazon en los ojos'
]).

conocimiento('digestiva_tipo_4',
[
    'Picazon aguda en cualquier area del Cuerpo',
    'Erupciones'
]).

conocimiento('digestiva_tipo_4',
[
    'Picazon aguda en cualquier area del Cuerpo',
    'Ampollas'
]).

conocimiento('digestiva_tipo_4',
[
    'Picazon aguda en cualquier area del Cuerpo',
    'Protuberancias '
]).

conocimiento('digestiva_tipo_5',
[
    'Erupciones'
]).

conocimiento('mascota_respiratoria',
[
    'Picazon de nariz',
    'Estornudos',
    'Mucosidad liquida',
    'Lagrimeo en los ojos',
    'Presencia de Tos',
    'Sibilancia'
]).

conocimiento('mascota_cutanea',
[
    'Sensacion de Hinchazon',
    'Dificultad para respirar',
    'Sensación de Presión en el Pecho'
]).

conocimiento('oidos',
[
    'Congestion del Oido',
    'Problemas de audicion'
]).

conocimiento('oidos',
[
    'Estallidos en el Oido',
    'Problemas de audicion'
]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%RELACION REGLA - IMAGEN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%respiratoria - nasal
id_imagen_preg('Presencia de estornudos','estornudo').
id_imagen_preg('Picazon de nariz','picazon_nariz').
id_imagen_preg('Congestion Nasal','congestion_nasal').
id_imagen_preg('Secrecion de Moco','secrecion_nasal').
id_imagen_preg('Sensacion de sequedad en la garganta','sequedad').

%respiratoria - pulmonar
id_imagen_preg('Inflamacion en cualquier parte del cuerpo e irritacion en los pulmones','inf_irr_pulmones').
id_imagen_preg('Inflamacion en cualquier parte del cuerpo e irritacion en tejido bronquial','inf_irr_bronquios').
id_imagen_preg('Tos Seca','tos_seca').
id_imagen_preg('Presencia de Tos','tos_seca').
id_imagen_preg('Sibilancia','sibilancia').
id_imagen_preg('Dificultad para respirar','dif_respirar').
id_imagen_preg('Sensación de Presión en el Pecho','presion_pecho').

%ojos
id_imagen_preg('Ojos inflamados','ojos_inflamados').
id_imagen_preg('Ojos inyectados en sangre','ojos_inyectados_sangre').
id_imagen_preg('Irritacion en los ojos','ojos_irritados').
id_imagen_preg('Picazon en los ojos','picazon_ojos').
id_imagen_preg('Lagrimeo en los ojos','lagrimeo_ojos').

%cutaneas
id_imagen_preg('Comezon','comezon').
id_imagen_preg('Ronchas rojas','ronchas_rojas').
id_imagen_preg('Ronchas grises','ronchas_grises').
id_imagen_preg('Ampollas','ampollas').
id_imagen_preg('Ronchas en Parpados Inferiores','ronchas_parpados').
id_imagen_preg('Sensacion de Hinchazon','sensacion_hinchazon').
id_imagen_preg('Protuberancias Rojas','protuberancia_roja').
id_imagen_preg('Protuberancias Blancas','protuberancia_blanca').
id_imagen_preg('Verdugones que cubren grandes areas de la Piel','verdugones').
id_imagen_preg('Picazon aguda en cualquier area del Cuerpo','picazon_aguda').
id_imagen_preg('Inflamacion en cualquier parte del cuerpo en manos','inflamacion en cualquier parte del cuerpo_manos').
id_imagen_preg('Inflamacion en cualquier parte del cuerpo en pies','inflamacion en cualquier parte del cuerpo_pies').
id_imagen_preg('Inflamacion en cualquier parte del cuerpo en genitales','inflamacion en cualquier parte del cuerpo_genitales').
id_imagen_preg('Dolor abdominal','dolor_abdominal').
id_imagen_preg('Diarrea','diarrea').
id_imagen_preg('Mareo','mareo').
id_imagen_preg('Urticaria','urticaria').
id_imagen_preg('Vomito','vomito').
id_imagen_preg('Perdida de conocimiento','perdida_conocimiento').
id_imagen_preg('Enrojecimiento en cualquier parte del cuerpo','enrojecimiento').
id_imagen_preg('Erupciones','erupciones').
id_imagen_preg('Inflamacion en cualquier parte del cuerpo','inflamacion_cuerpo').
id_imagen_preg('Descamacion','descamacion').

%digestivas
id_imagen_preg('Fiebre de Heno','fiebre_heno').
id_imagen_preg('Picazon de ojos','picazon_ojos').
id_imagen_preg('Picazon de paladar','picazon_paladar').
id_imagen_preg('Inflamacion de Lengua','inflamacion_lengua').
id_imagen_preg('Nauseas','nauseas').

%mascotas
id_imagen_preg('Mucosidad liquida','mucosidad_liquida').
