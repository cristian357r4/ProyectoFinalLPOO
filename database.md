create table food_groups
(
    id_grupo    int auto_increment
        primary key,
    nombre      varchar(20) null,
    ingrediente varchar(20) null,
    cantidad    float       null
);

create table food_subgroups
(
    id_sub   int auto_increment
        primary key,
    id_grupo int         null,
    nombre   varchar(20) null,
    constraint alimentos_subgrupos_alimentos_grupos_id_grupo_fk
        foreign key (id_grupo) references food_groups (id_grupo)
);


create table persons
(
    id_persona int auto_increment
        primary key,
    nombre     varchar(30) not null,
    a_paterno  varchar(30) not null,
    a_materno  varchar(30) not null,
    sexo       varchar(1)  not null,
    telefono   bigint      null,
    correo     varchar(45) null
);

create table patients_information
(
    id_paciente      int auto_increment
        primary key,
    id_persona       int   null,
    edad             int   null,
    fecha_macimiento date  null,
    talla            float null,
    imc              float null,
    grasa_corporal   float null,
    tipo_paciente    int   null,
    constraint info_paciente_personas_id_persona_fk
        foreign key (id_persona) references persons (id_persona)
);

create table activities
(
    id              int auto_increment
        primary key,
    id_paciente     int         null,
    ejercicio       varchar(20) null,
    frecuencia      varchar(40) null,
    duracion        int         null,
    tiempo_practica int         null,
    grupo_solitario varchar(10) null,
    equipo          varchar(2)  null,
    constraint actividades_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table eating_plans
(
    id_plan            int auto_increment
        primary key,
    id_paciente        int null,
    grupo_alimentos    int null,
    subgrupo_alimentos int null,
    equivalente        int null,
    desayuno           int null,
    colacion1          int null,
    comida             int null,
    colacion2          int null,
    cena               int null,
    constraint alimenticio_planes_alimentos_grupos_id_grupo_fk
        foreign key (grupo_alimentos) references food_groups (id_grupo),
    constraint alimenticio_planes_alimentos_subgrupos_id_sub_fk
        foreign key (subgrupo_alimentos) references food_subgroups (id_sub),
    constraint alimenticio_planes_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table health_records
(
    id_antecedentes      int auto_increment
        primary key,
    id_paciente          int         null,
    diabetes             int         null,
    obesidad             int         null,
    hipertrigliceridemia int         null,
    hipercolesterolemia  int         null,
    cancer               int         null,
    otra                 varchar(30) null,
    constraint antecedentes_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table ematic_biometrics
(
    id_biometria     int auto_increment
        primary key,
    id_paciente      int   null,
    fecha            date  null,
    globulos_rojos   float null,
    globulos_blancos float null,
    plaquetas        float null,
    hemoglobina      float null,
    hematocrito      float null,
    neutrofilos      float null,
    constraint ematica_biometrias_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table habits
(
    id_habitos               int auto_increment
        primary key,
    id_paciente              int         null,
    no_comidas               int         null,
    alergias                 int         null,
    tipo_grasa_cocina        varchar(10) null,
    lugar_comidas            varchar(20) null,
    come_fuera               varchar(15) null,
    frecuencia_comidas_fuera int         null,
    constraint habitos_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table nutritionists
(
    id_nutriologo      int auto_increment
        primary key,
    id_persona         int         not null,
    cedula_profesional bigint      not null,
    login              varchar(15) null,
    constraint nutriologos_personas_id_persona_fk
        foreign key (id_persona) references persons (id_persona)
);

create table salud_probelmas
(
    id_problema   int auto_increment
        primary key,
    id_paciente   int  null,
    diarrea       int  null,
    fecha         date null,
    nauseas       int  null,
    obesidad      int  null,
    estrenimiento int  null,
    gastritis     int  null,
    vomito        int  null,
    constraint salud_probelmas_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);

create table quimicas_sanguineas
(
    id_quimica    int auto_increment
        primary key,
    id_paciente   int   null,
    fecha         date  null,
    nitrogenourea float null,
    glucosa       float null,
    creatina      float null,
    acido_urico   float null,
    trigliceridos float null,
    colesterol    float null,
    constraint sanguinea_quimicas_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);



create table signos_vitales
(
    id_signos               int auto_increment
        primary key,
    cabello                 varchar(20) null,
    piel                    varchar(20) null,
    nails                   varchar(20) null,
    ojos                    varchar(20) null,
    presion_arterial        float       null,
    frecuencia_respiratoria float       null,
    frecuencia_cardiaca     float       null
);

create table consultas
(
    id_consulta int auto_increment
        primary key,
    id_paciente int  null,
    folio       int  null,
    fecha       date null,
    id_signos   int  null,
    constraint consulta_info_pacieperntes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente),
    constraint consultas_signos_vitales_id_signos_fk
        foreign key (id_signos) references signos_vitales (id_signos)
);

create table health_styles
(
    id_estilo      int auto_increment
        primary key,
    id_paciente    int         null,
    descripcion    varchar(20) null,
    frecuencia     int         null,
    cantidad       int         null,
    tiempo_consumo float       null,
    constraint estilo_vida_info_pacientes_id_paciente_fk
        foreign key (id_paciente) references patients_information (id_paciente)
);



class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :a_paterno
      t.string :a_materno
      t.string :sexo
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end



#para hacer joins entre as tablas
Paciente.joins(:persona)



class Nutriologo < ApplicationRecord
  #user_item ejemplo
  belongs_to :persona
  accepts_nested_attributes_for :persona

  validates :cedula_profesional, :login , presence: true


  has_secure_password
end
