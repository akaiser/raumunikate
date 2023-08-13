'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "2626f4640e88bbbcb3092ad2ecd12473",
"icons/Icon-192.png": "492cfabe88aad1727f55a08e9c748af5",
"robots.txt": "21fe6d6037f6706faf0a3dd41fe5e014",
"index.html": "8f5029f267a47b9cb97b7ca3215d7563",
"/": "8f5029f267a47b9cb97b7ca3215d7563",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"manifest.json": "85916ae75856376cbba1695a6aba399c",
"favicon.png": "1dd0b9cf212a55f09743c7e8c672a7cb",
"assets/images/design_style.webp": "05700d516cfa627dd0f42e9318a6f136",
"assets/images/design_natural_first.png": "dfd7324058432cd2838d202abd2500c1",
"assets/images/home_welcome_ina.jpg": "43d123684927d6415252f28e51ae8e7f",
"assets/images/portrait_about.webp": "3361937d8f17af6ccbf1c9437cb1bc1f",
"assets/images/_convert.sh": "ecf69b922cf67d490b9ba5952823b965",
"assets/images/home_image.webp": "ee903ae3c0290e19a294bffa1afb72aa",
"assets/images/design_intro.jpg": "4a78bf5be5d32627b0c60fe8403ccb2b",
"assets/images/icons/mail.webp": "98e55a98d1e105c54ec62b97ad51f954",
"assets/images/icons/_instagram.png": "6d6bda87dc85681599a2b40d9944547a",
"assets/images/icons/menu.png": "bc3cfd3c743a326dae96f069abccfaff",
"assets/images/icons/facebook.webp": "c652c074bc48a9857a3c8cd8479eaf91",
"assets/images/icons/mail.png": "a4193b1fe1a6bb173959a4562c4a0493",
"assets/images/icons/_instagram.webp": "7a91d9ed1e1ba40638675ad714fb7e8d",
"assets/images/icons/arrow_up.png": "f6d232f3d836a6f5e706299a541bff68",
"assets/images/icons/facebook.png": "073eb4857822be7873a7dafaa332b1f1",
"assets/images/icons/_facebook.webp": "7d6541258da618d2ce39131e9ce89508",
"assets/images/icons/instagram.webp": "ec1d92dbbded70af81471ce36308c1b9",
"assets/images/icons/_mail.webp": "56722a0090e0f2a60e6ab6b584e8adee",
"assets/images/icons/arrow_up.webp": "c9984b8fb21f0dd7b58c86dd18733e94",
"assets/images/icons/_mail.png": "51125aa60bd35b3646697408fcdb9d01",
"assets/images/icons/menu.webp": "60ff730fad75a2e1eb5f9f314d83e23c",
"assets/images/icons/_facebook.png": "1cb0b8c4066431d9da17075d71271d38",
"assets/images/icons/instagram.png": "8291cf731f0ca2fc4beb24a14782b15b",
"assets/images/design_natural_second.png": "94c6ac3561f81129a99fd2dd312afedf",
"assets/images/portrait_product.webp": "e2306d550c90619877da40e2576fefd8",
"assets/images/portrait_about.jpg": "eefa97a6d5f28e6535ca2004acaa234b",
"assets/images/design_elegant_first.png": "380c108164bc379b01cab5dc7250fed7",
"assets/images/projects_intro.jpg": "040520d7c482452933159c7a08086751",
"assets/images/design_atmosphere.webp": "62e09691c9b494e91b9c031219e3680b",
"assets/images/products_intro.webp": "706e45465b64474c2af46f858964309c",
"assets/images/portrait_product.jpg": "bfc6b77ac55a99d0ccd601e29452f94c",
"assets/images/design_natural_second.webp": "6550f7ad57ad6eff9f039df3a3a75aed",
"assets/images/design_elegant_second.webp": "b0f81c4745d642a32cc443bf0561610c",
"assets/images/waben0.jpg": "6f69a05d4bd33b5c58439dc37fe960f7",
"assets/images/home_welcome_ina.webp": "632d570b404e5622e6d629ac7f60913e",
"assets/images/waben1.jpg": "f60018bdc029fbc80c45c1b47b858fe0",
"assets/images/blog/0/child.jpg": "0f5e7f78e6c8e265bd0ba4448bc81eb0",
"assets/images/blog/0/child.webp": "8f0af29e121c4438b719088e1a985650",
"assets/images/blog/0/kitchen.webp": "73f33f6c610db902f49c8aa06e7a8db3",
"assets/images/blog/0/eat.webp": "12340bdfefccadcb527eaec826d5fc6a",
"assets/images/blog/0/sleep2.jpg": "4025735a5a7b719d700a4b313bcf8aae",
"assets/images/blog/0/sleep.webp": "f27d2cc9283152ded6f778b032941965",
"assets/images/blog/0/lilli.webp": "5c67894da7899a9e0ca45006c5ca6504",
"assets/images/blog/0/lilli.jpg": "cb1c302cb263a30796c4f1c9b5b3d613",
"assets/images/blog/0/kitchen.jpg": "6145c63add337962b39356e6cb0b8c6c",
"assets/images/blog/0/eat.jpg": "b8d3c24d1bcf1989f9e8b7efaf39e8ed",
"assets/images/blog/0/sleep2.webp": "ade17f521bdb4ed8fbac209dffe938e1",
"assets/images/blog/0/sleep.jpg": "ba635dcd717e0ac576d1be94542eb11d",
"assets/images/logo.webp": "75c19566d105c022d8758267981622bd",
"assets/images/home_image.jpg": "d4efd360ceee39a94c8a048726f99c11",
"assets/images/design_intro.webp": "1bbdb4a00a307ead670dab6c573192ab",
"assets/images/logo_text.webp": "16c3b259c51232517297b039cec1fe04",
"assets/images/home_intro.webp": "c61e53aad80998af6ab1e494d5fcc4e5",
"assets/images/chevron.webp": "27cff8f5cedebdab5db23d8ddc926509",
"assets/images/design_elegant_second.png": "6e2e0837ce219a0046eed7ba950a5bf4",
"assets/images/chevron.png": "192d57e5922b9b1a50e1a51328d6b34b",
"assets/images/waben0.webp": "c925255413e64fe865cca57214b38deb",
"assets/images/waben1.webp": "768678dcd190a3b233bb235b9d6862d9",
"assets/images/design_atmosphere.png": "a16ac9eaffc3fe16a8ab578fbfdac781",
"assets/images/portrait_intro.jpg": "a9a7ff3503ef2a786428f653a746fe10",
"assets/images/design_style.png": "6ab8a1118edd3898c5f062410ddecc63",
"assets/images/projects_intro.webp": "0c977f3c23d9228f2574c8551fc74627",
"assets/images/products_intro.jpg": "1e70a613e06beadb8ccfbb58b0b9f3d7",
"assets/images/home_intro.jpg": "9fb7ba0770a12a6b575f428aa9faeda5",
"assets/images/logo_text.png": "10c61017fe15cc4307083e49391d5c42",
"assets/images/portrait_intro.webp": "465e082fb8b7342096cd378bc6992f9f",
"assets/images/design_natural_first.webp": "dc1621adbd682ab6c05b0c395843e6df",
"assets/images/design_elegant_first.webp": "d97f7ce5e71e809958fab90f4bed2c14",
"assets/images/logo.png": "8f49ed665b94f140f1f52000e4bcdd12",
"assets/google_fonts/RobotoCondensed-Bold.ttf": "e38804ae070b58fbf4fdd88fd6853929",
"assets/google_fonts/CourierPrime-Bold.ttf": "4acfa45d29d240044e0075a8e58f0862",
"assets/google_fonts/RobotoCondensed-Regular.ttf": "0134dd8fe6fe708de73909a71d842780",
"assets/google_fonts/CourierPrime-Regular.ttf": "fba4686ed1d1b4ef05ab14db78805dbe",
"assets/google_fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/google_fonts/RobotoCondensed-Light.ttf": "905c2728284a6b881d4e417b80f1e79d",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "aa75f98bd35fa0d6af69abb7fc253125",
"assets/AssetManifest.json": "d5cc61a883c3ba31e5586a9d74a6c710",
"assets/NOTICES": "3f267d45654e4ea7543111fc4336b9a4",
"assets/FontManifest.json": "db87a0fef57b6f969913aab4644fe8af",
"version.json": "f00b47c988548ec3a502096571a1377c",
"main.dart.js": "624e01fc21f06fb65d24b7cda818b67f",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"sitemap.xml": "1dbab6adbb6f7f852eb0e611027f8349"};
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
