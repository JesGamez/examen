-- 1.Crear un directorio con datos completo de clientes considerando: Nombres y
-- Apellidos en una sola columna, teléfono, correo electrónico, dirección, distrito y país
-- respectivo. Ordenado de forma ascendente por el nombre de País.
select 
concat(customer.first_name,customer.last_name),
address.phone,
address.district,
address.address,
customer.email, 
country.country,
city.city
 from customer
 inner join address on address.address_id
 inner join city on city.city_id 
 inner join country on country.country_id 
 order by country.country asc
 ;

-- 2. Visualizar el título de la película, nombre y apellido del actor principal en una sola
-- columna, descripción e idioma de la película. Ordenado en forma ascendente por el
-- título de la película.

select 
concat(actor.first_name , actor.last_name),
film.title
from film_actor 
inner join actor on actor.actor_id = film_actor.actor_id
inner join film on film.film_id = film_actor.film_id
;


-- 3. Obtener el código de renta así como los datos del empleado y cliente, la película que
-- alquiló y lo que pagó respectivamente por ese alquiler. Los datos deben ser
-- ordenados de acuerdo al empleado.
select 
rental.rental_id,
staff.first_name,
staff.last_name,
customer.customer_id,
customer.first_name,
customer.last_name,
payment.amount,
film.title

from rental 
inner join staff on staff.staff_id = rental.staff_id
inner join store on store.store_id = staff.store_id
inner join customer on customer.store_id = store.store_id
inner join payment on payment.customer_id = customer.customer_id
inner join staff lk on staff.store_id = store.store_id
inner join inventory on inventory.store_id = store.store_id
inner join film on film.film_id = inventory.film_id
;


-- 4. Obtener los datos del empleado, a cuántos clientes ha atendido y cuánto ha
-- recaudado por los alquileres que realizó.
select 
staff.first_name,
staff.last_name,
store.store_id,
customer.store_id  
from staff
inner join store on store.store_id
inner join customer on customer.store_id ;


-- 5. Obtener las categorías cuya cantidad de películas sea igual o mayor que 300.
-- Ordenado de forma descendente por cantidad de películas.
select * from category;
