# Compatibilidade enunciado (Anexo Ex. 1–10) × docs/cards

Fonte: `contexto-projeto-divide.md` linhas ~427–572.  
Última revisão: 2026-09-07 (correção Ex. 1 — 4 tipos).

| Ex. | Recurso / conceito (enunciado) | Doc / card | Status |
|---|---|---|---|
| 1 | class nomeado + `required`; **≥4 tipos** (String, int, double, DateTime) | DOM-01 / DIV-4 · `01-entidade-principal.md` | **OK** — campo `quantidade` (`int`, default 1) |
| 2 | `extends` + `super` + `@override` ficha; ≥2 attrs próprios | DOM-02 / DIV-5 | OK |
| 3 | `List<T>` + `adicionar`; composição no README | DOM-03 / DIV-7 | OK |
| 4 | `_` privado + `get` calculado; antes/depois + topo UI | DOM-04 / DIV-6 | OK |
| CLI | 4 blocos numerados | DOM-05 / DIV-8 | OK |
| 5 | Scaffold+AppBar; Column alignments; total no topo | LIST-01 / DIV-11 | OK |
| 6 | Container + BoxDecoration; sem color+decoration | LIST-02 / DIV-12 | OK |
| 7 | ListView.builder; 6 itens do agrupador | LIST-03 / DIV-13 | OK |
| 8 | Navigator.push + MaterialPageRoute; objeto no construtor; ≥2 campos extras | DETAIL-01 / DIV-14 | OK |
| 9 | TextFormField + TextEditingController; ≤3 campos; tryParse | CREATE-01 / DIV-15 | OK (`quantidade`/data/categoria = default) |
| 10 | StatefulWidget + setState + adicionar; 6→7 + total | STATE-01 / DIV-16 | OK |
| — | analyze sem error; rastreio README | QA-01 / DOC-01 | OK |

## Correção aplicada (Ex. 1)

Antes: tipos únicos = `String`, `double`, `DateTime` (**3**).  
Agora: + `quantidade` (`int`) → **4 tipos**, como o enunciado exige.
