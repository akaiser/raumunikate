'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/images/portrait_intro.jpg": "a9a7ff3503ef2a786428f653a746fe10",
"assets/images/design_natural_first.png": "dfd7324058432cd2838d202abd2500c1",
"assets/images/_convert.sh": "ecf69b922cf67d490b9ba5952823b965",
"assets/images/product_lamp.webp": "ae3b9afac36e8d79bb401b71c19045dd",
"assets/images/chevron.png": "192d57e5922b9b1a50e1a51328d6b34b",
"assets/images/design_natural_second.png": "94c6ac3561f81129a99fd2dd312afedf",
"assets/images/home_image.webp": "ee903ae3c0290e19a294bffa1afb72aa",
"assets/images/product_shell.webp": "bab465f9d2196812b30000148a25ee17",
"assets/images/waben1.webp": "768678dcd190a3b233bb235b9d6862d9",
"assets/images/product_clock.webp": "7592521ef8fbe089821d34a2e6027517",
"assets/images/products_clock_shell.jpg": "d042b343681591f46d4faab325832231",
"assets/images/product_lamp.jpg": "a30f413823c0c4defe21f2bbaf275aff",
"assets/images/portrait_product.webp": "e2306d550c90619877da40e2576fefd8",
"assets/images/waben0.webp": "c925255413e64fe865cca57214b38deb",
"assets/images/design_style.webp": "597f8b0a67c0e8217968dc7c68555073",
"assets/images/design_elegant_second.webp": "b0f81c4745d642a32cc443bf0561610c",
"assets/images/products_candle_shell.jpg": "04f0219b6dc75002d56420d2a589c9ac",
"assets/images/home_intro.jpg": "9fb7ba0770a12a6b575f428aa9faeda5",
"assets/images/design_atmosphere.png": "f82e7e76ce80f2a86fba2357cdf65bc5",
"assets/images/home_image.jpg": "d4efd360ceee39a94c8a048726f99c11",
"assets/images/home_welcome_ina.jpg": "43d123684927d6415252f28e51ae8e7f",
"assets/images/projects_intro.jpg": "040520d7c482452933159c7a08086751",
"assets/images/portrait_about.jpg": "eefa97a6d5f28e6535ca2004acaa234b",
"assets/images/portrait_about.webp": "3361937d8f17af6ccbf1c9437cb1bc1f",
"assets/images/home_intro.webp": "c61e53aad80998af6ab1e494d5fcc4e5",
"assets/images/home_welcome_ina.webp": "632d570b404e5622e6d629ac7f60913e",
"assets/images/design_atmosphere.webp": "a8554be58a2be511366647780df42dca",
"assets/images/design_natural_first.webp": "dc1621adbd682ab6c05b0c395843e6df",
"assets/images/blog/0/sleep2.jpg": "4025735a5a7b719d700a4b313bcf8aae",
"assets/images/blog/0/kitchen.jpg": "6145c63add337962b39356e6cb0b8c6c",
"assets/images/blog/0/lilli.jpg": "cb1c302cb263a30796c4f1c9b5b3d613",
"assets/images/blog/0/eat.webp": "12340bdfefccadcb527eaec826d5fc6a",
"assets/images/blog/0/child.jpg": "0f5e7f78e6c8e265bd0ba4448bc81eb0",
"assets/images/blog/0/sleep.webp": "f27d2cc9283152ded6f778b032941965",
"assets/images/blog/0/sleep2.webp": "ade17f521bdb4ed8fbac209dffe938e1",
"assets/images/blog/0/lilli.webp": "5c67894da7899a9e0ca45006c5ca6504",
"assets/images/blog/0/child.webp": "8f0af29e121c4438b719088e1a985650",
"assets/images/blog/0/kitchen.webp": "73f33f6c610db902f49c8aa06e7a8db3",
"assets/images/blog/0/eat.jpg": "b8d3c24d1bcf1989f9e8b7efaf39e8ed",
"assets/images/blog/0/sleep.jpg": "ba635dcd717e0ac576d1be94542eb11d",
"assets/images/design_style.png": "b05499ad6acaaa25f3cd217ecfc63311",
"assets/images/logo.webp": "75c19566d105c022d8758267981622bd",
"assets/images/logo_text.webp": "16c3b259c51232517297b039cec1fe04",
"assets/images/product_shell.jpg": "bef764fec86bf1b00935de12ea53bf7a",
"assets/images/products_intro.webp": "706e45465b64474c2af46f858964309c",
"assets/images/design_natural_second.webp": "6550f7ad57ad6eff9f039df3a3a75aed",
"assets/images/design_intro.jpg": "4a78bf5be5d32627b0c60fe8403ccb2b",
"assets/images/portrait_intro.webp": "465e082fb8b7342096cd378bc6992f9f",
"assets/images/design_elegant_second.png": "6e2e0837ce219a0046eed7ba950a5bf4",
"assets/images/icons/_facebook.webp": "7d6541258da618d2ce39131e9ce89508",
"assets/images/icons/_mail.png": "51125aa60bd35b3646697408fcdb9d01",
"assets/images/icons/facebook.webp": "c652c074bc48a9857a3c8cd8479eaf91",
"assets/images/icons/arrow_up.png": "f6d232f3d836a6f5e706299a541bff68",
"assets/images/icons/facebook.png": "073eb4857822be7873a7dafaa332b1f1",
"assets/images/icons/instagram.webp": "ec1d92dbbded70af81471ce36308c1b9",
"assets/images/icons/_mail.webp": "56722a0090e0f2a60e6ab6b584e8adee",
"assets/images/icons/_instagram.png": "6d6bda87dc85681599a2b40d9944547a",
"assets/images/icons/_instagram.webp": "7a91d9ed1e1ba40638675ad714fb7e8d",
"assets/images/icons/arrow_up.webp": "c9984b8fb21f0dd7b58c86dd18733e94",
"assets/images/icons/menu.png": "bc3cfd3c743a326dae96f069abccfaff",
"assets/images/icons/mail.png": "a4193b1fe1a6bb173959a4562c4a0493",
"assets/images/icons/mail.webp": "98e55a98d1e105c54ec62b97ad51f954",
"assets/images/icons/instagram.png": "8291cf731f0ca2fc4beb24a14782b15b",
"assets/images/icons/_facebook.png": "1cb0b8c4066431d9da17075d71271d38",
"assets/images/icons/menu.webp": "60ff730fad75a2e1eb5f9f314d83e23c",
"assets/images/logo.png": "8f49ed665b94f140f1f52000e4bcdd12",
"assets/images/design_elegant_first.png": "380c108164bc379b01cab5dc7250fed7",
"assets/images/logo_text.png": "10c61017fe15cc4307083e49391d5c42",
"assets/images/product_clock.jpg": "82b5c42b1f887a2afc40737ee0fec803",
"assets/images/projects_intro.webp": "0c977f3c23d9228f2574c8551fc74627",
"assets/images/design_intro.webp": "1bbdb4a00a307ead670dab6c573192ab",
"assets/images/products_candle_shell.webp": "65df5653663238bc9543ffc239609de3",
"assets/images/waben0.jpg": "6f69a05d4bd33b5c58439dc37fe960f7",
"assets/images/chevron.webp": "27cff8f5cedebdab5db23d8ddc926509",
"assets/images/portrait_product.jpg": "bfc6b77ac55a99d0ccd601e29452f94c",
"assets/images/design_elegant_first.webp": "d97f7ce5e71e809958fab90f4bed2c14",
"assets/images/products_clock_shell.webp": "e11ed7dda804b7210e23f0a9e5bb0692",
"assets/images/products_intro.jpg": "1e70a613e06beadb8ccfbb58b0b9f3d7",
"assets/images/waben1.jpg": "f60018bdc029fbc80c45c1b47b858fe0",
"assets/AssetManifest.json": "8d9147612b54b74cccef3150cf255e03",
"assets/google_fonts/RobotoCondensed-Bold.ttf": "e38804ae070b58fbf4fdd88fd6853929",
"assets/google_fonts/RobotoCondensed-Regular.ttf": "0134dd8fe6fe708de73909a71d842780",
"assets/google_fonts/RobotoCondensed-Light.ttf": "905c2728284a6b881d4e417b80f1e79d",
"assets/google_fonts/CourierPrime-Bold.ttf": "4acfa45d29d240044e0075a8e58f0862",
"assets/google_fonts/CourierPrime-Regular.ttf": "fba4686ed1d1b4ef05ab14db78805dbe",
"assets/google_fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "7dfa98eec7bb667ca644cb0d194c83e5",
"assets/FontManifest.json": "db87a0fef57b6f969913aab4644fe8af",
"assets/NOTICES": "c374ca0d0b7525595bb7b6a6156b41cf",
"robots.txt": "21fe6d6037f6706faf0a3dd41fe5e014",
"version.json": "f00b47c988548ec3a502096571a1377c",
"manifest.json": "85916ae75856376cbba1695a6aba399c",
"index.html": "8f5029f267a47b9cb97b7ca3215d7563",
"/": "8f5029f267a47b9cb97b7ca3215d7563",
"favicon.png": "1dd0b9cf212a55f09743c7e8c672a7cb",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"sitemap.xml": "1dbab6adbb6f7f852eb0e611027f8349",
"icons/Icon-192.png": "492cfabe88aad1727f55a08e9c748af5",
"icons/Icon-maskable-192.png": "2626f4640e88bbbcb3092ad2ecd12473",
"main.dart.js": "38e9baf4067ca41d54f1f9bfaf671782",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
