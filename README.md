# legal

Rechtstexte der **rnati it solutions e.U.** (FN 510221 a, Handelsgericht Wien), wie sie auf
ihren Websites veröffentlicht sind, mit nachvollziehbarer Versionsgeschichte.

Stand: 2. November 2026 · aktuelle Fassung: `v2026.11.0`

## Welche Fassung gilt

Maßgeblich ist die Fassung auf der jeweiligen Website. Dieses Repository belegt, welche
Fassung wann galt und was sich geändert hat:

- `main` enthält nur freigegebene Fassungen.
- Jede Veröffentlichung bekommt einen Tag `vJJJJ.MM.N` (zum Beispiel `v2026.11.0`), ein
  Release und einen Eintrag in [CHANGELOG.md](CHANGELOG.md).
- Ein Link auf einen Tag zeigt dauerhaft genau diese Fassung, zum Beispiel
  `…/legal/blob/v2026.11.0/rnati.eu/datenschutz.md`.

## Aufbau

Unternehmensweite Texte liegen im Wurzelverzeichnis, Texte für eine Website in einem Ordner
mit deren Namen:

| Datei | Inhalt | Stand |
|---|---|---|
| [`agb.md`](agb.md) | Allgemeine Geschäftsbedingungen | gültig ab 2. November 2026 |
| `rnati.eu/impressum.md` | Impressum und Offenlegung für www.rnati.eu | folgt |
| `rnati.eu/datenschutz.md` | Datenschutzerklärung für www.rnati.eu | folgt |

Jede Datei beginnt mit den Angaben zur Fassung, die auch die Website anzeigt:

```yaml
---
titel: Datenschutzerklärung
stand: JJJJ-MM-TT         # letzte inhaltliche Änderung
gueltig_ab: JJJJ-MM-TT    # ab wann diese Fassung gilt
url: https://www.rnati.eu/datenschutz/
---
```

## Nutzungsrechte

Einsicht ist ausdrücklich erwünscht. Eine Erlaubnis zur Weiterverwendung ist damit nicht
verbunden; alle Rechte bleiben bei der rnati it solutions e.U. beziehungsweise bei den
Rechteinhabern der verwendeten Muster.

## Hinweise und Fehler

Bitte per E-Mail an impressum@mail.rnati.eu.
