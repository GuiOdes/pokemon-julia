using GLVisualize, GeometryTypes, GLAbstraction


# Cria um triângulo
positions = Point3f0[(0, 0, 0), (1, 0, 0), (0, 1, 0)]
faces = Face{3}[(1, 2, 3)]
mesh = GLNormalMesh(Mesh(positions, faces))

# Cria uma janela
window = glscreen()

# Adiciona o triângulo à janela
_view(visualize(mesh), window)

# Renderiza a janela
renderloop(window)
