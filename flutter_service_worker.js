'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "f00b47c988548ec3a502096571a1377c",
"assets/FontManifest.json": "db87a0fef57b6f969913aab4644fe8af",
"assets/NOTICES": "6a2704e63376efbb08fae25b2a3ea8d8",
"assets/google_fonts/CourierPrime-Regular.ttf": "fba4686ed1d1b4ef05ab14db78805dbe",
"assets/google_fonts/CourierPrime-Bold.ttf": "4acfa45d29d240044e0075a8e58f0862",
"assets/google_fonts/RobotoCondensed-Bold.ttf": "e38804ae070b58fbf4fdd88fd6853929",
"assets/google_fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/google_fonts/RobotoCondensed-Light.ttf": "905c2728284a6b881d4e417b80f1e79d",
"assets/google_fonts/RobotoCondensed-Regular.ttf": "0134dd8fe6fe708de73909a71d842780",
"assets/images/plan_intro.jpg": "4a78bf5be5d32627b0c60fe8403ccb2b",
"assets/images/home_intro.jpg": "9fb7ba0770a12a6b575f428aa9faeda5",
"assets/images/logo_text.png": "10c61017fe15cc4307083e49391d5c42",
"assets/images/home_content.png": "d12751c460e0a9630c2cebaf5fd06c35",
"assets/images/logo.png": "8f49ed665b94f140f1f52000e4bcdd12",
"assets/images/_logo.png": "dae96cd8638c96251e15d9f04f45936f",
"assets/images/blog/0/child.jpg": "0f5e7f78e6c8e265bd0ba4448bc81eb0",
"assets/images/blog/0/eat.jpg": "b8d3c24d1bcf1989f9e8b7efaf39e8ed",
"assets/images/blog/0/kitchen.jpg": "6145c63add337962b39356e6cb0b8c6c",
"assets/images/blog/0/sleep2.jpg": "4025735a5a7b719d700a4b313bcf8aae",
"assets/images/blog/0/sleep.jpg": "ba635dcd717e0ac576d1be94542eb11d",
"assets/images/blog/0/lilli.jpg": "cb1c302cb263a30796c4f1c9b5b3d613",
"assets/images/chevron.png": "192d57e5922b9b1a50e1a51328d6b34b",
"assets/images/projects_intro.jpg": "040520d7c482452933159c7a08086751",
"assets/images/inspiration_intro.jpg": "117654b57c0bdf1e95390fa3e37b3624",
"assets/images/home_welcome_ina.jpg": "43d123684927d6415252f28e51ae8e7f",
"assets/images/home_image.jpg": "d4efd360ceee39a94c8a048726f99c11",
"assets/images/portrait_intro.jpg": "a9a7ff3503ef2a786428f653a746fe10",
"assets/images/products_intro.jpg": "1e70a613e06beadb8ccfbb58b0b9f3d7",
"assets/images/icons/menu.png": "bc3cfd3c743a326dae96f069abccfaff",
"assets/images/icons/instagram.png": "8291cf731f0ca2fc4beb24a14782b15b",
"assets/images/icons/facebook.png": "073eb4857822be7873a7dafaa332b1f1",
"assets/images/icons/_instagram.png": "6d6bda87dc85681599a2b40d9944547a",
"assets/images/icons/_facebook.png": "1cb0b8c4066431d9da17075d71271d38",
"assets/images/icons/_mail.png": "51125aa60bd35b3646697408fcdb9d01",
"assets/images/icons/mail.png": "a4193b1fe1a6bb173959a4562c4a0493",
"assets/AssetManifest.json": "341626bda4ddd861302468f5d47780c2",
"main.dart.js": "c8e245cb9d1fdae695b9c88e09ed395c",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"sitemap.xml": "1dbab6adbb6f7f852eb0e611027f8349",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"manifest.json": "85916ae75856376cbba1695a6aba399c",
"index.html": "e892fd1783b754f0f1f3afa1a10c7d37",
"/": "e892fd1783b754f0f1f3afa1a10c7d37",
"robots.txt": "21fe6d6037f6706faf0a3dd41fe5e014",
"favicon.png": "1dd0b9cf212a55f09743c7e8c672a7cb",
"icons/Icon-192.png": "492cfabe88aad1727f55a08e9c748af5",
"icons/Icon-maskable-192.png": "2626f4640e88bbbcb3092ad2ecd12473"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
