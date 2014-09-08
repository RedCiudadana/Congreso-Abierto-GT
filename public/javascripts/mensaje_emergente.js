function mostraralerta()
{
	alert('Esta opcion estará disponible próximamente');
}

function hacerclic()
{
	var lista=document.querySelectorAll("#btn-enviar");
	lista[0].onclick=mostraralerta;
}

window.onload=hacerclic;
