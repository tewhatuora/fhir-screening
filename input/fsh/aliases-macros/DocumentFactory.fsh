RuleSet: DocIdentifier(id,assigner)
* use = #official
// * system = 
* value = "{id}"
* assigner insert OrganisationRefByName({assigner})

RuleSet: MakeTextNarrative(status,text)
* status = $NarrativeStatus#{status}
* div = "{text}"

RuleSet: ExampleDoc1PDFContent
* contentType = $MediaTypesCS#application/pdf
* data = "QW5kIG5vdyBJIGZvdW5kIG15c2VsZiBvbiBhIG5hcnJvdyBwYXRoIHdoaWNoIGZvbGxvd2VkIGEgc21hbGwgd2F0ZXJjb3Vyc2UuIEkKd2FzIHRvbyBnbGFkIHRvIGhhdmUgYW4gZWFzeSB0cmFjayBmb3IgbXkgZmxpZ2h0LCB0byBsYXkgaG9sZCBvZiB0aGUgZnVsbApzaWduaWZpY2FuY2Ugb2YgaXRzIGV4aXN0ZW5jZS4gVGhlIHRob3VnaHQsIGhvd2V2ZXIsIHNvb24gcHJlc2VudGVkIGl0c2VsZiB0bwptZSB0aGF0IEkgbXVzdCBiZSBpbiBhbiBpbmhhYml0ZWQgY291bnRyeSwgYnV0IG9uZSB3aGljaCB3YXMgeWV0IHVua25vd24uIFdoYXQsCnRoZW4sIHdhcyB0byBiZSBteSBmYXRlIGF0IHRoZSBoYW5kcyBvZiBpdHMgaW5oYWJpdGFudHM/IFNob3VsZCBJIGJlIHRha2VuIGFuZApvZmZlcmVkIHVwIGFzIGEgYnVybnQtb2ZmZXJpbmcgdG8gdGhvc2UgaGlkZW91cyBndWFyZGlhbnMgb2YgdGhlIHBhc3M/IEl0IG1pZ2h0CmJlIHNvLiBJIHNodWRkZXJlZCBhdCB0aGUgdGhvdWdodCwgeWV0IHRoZSBob3Jyb3JzIG9mIHNvbGl0dWRlIGhhZCBub3cgZmFpcmx5CnBvc3Nlc3NlZCBtZTsgYW5kIHNvIGRhemVkIHdhcyBJLCBhbmQgY2hpbGxlZCwgYW5kIHdvZWJlZ29uZSwgdGhhdCBJIGNvdWxkIGxheQpob2xkIG9mIG5vIGlkZWEgZmlybWx5IGFtaWQgdGhlIGNyb3dkIG9mIGZhbmNpZXMgdGhhdCBrZXB0IHdhbmRlcmluZyBpbiB1cG9uIG15CmJyYWluLg=="
* size = 712
* title = "Erewhon; Or, Over the Range (ch. VI, p1)"
* creation = "1872-06-09T00:00:00Z"

RuleSet: ScreeningSummaryExampleHTMLencoded
* contentType = $MediaTypesCS#text/html
* data = "PGRpdiB4bWxucz1cImh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWxcIj4KICA8ZGl2IHN0eWxlPVwiZGlzcGxheTogaW5saW5lLWJsb2NrOyBiYWNrZ3JvdW5kLWNvbG9yOiAjZDllMGU3OyBwYWRkaW5nOiA2cHg7IG1hcmdpbjogNHB4OyBib3JkZXI6IDFweCBzb2xpZCAjOGRhMWI0OwogICAgYm9yZGVyLXJhZGl1czogNXB4OyBsaW5lLWhlaWdodDogNjAlXCI+CiAgICA8cCBzdHlsZT1cIm1hcmdpbi1ib3R0b206IDBweFwiPkV4Y2VycHQgZnJvbSBFcmV3aG9uIGJ5IFNhbXVlbCBCdXRsZXIgKGNoYXB0ZXIgVkksIHBhcmFncmFwaCAxKSA8L3A+CiAgPC9kaXY+CiAgPGJsb2NrcXVvdGU+CiAgICA8cD4gQW5kIG5vdyBJIGZvdW5kIG15c2VsZiBvbiBhIG5hcnJvdyBwYXRoIHdoaWNoIGZvbGxvd2VkIGEgc21hbGwgd2F0ZXJjb3Vyc2UuIEkgd2FzIHRvbyBnbGFkIHRvIGhhdmUgYW4gZWFzeSB0cmFjawogICAgICBmb3IgbXkgZmxpZ2h0LCB0byBsYXkgaG9sZCBvZiB0aGUgZnVsbCBzaWduaWZpY2FuY2Ugb2YgaXRzIGV4aXN0ZW5jZS4gVGhlIHRob3VnaHQsIGhvd2V2ZXIsIHNvb24gcHJlc2VudGVkIGl0c2VsZgogICAgICB0byBtZSB0aGF0IEkgbXVzdCBiZSBpbiBhbiBpbmhhYml0ZWQgY291bnRyeSwgYnV0IG9uZSB3aGljaCB3YXMgeWV0IHVua25vd24uIFdoYXQsIHRoZW4sIHdhcyB0byBiZSBteSBmYXRlIGF0IHRoZQogICAgICBoYW5kcyBvZiBpdHMgaW5oYWJpdGFudHM/IFNob3VsZCBJIGJlIHRha2VuIGFuZCBvZmZlcmVkIHVwIGFzIGEgYnVybnQtb2ZmZXJpbmcgdG8gdGhvc2UgaGlkZW91cyBndWFyZGlhbnMgb2YgdGhlCiAgICAgIHBhc3M/IEl0IG1pZ2h0IGJlIHNvLiBJIHNodWRkZXJlZCBhdCB0aGUgdGhvdWdodCwgeWV0IHRoZSBob3Jyb3JzIG9mIHNvbGl0dWRlIGhhZCBub3cgZmFpcmx5IHBvc3Nlc3NlZCBtZTsgYW5kIHNvCiAgICAgIGRhemVkIHdhcyBJLCBhbmQgY2hpbGxlZCwgYW5kIHdvZWJlZ29uZSwgdGhhdCBJIGNvdWxkIGxheSBob2xkIG9mIG5vIGlkZWEgZmlybWx5IGFtaWQgdGhlIGNyb3dkIG9mIGZhbmNpZXMgdGhhdAogICAgICBrZXB0IHdhbmRlcmluZyBpbiB1cG9uIG15IGJyYWluLiA8L3A+CiAgPC9ibG9ja3F1b3RlPgo8L2Rpdj4="
* size = 1121
* title = "Erewhon; Or, Over the Range (ch. VI, p1)"
* creation = "1872-06-09T00:00:00Z"

RuleSet: ScreeningSummaryExampleHTML
* status = #additional
* div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
    border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Excerpt from Erewhon by Samuel Butler (chapter VI, paragraph 1) </p>
  </div>
  <blockquote>
    <p> And now I found myself on a narrow path which followed a small watercourse. I was too glad to have an easy track
      for my flight, to lay hold of the full significance of its existence. The thought, however, soon presented itself
      to me that I must be in an inhabited country, but one which was yet unknown. What, then, was to be my fate at the
      hands of its inhabitants? Should I be taken and offered up as a burnt-offering to those hideous guardians of the
      pass? It might be so. I shuddered at the thought, yet the horrors of solitude had now fairly possessed me; and so
      dazed was I, and chilled, and woebegone, that I could lay hold of no idea firmly amid the crowd of fancies that
      kept wandering in upon my brain. </p>
  </blockquote>
</div>"