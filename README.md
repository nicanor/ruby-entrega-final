## Opción 2: desarrollar una aplicación Rails para Gestión de Aulas

### Enunciado

La aplicación deberá:

   * Permitir la reserva de aulas por docentes, pero la aprobación de los
     pedidos la realizará un rol diferente que llamaremos Celador

   * Permitir al celador agregar nuevas aulas

   * Los usuarios deberán autenticarse usando sus cuentas de Google, Twitter y/o
     Facebook

   * La gestión de aulas (recursos), se realizará por medio de la [API
de recursos](https://github.com/TTPS-ruby/sandbox/tree/master/trabajo_final)

   * Para cada aula, un docente/celador podrá:
     * Listar horarios disponibles
     * Listar las reservas permitiendo filtrar por estado 
     * Reservar el aula
     * Cancelar las reservas propias
   * El celador podrá autorizar las reservas pendientes o cancelarlas
   * Recibir notificaciones por mail cuando:
     * Una reserva cambia el estado
     * Un tiempo X en horas configurable, antes que una reserva aprobada se
       cumpla


### Consideraciones

Sería conveniente agregar en la API un servicio de agregado y modificación de
recursos:

  * `POST /resources` crea un nuevo recurso
  * `PUT /resources/:id` actualiza los datos de un recurso
