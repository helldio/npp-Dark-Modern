type Components =
    static member Counter () =
        Component (fun ctx ->
            let state = ctx.useState 0
    // This is a comment
            DockPanel.create [
                DockPanel.children [
                    Button.create [
                        Button.onClick (fun _ -> state.Set(state.Current - 1))
                        Button.content "click to decrement"
                    ]
                    Button.create [
                        Button.onClick (fun _ -> state.Set(state.Current + 1))
                        Button.content "click to increment"
                    ]
                    TextBlock.create [
                        TextBlock.dock Dock.Top
                        TextBlock.text (string state.Current)
                    ]
                ]
            ]
        )