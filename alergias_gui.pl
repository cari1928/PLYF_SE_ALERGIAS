/*
INTERFAZ GRAFICA: Elemento del sistema experto encargado de interactuar con el usuario, 
mostrar imagenes, botones, textos, etc.

EJECUTAR SISTEMA EXPERTO:
CARGAR LAS 3 PARTES AL SWI PROLOG, EL SISTEMA INICIARÁ AUTOMATICAMENTE
*/

%modulos necesarios
:- use_module(library(pce)).
:- pce_image_directory('./Imagenes').
:- use_module(library(pce_style_item)).
:- dynamic color/2.

%recursos de imagenes
resource(img_principal, image, image('img_principal_2.jpg')).
resource(portada, image, image('portada_2.jpg')).

%%nasal
resource(respiratoria_nasal, image, image('falta_imagen.jpg')).
resource(estornudo, image, image('estornudo.jpg')).
resource(congestion_nasal, image, image('congestion_nasal.jpg')).
resource(picazon_nariz, image, image('picazon_nariz.jpg')).
resource(secrecion_nasal, image, image('secrecion_nasal.jpg')).
resource(sequedad, image, image('sequedad.jpg')).

%%pulmonar
resource(respiratoria_pulmonar, image, image('falta_imagen.jpg')).
resource(inf_irr_pulmones, image, image('inf_irr_pulmones.jpg')).
resource(inf_irr_bronquios, image, image('inf_irr_bronquios.jpeg')).
resource(tos_seca, image, image('tos_seca.jpg')).
resource(sibilancia, image, image('sibilancia.jpg')).
resource(dif_respirar, image, image('dif_respirar.jpg')).
resource(presion_pecho, image, image('falta_imagen.jpg')).

resource(respiratoria_rinits, image, image('falta_imagen.jpg')).
resource(respiratoria_asma_bronquial, image, image('falta_imagen.jpg')).
resource(cutanea_dermatitis, image, image('falta_imagen.jpg')).
resource(cutanea_dermatitis_atopica, image, image('falta_imagen.jpg')).
resource(cutanea_urticaria, image, image('falta_imagen.jpg')).
resource(cutanea_angiodema, image, image('falta_imagen.jpg')).
resource(cutanea_anafilaxia, image, image('falta_imagen.jpg')).
resource(cutanea_clasica_general, image, image('falta_imagen.jpg')).
resource(digestiva_tipo_1, image, image('falta_imagen.jpg')).
resource(digestiva_tipo_2, image, image('falta_imagen.jpg')).
resource(digestiva_tipo_3, image, image('falta_imagen.jpg')).
resource(digestiva_tipo_4, image, image('falta_imagen.jpg')).
resource(digestiva_tipo_5, image, image('falta_imagen.jpg')).
resource(mascota_respiratoria, image, image('falta_imagen.jpg')).
resource(mascota_cutanea, image, image('falta_imagen.jpg')).

%cutanea
resource(ronchas_rojas, image, image('falta_imagen.jpg')).
resource(ronchas_grises, image, image('falta_imagen.jpg')).
resource(ampollas, image, image('falta_imagen.jpg')).
resource(ronchas_parpados, image, image('falta_imagen.jpg')).
resource(sensacion_hinchazon, image, image('falta_imagen.jpg')).
resource(protuberancia_roja, image, image('falta_imagen.jpg')).
resource(protuberancia_blanca, image, image('falta_imagen.jpg')).
resource(verdugones, image, image('falta_imagen.jpg')).
resource(picazon_aguda, image, image('falta_imagen.jpg')).
resource(inflamacion_manos, image, image('falta_imagen.jpg')).
resource(inflamacion_pies, image, image('falta_imagen.jpg')).
resource(inflamacion_genitales, image, image('falta_imagen.jpg')).
resource(dolor_abdominal, image, image('falta_imagen.jpg')).
resource(diarrea, image, image('falta_imagen.jpg')).
resource(mareo, image, image('falta_imagen.jpg')).
resource(urticaria, image, image('falta_imagen.jpg')).
resource(vomito, image, image('falta_imagen.jpg')).
resource(perdida_conocimiento, image, image('falta_imagen.jpg')).
resource(enrojecimiento, image, image('falta_imagen.jpg')).
resource(erupciones, image, image('falta_imagen.jpg')).
resource(inflamacion_cuerpo, image, image('falta_imagen.jpg')).
resource(descamacion, image, image('falta_imagen.jpg')).

%digestivas
resource(fiebre_heno, image, image('falta_imagen.jpg')).
resource(picazon_ojos, image, image('falta_imagen.jpg')).
resource(picazon_paladar, image, image('falta_imagen.jpg')).
resource(inflamacion_lengua, image, image('falta_imagen.jpg')).
resource(nauseas, image, image('falta_imagen.jpg')).

%mascotas
resource(mucosidad_liquida, image, image('falta_imagen.jpg')).

%%ojos
resource(respiratoria_ojos, image, image('falta_imagen.jpg')).
resource(ojos_inflamados, image, image('ojos_inflamados.jpg')).
resource(ojos_inyectados_sangre, image, image('ojos_inyectados_sangre.jpg')).
resource(ojos_irritados, image, image('ojos_irritados.jpg')).
resource(picazon_ojos, image, image('picazon_ojos.jpg')).
resource(lagrimeo_ojos, image, image('lagrimeo_ojos.jpg')).

resource(comezon, image, image('comezon.jpg')).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%muestreo de interfaces

mostrar_imagen(Pantalla, Imagen) :- 
  new(Figura, figure),
  new(Bitmap, bitmap(resource(Imagen),@on)),
  send(Bitmap, name, 1),
  send(Figura, display, Bitmap),
  send(Figura, status, 1),
  send(Pantalla, display,Figura,point(100,80)).

mostrar_imagen_tratamiento(Pantalla, Imagen) :-
  new(Figura, figure),
  new(Bitmap, bitmap(resource(Imagen),@on)),
  send(Bitmap, name, 1),
  send(Figura, display, Bitmap),
  send(Figura, status, 1),
  send(Pantalla, display,Figura,point(20,100)).

nueva_imagen(Ventana, Imagen) :-
  new(Figura, figure),
  new(Bitmap, bitmap(resource(Imagen),@on)),
  send(Bitmap, name, 1),
  send(Figura, display, Bitmap),
  send(Figura, status, 1),
  send(Ventana, display,Figura,point(0,0)).

imagen_pregunta(Ventana, Imagen) :-
  new(Figura, figure),
  new(Bitmap, bitmap(resource(Imagen),@on)),
  send(Bitmap, name, 1),
  send(Figura, display, Bitmap),
  send(Figura, status, 1),
  send(Ventana, display,Figura,point(500,60)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%componentes basicos

%tener cuidado al modificar el @texto 
botones :-
  borrado,
  send(@boton, free),
  send(@btntratamiento,free),
  mostrar_diagnostico(Enfermedad),
  send(@texto, selection(
    'El Diagnostico a partir de los datos es la siguiente.\nTiene una alergia de tipo:\n'
  )),
  send(@resp1, selection(Enfermedad)),
  new(@boton, button('Iniciar consulta',
  message(@prolog, botones))),
  new(@btntratamiento,button('Posibles causas',
  message(@prolog, mostrar_tratamiento,Enfermedad))),
  send(@main, display,@boton,point(20,450)),
  send(@main, display,@btntratamiento,point(138,450)).

mostrar_tratamiento(X) :-
  new(@tratam, dialog('Causas y Explicacion')),
  send(@tratam, append, label(nombre, 'Explicacion: ')),
  send(@tratam, display,@lblExp1,point(70,51)),
  send(@tratam, display,@lblExp2,point(50,80)),
  tratamiento(X),
  send(@tratam, transient_for, @main),
  send(@tratam, open_centered).

tratamiento(X) :- 
  send(@lblExp1,selection('De acuerdo al Diagnostico, las posibles causas son:')),
  mostrar_imagen_tratamiento(@tratam,X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%preguntas
preguntar(Preg,Resp) :-
  new(Di,dialog('Colsultar de Datos:')),
  new(L2,label(texto,'Responde las siguientes preguntas')),
  id_imagen_preg(Preg,Imagen),
  imagen_pregunta(Di,Imagen),
  new(La,label(prob,Preg)),
  new(B1,button(si,and(message(Di,return,si)))),
  new(B2,button(no,and(message(Di,return,no)))),
  send(Di, gap, size(25,25)),
  send(Di,append(L2)),
  send(Di,append(La)),
  send(Di,append(B1)),
  send(Di,append(B2)),
  send(Di,default_button,'si'),
  send(Di,open_centered),get(Di,confirm,Answer),
  free(Di),
  Resp=Answer.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%elementos principales

interfaz_principal :-
  new(@main,dialog('Sistema Experto Diagnosticador de Alergias Comúnes en Mexico',
  size(1000,1000))),
  new(@texto, label(
    nombre,
    'De clic en el Iniciar Consulta para comenzar',
    font('times','roman',18
  ))),
  new(@resp1, label(nombre,'',font('times','roman',22))),
  new(@lblExp1, label(nombre,'',font('times','roman',14))),
  new(@lblExp2, label(nombre,'',font('times','roman',14))),
  new(@salir,button('Salir',and(message(@main,destroy),message(@main,free)))),
  new(@boton, button('Iniciar consulta',message(@prolog, botones))),
  new(@btntratamiento,button('¿Tratamiento?')),
  nueva_imagen(@main, img_principal),
  send(@main, display,@boton,point(138,450)),
  send(@main, display,@texto,point(20,130)),
  send(@main, display,@salir,point(300,450)),
  send(@main, display,@resp1,point(20,180)),
  send(@main,open_centered).

borrado :- send(@resp1, selection('')).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%elementos iniciales
crea_interfaz_inicio :- 
  new(@interfaz,dialog('Bienvenido al Sistema Experto Diagnosticador', size(1000,1000))),
  mostrar_imagen(@interfaz, portada),
  new(BotonComenzar,button('Iniciar',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('Salir',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

%inicio del sistema
:- crea_interfaz_inicio.
