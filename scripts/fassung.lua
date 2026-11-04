-- Setzt den Seitentitel und hängt die Angaben zur Fassung an das Dokument an.
local monate = { "Jänner", "Februar", "März", "April", "Mai", "Juni", "Juli", "August",
  "September", "Oktober", "November", "Dezember" }

local function datum(wert)
  local j, m, t = pandoc.utils.stringify(wert):match("(%d+)-(%d+)-(%d+)")
  return tonumber(t) .. ". " .. monate[tonumber(m)] .. " " .. j
end

function Pandoc(doc)
  local m = doc.meta
  m.pagetitle = pandoc.utils.stringify(m.titel)
  local zeile = "Fassung " .. pandoc.utils.stringify(m.fassung)
    .. " · Stand " .. datum(m.stand)
    .. " · gültig ab " .. datum(m.gueltig_ab)
  local quelle = pandoc.utils.stringify(m.quelle)
  doc.blocks:insert(pandoc.HorizontalRule())
  doc.blocks:insert(pandoc.Para({ pandoc.Str(zeile) }))
  doc.blocks:insert(pandoc.Para({ pandoc.Link(quelle, quelle) }))
  return doc
end
