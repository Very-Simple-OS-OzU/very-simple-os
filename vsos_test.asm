0: JMP 3 20 // Goto main -- Jump to main
//$REGISTERS_SECTION
1: 962 // Address of $BASE_main -- SP
2: 962 // Address of $BASE_main -- BP
3: 0 // Zero
4: 1 // One
5: -1 // Negative one
6: 1.00000 // Float One
7: -1.00000 // Negative Float One
8: 0 // VSCPU Special 1
9: 0 // VSCPU Special 2
10: 0 // VSCPU Special 3
11: 0 // VSCPU Special 4
12: 0 // VSCPU Special 5
13: 0 // VSCPU Special 6
14: 0 // GP Reg 1
15: 0 // GP Reg 2
16: 0 // GP Reg 3
17: 0 // GP Reg 4
18: 0 // GP Reg 5
19: 0 // GP Reg 6
//$TEXT_SECTION
//main
20: CPIr 1 949 // Push int literal 1
21: ADDi 1 1
22: ADD 1 5
23: CPI 14 1 // Pop REG_1
24: CPI 15 14
25: CPIr 1 15 // Push REG_2
26: ADDi 1 1
27: CPIr 1 949 // Push int literal 1
28: ADDi 1 1
29: ADD 1 5
30: CPI 15 1 // Pop REG_2
31: ADD 1 5
32: CPI 14 1 // Pop REG_1
33: ADD 14 15
34: CPIr 1 14 // Push REG_1
35: ADDi 1 1
36: CPIr 1 950 // Push int literal 40
37: ADDi 1 1
38: ADDi 1 120
39: CPIr 1 951 // Push int literal 0
40: ADDi 1 1
41: CPIr 1 949 // Push int literal 1
42: ADDi 1 1
43: CP 14 2 // Retrieve local var progLocation's address.
44: ADDi 14 123
45: CPI 15 14
46: CPIr 1 15 // Push REG_2
47: ADDi 1 1
48: CPIr 1 952 // Push int literal 2
49: ADDi 1 1
50: ADD 1 5
51: CPI 15 1 // Pop REG_2
52: ADD 1 5
53: CPI 14 1 // Pop REG_1
54: ADD 14 15
55: CPIr 1 14 // Push REG_1
56: ADDi 1 1
57: CPIr 1 953 // Push int literal 11
58: ADDi 1 1
59: ADD 1 5
60: CPI 14 1 // Pop REG_1
61: ADD 1 5
62: CPI 15 1 // Pop REG_2
63: ADDi 1 1
64: CPIr 14 15
65: ADD 1 5
66: CPIr 1 954 // Push int literal 12
67: ADDi 1 1
68: ADD 1 5
69: CPI 14 1 // Pop REG_1
70: CPI 15 14
71: CPIr 1 15 // Push REG_2
72: ADDi 1 1
73: CP 14 2 // Retrieve local var end1's address.
74: ADDi 14 124
75: CPI 15 14
76: CPIr 1 15 // Push REG_2
77: ADDi 1 1
78: CPIr 1 949 // Push int literal 1
79: ADDi 1 1
80: ADD 1 5
81: CPI 15 1 // Pop REG_2
82: ADD 1 5
83: CPI 14 1 // Pop REG_1
84: ADD 14 15
85: CPIr 1 14 // Push REG_1
86: ADDi 1 1
87: CPIr 1 953 // Push int literal 11
88: ADDi 1 1
89: ADD 1 5
90: CPI 14 1 // Pop REG_1
91: ADD 1 5
92: CPI 15 1 // Pop REG_2
93: ADDi 1 1
94: CPIr 14 15
95: ADD 1 5
96: CPIr 1 954 // Push int literal 12
97: ADDi 1 1
98: ADD 1 5
99: CPI 14 1 // Pop REG_1
100: CPI 15 14
101: CPIr 1 15 // Push REG_2
102: ADDi 1 1
//whileLabelTest_0
103: CP 14 2 // Retrieve local var check's address.
104: ADDi 14 125
105: CPI 15 14
106: CPIr 1 15 // Push REG_2
107: ADDi 1 1
108: CPIr 1 951 // Push int literal 0
109: ADDi 1 1
110: ADD 1 5
111: CPI 15 1 // Pop REG_2
112: ADD 1 5
113: CPI 14 1 // Pop REG_1
114: MUL 14 5 // Sign change int
115: ADD 14 15
116: CPi 15 121
117: BZ 15 14
118: CPIr 1 4 // Push REG_ONE
119: ADDi 1 1
120: JMP 3 123 // Goto labelEnd_3 --
//labelElse_2
121: CPIr 1 3 // Push REG_ZERO
122: ADDi 1 1
//labelEnd_3
123: ADD 1 5
124: CPI 14 1 // Pop REG_1
125: CPi 15 435
126: BZ 15 14
127: CPIr 1 955 // Push int literal 100
128: ADDi 1 1
129: CPIr 1 953 // Push int literal 11
130: ADDi 1 1
131: ADD 1 5
132: CPI 14 1 // Pop REG_1
133: ADD 1 5
134: CPI 15 1 // Pop REG_2
135: ADDi 1 1
136: CPIr 14 15
137: ADD 1 5
138: CP 14 2 // Retrieve local var progLocation's address.
139: ADDi 14 123
140: CPI 15 14
141: CPIr 1 15 // Push REG_2
142: ADDi 1 1
143: CPIr 1 953 // Push int literal 11
144: ADDi 1 1
145: ADD 1 5
146: CPI 14 1 // Pop REG_1
147: ADD 1 5
148: CPI 15 1 // Pop REG_2
149: ADDi 1 1
150: CPIr 14 15
151: ADD 1 5
152: CPIr 1 954 // Push int literal 12
153: ADDi 1 1
154: ADD 1 5
155: CPI 14 1 // Pop REG_1
156: CPI 15 14
157: CPIr 1 15 // Push REG_2
158: ADDi 1 1
159: CP 14 2 // Retrieve local var name's address.
160: ADDi 14 126
161: CPI 15 14
162: CPIr 1 15 // Push REG_2
163: ADDi 1 1
164: CP 14 2 // Retrieve local var progInfo's address.
165: ADDi 14 2
166: CPIr 1 14 // Push REG_1
167: ADDi 1 1
168: CP 14 2 // Retrieve local var progCount's address.
169: ADDi 14 122
170: CPI 15 14
171: CPIr 1 15 // Push REG_2
172: ADDi 1 1
173: CPIr 1 956 // Push int literal 3
174: ADDi 1 1
175: ADD 1 5
176: CPI 15 1 // Pop REG_2
177: ADD 1 5
178: CPI 14 1 // Pop REG_1
179: MUL 14 15
180: CPIr 1 14 // Push REG_1
181: ADDi 1 1
182: CPIr 1 951 // Push int literal 0
183: ADDi 1 1
184: ADD 1 5
185: CPI 15 1 // Pop REG_2
186: ADD 1 5
187: CPI 14 1 // Pop REG_1
188: ADD 14 15
189: CPIr 1 14 // Push REG_1
190: ADDi 1 1
191: ADD 1 5
192: CPI 14 1 // Pop REG_1
193: ADD 1 5
194: CPI 15 1 // Pop REG_2
195: ADD 14 15 // Array subscript
196: ADD 1 5
197: CPI 15 1 // Pop REG_2
198: ADDi 1 1
199: CPIr 14 15
200: ADD 1 5
201: CP 14 2 // Retrieve local var progLocation's address.
202: ADDi 14 123
203: CPI 15 14
204: CPIr 1 15 // Push REG_2
205: ADDi 1 1
206: CPIr 1 949 // Push int literal 1
207: ADDi 1 1
208: ADD 1 5
209: CPI 15 1 // Pop REG_2
210: ADD 1 5
211: CPI 14 1 // Pop REG_1
212: ADD 14 15
213: CPIr 1 14 // Push REG_1
214: ADDi 1 1
215: CPIr 1 953 // Push int literal 11
216: ADDi 1 1
217: ADD 1 5
218: CPI 14 1 // Pop REG_1
219: ADD 1 5
220: CPI 15 1 // Pop REG_2
221: ADDi 1 1
222: CPIr 14 15
223: ADD 1 5
224: CPIr 1 954 // Push int literal 12
225: ADDi 1 1
226: ADD 1 5
227: CPI 14 1 // Pop REG_1
228: CPI 15 14
229: CPIr 1 15 // Push REG_2
230: ADDi 1 1
231: CP 14 2 // Retrieve local var start's address.
232: ADDi 14 127
233: CPI 15 14
234: CPIr 1 15 // Push REG_2
235: ADDi 1 1
236: CP 14 2 // Retrieve local var progInfo's address.
237: ADDi 14 2
238: CPIr 1 14 // Push REG_1
239: ADDi 1 1
240: CP 14 2 // Retrieve local var progCount's address.
241: ADDi 14 122
242: CPI 15 14
243: CPIr 1 15 // Push REG_2
244: ADDi 1 1
245: CPIr 1 956 // Push int literal 3
246: ADDi 1 1
247: ADD 1 5
248: CPI 15 1 // Pop REG_2
249: ADD 1 5
250: CPI 14 1 // Pop REG_1
251: MUL 14 15
252: CPIr 1 14 // Push REG_1
253: ADDi 1 1
254: CPIr 1 949 // Push int literal 1
255: ADDi 1 1
256: ADD 1 5
257: CPI 15 1 // Pop REG_2
258: ADD 1 5
259: CPI 14 1 // Pop REG_1
260: ADD 14 15
261: CPIr 1 14 // Push REG_1
262: ADDi 1 1
263: ADD 1 5
264: CPI 14 1 // Pop REG_1
265: ADD 1 5
266: CPI 15 1 // Pop REG_2
267: ADD 14 15 // Array subscript
268: ADD 1 5
269: CPI 15 1 // Pop REG_2
270: ADDi 1 1
271: CPIr 14 15
272: ADD 1 5
273: CP 14 2 // Retrieve local var progLocation's address.
274: ADDi 14 123
275: CPI 15 14
276: CPIr 1 15 // Push REG_2
277: ADDi 1 1
278: CPIr 1 952 // Push int literal 2
279: ADDi 1 1
280: ADD 1 5
281: CPI 15 1 // Pop REG_2
282: ADD 1 5
283: CPI 14 1 // Pop REG_1
284: ADD 14 15
285: CPIr 1 14 // Push REG_1
286: ADDi 1 1
287: CPIr 1 953 // Push int literal 11
288: ADDi 1 1
289: ADD 1 5
290: CPI 14 1 // Pop REG_1
291: ADD 1 5
292: CPI 15 1 // Pop REG_2
293: ADDi 1 1
294: CPIr 14 15
295: ADD 1 5
296: CPIr 1 954 // Push int literal 12
297: ADDi 1 1
298: ADD 1 5
299: CPI 14 1 // Pop REG_1
300: CPI 15 14
301: CPIr 1 15 // Push REG_2
302: ADDi 1 1
303: CP 14 2 // Retrieve local var end's address.
304: ADDi 14 128
305: CPI 15 14
306: CPIr 1 15 // Push REG_2
307: ADDi 1 1
308: CP 14 2 // Retrieve local var progInfo's address.
309: ADDi 14 2
310: CPIr 1 14 // Push REG_1
311: ADDi 1 1
312: CP 14 2 // Retrieve local var progCount's address.
313: ADDi 14 122
314: CPI 15 14
315: CPIr 1 15 // Push REG_2
316: ADDi 1 1
317: CPIr 1 956 // Push int literal 3
318: ADDi 1 1
319: ADD 1 5
320: CPI 15 1 // Pop REG_2
321: ADD 1 5
322: CPI 14 1 // Pop REG_1
323: MUL 14 15
324: CPIr 1 14 // Push REG_1
325: ADDi 1 1
326: CPIr 1 952 // Push int literal 2
327: ADDi 1 1
328: ADD 1 5
329: CPI 15 1 // Pop REG_2
330: ADD 1 5
331: CPI 14 1 // Pop REG_1
332: ADD 14 15
333: CPIr 1 14 // Push REG_1
334: ADDi 1 1
335: ADD 1 5
336: CPI 14 1 // Pop REG_1
337: ADD 1 5
338: CPI 15 1 // Pop REG_2
339: ADD 14 15 // Array subscript
340: ADD 1 5
341: CPI 15 1 // Pop REG_2
342: ADDi 1 1
343: CPIr 14 15
344: ADD 1 5
345: CP 14 2 // Retrieve local var end's address.
346: ADDi 14 128
347: CPI 15 14
348: CPIr 1 15 // Push REG_2
349: ADDi 1 1
350: CPIr 1 949 // Push int literal 1
351: ADDi 1 1
352: ADD 1 5
353: CPI 15 1 // Pop REG_2
354: ADD 1 5
355: CPI 14 1 // Pop REG_1
356: ADD 14 15
357: CPIr 1 14 // Push REG_1
358: ADDi 1 1
359: CPIr 1 953 // Push int literal 11
360: ADDi 1 1
361: ADD 1 5
362: CPI 14 1 // Pop REG_1
363: ADD 1 5
364: CPI 15 1 // Pop REG_2
365: ADDi 1 1
366: CPIr 14 15
367: ADD 1 5
368: CPIr 1 954 // Push int literal 12
369: ADDi 1 1
370: ADD 1 5
371: CPI 14 1 // Pop REG_1
372: CPI 15 14
373: CPIr 1 15 // Push REG_2
374: ADDi 1 1
375: CP 14 2 // Retrieve local var end's address.
376: ADDi 14 128
377: CPI 15 14
378: CPIr 1 15 // Push REG_2
379: ADDi 1 1
380: CPIr 1 951 // Push int literal 0
381: ADDi 1 1
382: ADD 1 5
383: CPI 15 1 // Pop REG_2
384: ADD 1 5
385: CPI 14 1 // Pop REG_1
386: MUL 14 5 // Sign change int
387: ADD 14 15
388: CPi 15 393
389: BZ 15 14
390: CPIr 1 3 // Push REG_ZERO
391: ADDi 1 1
392: JMP 3 395 // Goto labelEnd_7 --
//labelElse_6
393: CPIr 1 4 // Push REG_ONE
394: ADDi 1 1
//labelEnd_7
395: ADD 1 5
396: CPI 14 1 // Pop REG_1
397: CPi 15 401
398: BZ 15 14
399: JMP 3 435 // Goto whileLabelEnd_1 --
400: JMP 3 401 // Goto ifLabelEnd_5 --
//ifLabelElse_4
//ifLabelEnd_5
401: CP 14 2 // Retrieve local var end's address.
402: ADDi 14 128
403: CPI 15 14
404: CPIr 1 15 // Push REG_2
405: ADDi 1 1
406: CPIr 1 949 // Push int literal 1
407: ADDi 1 1
408: ADD 1 5
409: CPI 15 1 // Pop REG_2
410: ADD 1 5
411: CPI 14 1 // Pop REG_1
412: ADD 14 15
413: CPIr 1 14 // Push REG_1
414: ADDi 1 1
415: CP 14 2 // Retrieve local var progLocation's address.
416: ADDi 14 123
417: ADD 1 5
418: CPI 15 1 // Pop REG_2
419: ADDi 1 1
420: CPIr 14 15
421: ADD 1 5
422: CP 14 2 // Retrieve local var progCount's address.
423: ADDi 14 122
424: CPI 15 14 // Original value will be moved to REG_2
425: CPIr 1 15 // Push REG_2
426: ADDi 1 1
427: ADDi 15 1
428: CPIr 14 15
429: ADD 1 5
430: ADD 1 5
431: ADD 1 5
432: ADD 1 5
433: ADD 1 5
434: JMP 3 103 // Goto whileLabelTest_0 --
//whileLabelEnd_1
//whileLabelTest_8
435: CPIr 1 949 // Push int literal 1
436: ADDi 1 1
437: ADD 1 5
438: CPI 14 1 // Pop REG_1
439: CPi 15 820
440: BZ 15 14
441: CPIr 1 951 // Push int literal 0
442: ADDi 1 1
443: CPIr 1 953 // Push int literal 11
444: ADDi 1 1
445: ADD 1 5
446: CPI 14 1 // Pop REG_1
447: ADD 1 5
448: CPI 15 1 // Pop REG_2
449: ADDi 1 1
450: CPIr 14 15
451: ADD 1 5
452: CPIr 1 954 // Push int literal 12
453: ADDi 1 1
454: ADD 1 5
455: CPI 14 1 // Pop REG_1
456: CPI 15 14
457: CPIr 1 15 // Push REG_2
458: ADDi 1 1
459: CP 14 2 // Retrieve local var programCheck's address.
460: ADDi 14 126
461: CPI 15 14
462: CPIr 1 15 // Push REG_2
463: ADDi 1 1
464: CPIr 1 951 // Push int literal 0
465: ADDi 1 1
466: ADD 1 5
467: CPI 15 1 // Pop REG_2
468: ADD 1 5
469: CPI 14 1 // Pop REG_1
470: MUL 14 5 // Sign change int
471: ADD 14 15
472: CPi 15 477
473: BZ 15 14
474: CPIr 1 4 // Push REG_ONE
475: ADDi 1 1
476: JMP 3 479 // Goto labelEnd_13 --
//labelElse_12
477: CPIr 1 3 // Push REG_ZERO
478: ADDi 1 1
//labelEnd_13
479: ADD 1 5
480: CPI 14 1 // Pop REG_1
481: CPi 15 818
482: BZ 15 14
483: CPIr 1 951 // Push int literal 0
484: ADDi 1 1
485: CPIr 1 951 // Push int literal 0
486: ADDi 1 1
//forLabelCond_14
487: CP 14 2 // Retrieve local var i's address.
488: ADDi 14 128
489: CPI 15 14
490: CPIr 1 15 // Push REG_2
491: ADDi 1 1
492: CP 14 2 // Retrieve local var numberOfProgs's address.
493: ADDi 14 1
494: CPI 15 14
495: CPIr 1 15 // Push REG_2
496: ADDi 1 1
497: ADD 1 5
498: CPI 15 1 // Pop REG_2
499: ADD 1 5
500: CPI 14 1 // Pop REG_1
501: LT 14 15
502: CPIr 1 14 // Push REG_1
503: ADDi 1 1
504: ADD 1 5
505: CPI 14 1 // Pop REG_1
506: CPi 15 764
507: BZ 15 14
508: CP 14 2 // Retrieve local var progInfo's address.
509: ADDi 14 2
510: CPIr 1 14 // Push REG_1
511: ADDi 1 1
512: CPIr 1 949 // Push int literal 1
513: ADDi 1 1
514: CP 14 2 // Retrieve local var i's address.
515: ADDi 14 128
516: CPI 15 14
517: CPIr 1 15 // Push REG_2
518: ADDi 1 1
519: CPIr 1 956 // Push int literal 3
520: ADDi 1 1
521: ADD 1 5
522: CPI 15 1 // Pop REG_2
523: ADD 1 5
524: CPI 14 1 // Pop REG_1
525: MUL 14 15
526: CPIr 1 14 // Push REG_1
527: ADDi 1 1
528: ADD 1 5
529: CPI 15 1 // Pop REG_2
530: ADD 1 5
531: CPI 14 1 // Pop REG_1
532: ADD 14 15
533: CPIr 1 14 // Push REG_1
534: ADDi 1 1
535: ADD 1 5
536: CPI 14 1 // Pop REG_1
537: ADD 1 5
538: CPI 15 1 // Pop REG_2
539: ADD 14 15 // Array subscript
540: CPI 15 14
541: CPIr 1 15 // Push REG_2
542: ADDi 1 1
543: CP 14 2 // Retrieve local var programCheck's address.
544: ADDi 14 126
545: CPI 15 14
546: CPIr 1 15 // Push REG_2
547: ADDi 1 1
548: CP 14 2 // Retrieve local var programName's address.
549: ADDi 14 129
550: CPI 15 14
551: CPIr 1 15 // Push REG_2
552: ADDi 1 1
553: ADD 1 5
554: CPI 15 1 // Pop REG_2
555: ADD 1 5
556: CPI 14 1 // Pop REG_1
557: MUL 14 5 // Sign change int
558: ADD 14 15
559: CPi 15 564
560: BZ 15 14
561: CPIr 1 3 // Push REG_ZERO
562: ADDi 1 1
563: JMP 3 566 // Goto labelEnd_20 --
//labelElse_19
564: CPIr 1 4 // Push REG_ONE
565: ADDi 1 1
//labelEnd_20
566: ADD 1 5
567: CPI 14 1 // Pop REG_1
568: CPi 15 754
569: BZ 15 14
570: CP 14 2 // Retrieve local var progInfo's address.
571: ADDi 14 2
572: CPIr 1 14 // Push REG_1
573: ADDi 1 1
574: CPIr 1 952 // Push int literal 2
575: ADDi 1 1
576: CP 14 2 // Retrieve local var i's address.
577: ADDi 14 128
578: CPI 15 14
579: CPIr 1 15 // Push REG_2
580: ADDi 1 1
581: CPIr 1 956 // Push int literal 3
582: ADDi 1 1
583: ADD 1 5
584: CPI 15 1 // Pop REG_2
585: ADD 1 5
586: CPI 14 1 // Pop REG_1
587: MUL 14 15
588: CPIr 1 14 // Push REG_1
589: ADDi 1 1
590: ADD 1 5
591: CPI 15 1 // Pop REG_2
592: ADD 1 5
593: CPI 14 1 // Pop REG_1
594: ADD 14 15
595: CPIr 1 14 // Push REG_1
596: ADDi 1 1
597: ADD 1 5
598: CPI 14 1 // Pop REG_1
599: ADD 1 5
600: CPI 15 1 // Pop REG_2
601: ADD 14 15 // Array subscript
602: CPI 15 14
603: CPIr 1 15 // Push REG_2
604: ADDi 1 1
605: CP 14 2 // Retrieve local var progInfo's address.
606: ADDi 14 2
607: CPIr 1 14 // Push REG_1
608: ADDi 1 1
609: CPIr 1 956 // Push int literal 3
610: ADDi 1 1
611: CP 14 2 // Retrieve local var i's address.
612: ADDi 14 128
613: CPI 15 14
614: CPIr 1 15 // Push REG_2
615: ADDi 1 1
616: CPIr 1 956 // Push int literal 3
617: ADDi 1 1
618: ADD 1 5
619: CPI 15 1 // Pop REG_2
620: ADD 1 5
621: CPI 14 1 // Pop REG_1
622: MUL 14 15
623: CPIr 1 14 // Push REG_1
624: ADDi 1 1
625: ADD 1 5
626: CPI 15 1 // Pop REG_2
627: ADD 1 5
628: CPI 14 1 // Pop REG_1
629: ADD 14 15
630: CPIr 1 14 // Push REG_1
631: ADDi 1 1
632: ADD 1 5
633: CPI 14 1 // Pop REG_1
634: ADD 1 5
635: CPI 15 1 // Pop REG_2
636: ADD 14 15 // Array subscript
637: CPI 15 14
638: CPIr 1 15 // Push REG_2
639: ADDi 1 1
640: CP 14 2 // Retrieve local var programStart's address.
641: ADDi 14 130
642: CPI 15 14
643: CPIr 1 15 // Push REG_2
644: ADDi 1 1
//forLabelCond_21
645: CP 14 2 // Retrieve local var j's address.
646: ADDi 14 132
647: CPI 15 14
648: CPIr 1 15 // Push REG_2
649: ADDi 1 1
650: CP 14 2 // Retrieve local var programEnd's address.
651: ADDi 14 131
652: CPI 15 14
653: CPIr 1 15 // Push REG_2
654: ADDi 1 1
655: ADD 1 5
656: CPI 15 1 // Pop REG_2
657: ADD 1 5
658: CPI 14 1 // Pop REG_1
659: LT 14 15
660: CPIr 1 14 // Push REG_1
661: ADDi 1 1
662: ADD 1 5
663: CPI 14 1 // Pop REG_1
664: CPi 15 739
665: BZ 15 14
666: CP 14 2 // Retrieve local var programStart's address.
667: ADDi 14 130
668: CPI 15 14
669: CPIr 1 15 // Push REG_2
670: ADDi 1 1
671: CP 14 2 // Retrieve local var pc's address.
672: ADDi 14 127
673: CPI 15 14
674: CPIr 1 15 // Push REG_2
675: ADDi 1 1
676: ADD 1 5
677: CPI 15 1 // Pop REG_2
678: ADD 1 5
679: CPI 14 1 // Pop REG_1
680: ADD 14 15
681: CPIr 1 14 // Push REG_1
682: ADDi 1 1
683: CPIr 1 953 // Push int literal 11
684: ADDi 1 1
685: ADD 1 5
686: CPI 14 1 // Pop REG_1
687: ADD 1 5
688: CPI 15 1 // Pop REG_2
689: ADDi 1 1
690: CPIr 14 15
691: ADD 1 5
692: CPIr 1 954 // Push int literal 12
693: ADDi 1 1
694: ADD 1 5
695: CPI 14 1 // Pop REG_1
696: CPI 15 14
697: CPIr 1 15 // Push REG_2
698: ADDi 1 1
699: CP 14 2 // Retrieve local var osEnd's address.
700: ADDi 14 0
701: CPI 15 14
702: CPIr 1 15 // Push REG_2
703: ADDi 1 1
704: CP 14 2 // Retrieve local var pc's address.
705: ADDi 14 127
706: CPI 15 14
707: CPIr 1 15 // Push REG_2
708: ADDi 1 1
709: ADD 1 5
710: CPI 15 1 // Pop REG_2
711: ADD 1 5
712: CPI 14 1 // Pop REG_1
713: ADD 14 15
714: CPIr 1 14 // Push REG_1
715: ADDi 1 1
716: CP 14 2 // Retrieve local var value's address.
717: ADDi 14 133
718: CPI 15 14
719: CPIr 1 15 // Push REG_2
720: ADDi 1 1
721: CP 14 2 // Retrieve local var addr's address.
722: ADDi 14 134
723: ADD 1 5
724: CPI 15 1 // Pop REG_2
725: ADDi 1 1
726: CPIr 14 15
727: ADD 1 5
728: ADD 1 5
729: ADD 1 5
//forLabelEnd_22
730: CP 14 2 // Retrieve local var j's address.
731: ADDi 14 132
732: CPI 15 14 // Original value will be moved to REG_2
733: CPIr 1 15 // Push REG_2
734: ADDi 1 1
735: ADDi 15 1
736: CPIr 14 15
737: ADD 1 5
738: JMP 3 645 // Goto forLabelCond_21 --
//forLabelExit_23
739: CPIr 1 951 // Push int literal 0
740: ADDi 1 1
741: CPIr 1 954 // Push int literal 12
742: ADDi 1 1
743: ADD 1 5
744: CPI 14 1 // Pop REG_1
745: ADD 1 5
746: CPI 15 1 // Pop REG_2
747: ADDi 1 1
748: CPIr 14 15
749: ADD 1 5
750: ADD 1 5
751: ADD 1 5
752: ADD 1 5
753: JMP 3 754 // Goto ifLabelEnd_18 --
//ifLabelElse_17
//ifLabelEnd_18
754: ADD 1 5
//forLabelEnd_15
755: CP 14 2 // Retrieve local var i's address.
756: ADDi 14 128
757: CPI 15 14 // Original value will be moved to REG_2
758: CPIr 1 15 // Push REG_2
759: ADDi 1 1
760: ADDi 15 1
761: CPIr 14 15
762: ADD 1 5
763: JMP 3 487 // Goto forLabelCond_14 --
//forLabelExit_16
764: CP 14 2 // Retrieve local var osEnd's address.
765: ADDi 14 0
766: CPI 15 14
767: CPIr 1 15 // Push REG_2
768: ADDi 1 1
769: CPIr 1 957 // Push int literal 9
770: ADDi 1 1
771: ADD 1 5
772: CPI 14 1 // Pop REG_1
773: ADD 1 5
774: CPI 15 1 // Pop REG_2
775: ADDi 1 1
776: CPIr 14 15
777: ADD 1 5
778: CP 14 2 // Retrieve local var osEnd's address.
779: ADDi 14 0
780: CPI 15 14
781: CPIr 1 15 // Push REG_2
782: ADDi 1 1
783: CP 14 2 // Retrieve local var pc's address.
784: ADDi 14 127
785: CPI 15 14
786: CPIr 1 15 // Push REG_2
787: ADDi 1 1
788: ADD 1 5
789: CPI 15 1 // Pop REG_2
790: ADD 1 5
791: CPI 14 1 // Pop REG_1
792: ADD 14 15
793: CPIr 1 14 // Push REG_1
794: ADDi 1 1
795: CPIr 1 958 // Push int literal 10
796: ADDi 1 1
797: ADD 1 5
798: CPI 14 1 // Pop REG_1
799: ADD 1 5
800: CPI 15 1 // Pop REG_2
801: ADDi 1 1
802: CPIr 14 15
803: ADD 1 5
804: CPIr 1 949 // Push int literal 1
805: ADDi 1 1
806: CPIr 1 959 // Push int literal 8
807: ADDi 1 1
808: ADD 1 5
809: CPI 14 1 // Pop REG_1
810: ADD 1 5
811: CPI 15 1 // Pop REG_2
812: ADDi 1 1
813: CPIr 14 15
814: ADD 1 5
815: ADD 1 5
816: ADD 1 5
817: JMP 3 818 // Goto ifLabelEnd_11 --
//ifLabelElse_10
//ifLabelEnd_11
818: ADD 1 5
819: JMP 3 435 // Goto whileLabelTest_8 --
//whileLabelEnd_9
820: ADD 1 5
821: ADD 1 5
822: ADD 1 5
823: ADD 1 5
824: ADD 1 5
825: ADD 1 5
826: ADD 1 5
827: ADD 1 5
828: ADD 1 5
829: ADD 1 5
830: ADD 1 5
831: ADD 1 5
832: ADD 1 5
833: ADD 1 5
834: ADD 1 5
835: ADD 1 5
836: ADD 1 5
837: ADD 1 5
838: ADD 1 5
839: ADD 1 5
840: ADD 1 5
841: ADD 1 5
842: ADD 1 5
843: ADD 1 5
844: ADD 1 5
845: ADD 1 5
846: ADD 1 5
847: ADD 1 5
848: ADD 1 5
849: ADD 1 5
850: ADD 1 5
851: ADD 1 5
852: ADD 1 5
853: ADD 1 5
854: ADD 1 5
855: ADD 1 5
856: ADD 1 5
857: ADD 1 5
858: ADD 1 5
859: ADD 1 5
860: ADD 1 5
861: ADD 1 5
862: ADD 1 5
863: ADD 1 5
864: ADD 1 5
865: ADD 1 5
866: ADD 1 5
867: ADD 1 5
868: ADD 1 5
869: ADD 1 5
870: ADD 1 5
871: ADD 1 5
872: ADD 1 5
873: ADD 1 5
874: ADD 1 5
875: ADD 1 5
876: ADD 1 5
877: ADD 1 5
878: ADD 1 5
879: ADD 1 5
880: ADD 1 5
881: ADD 1 5
882: ADD 1 5
883: ADD 1 5
884: ADD 1 5
885: ADD 1 5
886: ADD 1 5
887: ADD 1 5
888: ADD 1 5
889: ADD 1 5
890: ADD 1 5
891: ADD 1 5
892: ADD 1 5
893: ADD 1 5
894: ADD 1 5
895: ADD 1 5
896: ADD 1 5
897: ADD 1 5
898: ADD 1 5
899: ADD 1 5
900: ADD 1 5
901: ADD 1 5
902: ADD 1 5
903: ADD 1 5
904: ADD 1 5
905: ADD 1 5
906: ADD 1 5
907: ADD 1 5
908: ADD 1 5
909: ADD 1 5
910: ADD 1 5
911: ADD 1 5
912: ADD 1 5
913: ADD 1 5
914: ADD 1 5
915: ADD 1 5
916: ADD 1 5
917: ADD 1 5
918: ADD 1 5
919: ADD 1 5
920: ADD 1 5
921: ADD 1 5
922: ADD 1 5
923: ADD 1 5
924: ADD 1 5
925: ADD 1 5
926: ADD 1 5
927: ADD 1 5
928: ADD 1 5
929: ADD 1 5
930: ADD 1 5
931: ADD 1 5
932: ADD 1 5
933: ADD 1 5
934: ADD 1 5
935: ADD 1 5
936: ADD 1 5
937: ADD 1 5
938: ADD 1 5
939: ADD 1 5
940: ADD 1 5
941: ADD 1 5
942: ADD 1 5
943: ADD 1 5
944: ADD 1 5
945: ADD 1 5
//$RETURN_main
946: ADD 1 5
947: CPI 14 1 // Pop stack into REG_1
//$HALT
948: JMP 3 948 // Goto $HALT -- Instruction jumps to itself to terminate the process.
//$CONSTANT_DATA_SECTION
//@1
949: 1 // TYPE(int)
//@40
950: 40 // TYPE(int)
//@0
951: 0 // TYPE(int)
//@2
952: 2 // TYPE(int)
//@11
953: 11 // TYPE(int)
//@12
954: 12 // TYPE(int)
//@100
955: 100 // TYPE(int)
//@3
956: 3 // TYPE(int)
//@9
957: 9 // TYPE(int)
//@10
958: 10 // TYPE(int)
//@8
959: 8 // TYPE(int)
//$GLOBAL_DATA_SECTION
//$LOCAL_DATA_SECTION
//main
//@osEnd , offset:0 , TYPE(int)
//@numberOfProgs , offset:1 , TYPE(int)
//@progInfo , offset:2 , TYPE(int [120])
//@progCount , offset:122 , TYPE(int)
//@progLocation , offset:123 , TYPE(int)
//@end1 , offset:124 , TYPE(int)
//@check , offset:125 , TYPE(int)
//@name , offset:126 , TYPE(int)
//@start , offset:127 , TYPE(int)
//@end , offset:128 , TYPE(int)
//@check , offset:129 , TYPE(int)
//@programCheck , offset:126 , TYPE(int)
//@pc , offset:127 , TYPE(int)
//@i , offset:128 , TYPE(int)
//@programName , offset:129 , TYPE(int)
//@programStart , offset:130 , TYPE(int)
//@programEnd , offset:131 , TYPE(int)
//@j , offset:132 , TYPE(int)
//@value , offset:133 , TYPE(int)
//@addr , offset:134 , TYPE(int *)
//$STACK_SECTION
//$STACK_FRAME_main
960: 946 // Address of $RETURN_main -- $RA_main
961: 0 // $OLDBP_main
//$BASE_main
