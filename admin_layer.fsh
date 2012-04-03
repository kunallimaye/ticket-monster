@/* Forge Script - Generates the administration view */;

@/* Clear the screen */;
clear;
    
@/* This means less typing. If a script is automated, or is not meant to be interactive, use this command */; 
set ACCEPT_DEFAULTS true;

@/* Enable scaffolding from entities */;

scaffold setup;

@/* Enable RichFaces for wizzy widgets from entities */;

richfaces setup;


@/* Scaffold CRUD views for the entities that an admin would start drilling down into the data model from */;

scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Venue;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.TicketCategory;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.TicketPriceCategory;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Show;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.EventCategory;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Event;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Section;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Show;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.Performance;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.EventCategory;
scaffold from-entity org.jboss.jdf.example.ticketmonster.model.MediaItem;


@/* Deploy this to JBoss AS 7 to see the result */;
build clean package jboss-as:deploy;

echo Examine the app so far at http://localhost:8080/ticket-monster;

wait;

echo Add "<tm:image media="#{mediaManager.getPath(eventBean.event.picture)}" />" to "scaffold/event/view.xhtml" and  "scaffold/venue/view.xhtml" instead of the output of the picture