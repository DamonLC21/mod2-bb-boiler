const queryParams = new URLSearchParams(window.location.search)
const id = queryParams.get('id')

fetch(`http://localhost:3000/planets/${id}`)
  .then(response => response.json())
  .then(planet => {
    const div = document.createElement('div')

    div.className = 'planet-card'
    div.innerHTML = `
      <h1>${planet.name}</h1>
      <img src="${planet.image_url}" />
    `
    planet.people.forEach(person => {
      const p = document.createElement('p')

      p.textContent = person.name 

      div.append(p)
    })
    document.body.append(div)
  })