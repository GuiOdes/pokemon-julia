using Gtk

function createJanela()
    # Crie uma nova janela
    win = GtkWindow("Minha Janela", 400, 200)

    # Crie uma etiqueta (rótulo) com algum texto
    label = GtkLabel("Olá, mundo!")

    # Adicione a etiqueta à janela
    push!(win, label)

    # Conecte um manipulador para fechar a janela quando o botão de fechar é clicado
    signal_connect(win, :destroy) do widget
        Gtk.main_quit()
    end

    # Exiba a janela
    showall(win)
end

createJanela()

# Inicie o loop principal da GUI
Gtk.main()
