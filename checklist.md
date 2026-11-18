# 🎯 CP Contest Checklist & Mental Triggers

> **কন্টেস্টে লাল বাত্তি (WA/TLE/MLE) দেখার পর বা আইডিয়া না আসলে হুবহু এই চেকলিস্ট স্ক্যান করবি। নো কম্প্রোমাইজ!**

---

## 🔴 টেস্ট ১-৩ তেই লাল বাত্তি? (Corner Case & Input Stream)

- [ ] sob input neyar agei result print korchos?
- [ ] n = 0 hoile ki hobe?
- [ ] edge case upore handle korar pore return des nai?
- [ ] unique korar pore i < n disos? n = a.size() koroc nai?
- [ ] question abar dekh, kothao at least, at most kotha miss korsos kina!
- [ ] segmented sieve e l = 1 handle korcos?
- [ ] jodi only ekta SSC thake?

---

## 🔴 টেস্ট ২০+ এ গিয়ে লাল বাত্তি? (Overflow, Typo & Hidden Traps)

- [ ] accumulate e long long disos?
- [ ] abar long long nes nai?
- [ ] global variable ke locally declare korchos? (variable Shadowing!)
- [ ] prefix sum neyar agei continue kore dicchis upore?
- [ ] prefix sum thikthak nichos?
- [ ] dp state update korar agei continue kore dicchis upore?
- [ ] n er jaygay m dichos naki m er jaygay n dichos
- [ ] i, j dekh thikachekina!
- [ ] i hobe naki f[i] or lcp[i] or sa[i] or pos[i]?
- [ ] sort korchos? answer sorted order a print korte hobe naki?
- [ ] bellman ford e unreachable node theke relaxation korchos?
- [ ] Flow te undirected kintu by default, directed hobe naki? cinta kor valovabe
- [ ] digit dp te pair<int, int> o kintu return kora lagte pare, {valid_numbers, ....};

---

## 🟡 TLE / MLE বাত্তি জ্বললে (Complexity & Cleanups)

- [ ] skip those mask which dp[mask] == inf, in bitmask or any dp! (huge optimization)
- [ ] Trie use kore MLE? do recursive deletion after each testcase.

---

## 🔵 ৩০ মিনিট পার কিন্তু কোনো আইডিয়া আসছে না? (Brainstorming & Reduction)

- [ ] vul dike cinta bad de, akhon mathematical breakdown korar cesta kor.
- [ ] invarent khoj vai, naki pigienhole principal?
- [ ] binary string? bipartide graph kina dekhto!
- [ ] overcount? -> inclusion - exclusion
- [ ] N <= 5000 or edges <= 5000 ? system of difference constraints
- [ ] matrix er problem? cell e (i + j) % 2 (0, 1) bosay dekhto
