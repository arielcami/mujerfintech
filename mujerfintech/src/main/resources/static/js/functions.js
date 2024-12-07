let currentPage = 0;
const pageSize = 12;

// Función para cargar las noticias y la paginación
function cargarNoticias(page = 0) {
	axios.get(`/api/noticias/pagina?page=${page}&size=${pageSize}`)
		.then(response => {
			const noticiasContainer = document.getElementById("noticias");
			const paginacionArribaContainer = document.getElementById("paginacion-arriba");
			const paginacionAbajoContainer = document.getElementById("paginacion-abajo");
			const { noticias, totalPages, currentPage } = response.data;

			// Limpiar contenedor de noticias y paginación
			noticiasContainer.innerHTML = '';
			paginacionArribaContainer.innerHTML = '';
			paginacionAbajoContainer.innerHTML = '';

			// Crear el contenedor de noticias (noticias-row)
			const noticiasRow = document.createElement("div");
			noticiasRow.classList.add("noticias-row");

			// Mostrar noticias
			noticias.forEach(noticia => {
				const noticiaDiv = document.createElement("div");
				noticiaDiv.classList.add("noticia");
				noticiaDiv.innerHTML = `
                    <h5>${noticia.titulo}</h5>
                    <img src="${noticia.imagenUrl || 'https://via.placeholder.com/320x180'}" alt="${noticia.titulo}" />
                    <p>Autor: ${noticia.autor || 'Autor no disponible'}</p>
                    <p class="fecha">Fecha de publicación: ${noticia.fechaPublicacion || 'No disponible'}</p>
                    <a href="${noticia.urlNoticia}">Leer más</a>
                `;
				noticiasRow.appendChild(noticiaDiv);
			});

			// Agregar noticias a contenedor
			noticiasContainer.appendChild(noticiasRow);

			// Mostrar paginación arriba
			for (let i = 0; i < totalPages; i++) {
				const button = document.createElement("button");
				button.textContent = i + 1;
				button.onclick = () => cargarNoticias(i);
				if (i === currentPage) {
					button.disabled = true; // Deshabilitar el botón de la página actual
				}
				paginacionArribaContainer.appendChild(button);
			}

			// Mostrar paginación abajo
			for (let i = 0; i < totalPages; i++) {
				const button = document.createElement("button");
				button.textContent = i + 1;
				button.onclick = () => cargarNoticias(i);
				if (i === currentPage) {
					button.disabled = true; // Deshabilitar el botón de la página actual
				}
				paginacionAbajoContainer.appendChild(button);
			}
		})
		.catch(error => {
			console.error("Error al cargar las noticias:", error);
			Swal.fire({
				title: 'Error',
				text: "Ocurrió un error al intentar cargar las noticias.",
				icon: 'error',
				confirmButtonText: 'Aceptar'
			});
		});
}

// Funcionalidad para el botón de buscar más noticias (scraping)
document.getElementById("buscarMasNoticias").addEventListener("click", function() {
	const boton = document.getElementById("buscarMasNoticias");
	boton.disabled = true;
	boton.innerText = "Cargando...";

	axios.post("/api/noticias/scrapear")
		.then(response => {
			Swal.fire({
				title: 'Éxito',
				text: response.data,
				icon: 'success',
				confirmButtonText: 'Aceptar'
			}).then(() => {
				cargarNoticias(0); // Recargar las noticias desde la primera página
				boton.disabled = false;
				boton.innerText = "Buscar más noticias";
			});
		})
		.catch(error => {
			console.error("Error durante el scraping:", error);
			Swal.fire({
				title: 'Error',
				text: "Ocurrió un error al intentar buscar más noticias.",
				icon: 'error',
				confirmButtonText: 'Aceptar'
			});
			boton.disabled = false;
			boton.innerText = "Buscar más noticias";
		});
});

// Cargar noticias al inicio
window.onload = function() {
	cargarNoticias();
};
