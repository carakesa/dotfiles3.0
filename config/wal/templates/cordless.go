package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strings"

	"github.com/Bios-Marcel/cordless/tview"
	"github.com/gdamore/tcell"

	"github.com/Bios-Marcel/cordless/config"
)

func main() {
	theme := &config.Theme{
		Theme: &tview.Theme{
			PrimitiveBackgroundColor:    tcell.NewRGBColor(8,8,18),
			ContrastBackgroundColor:     tcell.NewRGBColor(87,87,106),
			MoreContrastBackgroundColor: tcell.NewRGBColor(193,193,195),
			BorderColor:                 tcell.NewRGBColor(193,193,195),
			BorderFocusColor:            tcell.NewRGBColor(43,45,71),
			TitleColor:                  tcell.NewRGBColor(36,36,51),
			GraphicsColor:               tcell.NewRGBColor(67,84,106),
			PrimaryTextColor:            tcell.NewRGBColor(36,36,60),
			SecondaryTextColor:          tcell.NewRGBColor(41,44,60),
			TertiaryTextColor:           tcell.NewRGBColor(52,49,75),
			InverseTextColor:            tcell.NewRGBColor(43,45,71),
			ContrastSecondaryTextColor:  tcell.NewRGBColor(52,49,75),
		},
		BlockedUserColor: tcell.NewRGBColor(28,35,52),
		InfoMessageColor: tcell.NewRGBColor(193,193,195),
		BotColor:         tcell.NewRGBColor(67,84,106),
		MessageTimeColor: tcell.NewRGBColor(193,193,195),
		LinkColor:        tcell.NewRGBColor(68,68,116),
		DefaultUserColor: tcell.NewRGBColor(43,45,71),
		AttentionColor:   tcell.NewRGBColor(77,68,123),
		ErrorColor:       tcell.NewRGBColor(71,62,106),
		RandomUserColors: []tcell.Color{
			tcell.NewRGBColor(28,35,52),
			tcell.NewRGBColor(36,36,51),
			tcell.NewRGBColor(36,36,60),
			tcell.NewRGBColor(41,44,60),
			tcell.NewRGBColor(43,45,71),
			tcell.NewRGBColor(52,49,75),
			tcell.NewRGBColor(193,193,195),
			tcell.NewRGBColor(87,87,106),
			tcell.NewRGBColor(71,62,106),
			tcell.NewRGBColor(68,68,116),
			tcell.NewRGBColor(77,68,123),
			tcell.NewRGBColor(67,84,106),
		},
	}

	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "    ")
	encoder.Encode(theme)
}

// Usage: fromHex("#FF0000")
func fromHex(hexString string) tcell.Color {
	trimmed := strings.TrimPrefix(strings.TrimSpace(hexString), "#")
	var r, g, b int32
	fmt.Sscanf(trimmed, "%02x%02x%02x", &r, &g, &b)
	return tcell.NewRGBColor(r, g, b)
}

// lilcomment
