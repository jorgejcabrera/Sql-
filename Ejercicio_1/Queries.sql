
 /* materias que registren la cantidad maxima de examenes rendidos */
select m.codigo_de_materia
from ejercicio1.materias m,ejercicio1.examenes e
where m.codigo_de_materia = e.codigo_materia
group by m.codigo_de_materia
having count(*) >= ALL ( select count(*)
                   from ejercicio1.examenes e1
                   group by e1.codigo_materia);
 
/* alumnos que hayan aprobado analisis matematico pero adeuden fisica II */
select * 
from ejercicio1.alumnos a1
where a1.matricula in (select a2.matricula
                       from ejercicio1.alumnos a2, ejercicio1.examenes ex, ejercicio1.materias ma
                       where a2.matricula = ex.matricula
                       and ex.nota >= 4
                       and ex.codigo_materia = ma.codigo_de_materia
                       and ma.nombre_mat = 'Analisis matematico'
                       
                       INTERSECT
                       
                       select a3.matricula
                       from ejercicio1.alumnos a3, ejercicio1.examenes ex1, ejercicio1.materias ma1
                       where (a3.matricula = ex1.matricula
                       and ex1.nota <= 4
                       and ex1.codigo_materia = ma1.codigo_de_materia
                       and ma1.nombre_mat = 'Fisica II')
                       or not exists (select 'no rindio analisis matematico'
                                      from ejercicio1.examenes ex2, ejercicio1.materias ma2
                                      where a3.matricula = ex2.matricula
                                      and ex2.codigo_materia = ma2.codigo_de_materia
                                      and ma2.nombre_mat = 'Fisica II')
                      );
                      

