from libqtile import layout

class Layouts:
    def __init__(self):
        self.default = {"border_width": 2,
                        "margin": 4,
                        "border_focus": "#668bd7",
                        "border_normal": "1D2330" }

    def init_layouts(self):
        return [layout.Max(),
                layout.MonadTall(**self.default),
                layout.floating.Floating(**self.default) ]
                # layout.Stack(num_stacks=2),
                # Try more layouts by unleashing below layouts.
                # layout.Bsp(),
                # layout.Columns(),
                # layout.Matrix(),
                # layout.MonadWide(**self.default),
                # layout.RatioTile(),
                # layout.Tile(),
                # layout.VerticalTile(),
                # layout.Zoomy(),