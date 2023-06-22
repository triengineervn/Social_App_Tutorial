'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "361d8adb259c3453cb8ad3b79adcd616",
"assets/AssetManifest.json": "e91ea298919f42526880e0b62e4da907",
"assets/assets/avatar/avatar1.png": "19f49190c772891571e6b077a55093eb",
"assets/assets/avatar/avatar10.png": "751aeb902414f297db8c81758cf77f3a",
"assets/assets/avatar/avatar11.png": "6140d417b1f1455750621248f8fb93be",
"assets/assets/avatar/avatar12.png": "20ca23e26be5d53b98075b40cf8a9faf",
"assets/assets/avatar/avatar13.png": "b89935b189a3e39c45769e04dfbfba54",
"assets/assets/avatar/avatar14.png": "c8e5cf6285d083c1d50960d9c0f3da9b",
"assets/assets/avatar/avatar15.png": "94e23c5863f878da1066c5b906586280",
"assets/assets/avatar/avatar16.png": "c38a89ad0ce2608d544b79549c6836ef",
"assets/assets/avatar/avatar2.png": "4172d877b4796b1689ac69f3d5a056f4",
"assets/assets/avatar/avatar3.png": "09fca765c99e2e829b5cd3573570e806",
"assets/assets/avatar/avatar4.png": "2627b8b597e390fefe88485c8ad00ead",
"assets/assets/avatar/avatar5.png": "5f9ba9973deb30b1d3883231009dfa35",
"assets/assets/avatar/avatar6.png": "c6a6a1fc60f740859394b17d6f5f2f5d",
"assets/assets/avatar/avatar7.png": "14d88b526ca5a25ce24e6ea38775abc4",
"assets/assets/avatar/avatar8.png": "0ba99c4c5bbfc881c2b1a31c4eda4f28",
"assets/assets/avatar/avatar9.png": "95bb326ce9f2680fd571cae2e7dd84b8",
"assets/assets/data/chat_data.json": "655b768d4cb870e18ee1ac3286db814b",
"assets/assets/fonts/avenir/Metropolis-Bold.otf": "dea4998b081c6c1133a3b5b08ff2218c",
"assets/assets/fonts/avenir/Metropolis-Regular.otf": "f7b5e589f88206b4bd5cb1408c5362e6",
"assets/assets/images/2.0x/ic_active_2x.png": "ffaaf21234694439ada959185aa79c1c",
"assets/assets/images/2.0x/ic_home_2x.png": "0e5132e4ba5c5a2bb729ce58f55597f6",
"assets/assets/images/2.0x/ic_left_arrow_2x.png": "37c2b9b93bfd27340b8328454ba95d48",
"assets/assets/images/2.0x/ic_message_2x.png": "e071c4775eac9cd47baa00b27eb09839",
"assets/assets/images/2.0x/ic_notifications_2x.png": "072805eb472df9aaa7af1b401fdf0d63",
"assets/assets/images/2.0x/ic_plus_2x.png": "171fb39ebbc07f92f8b0bc6cf64fe5e5",
"assets/assets/images/2.0x/ic_profile_2x.png": "74a496077acd82cfb7e7eb2e3b4e3411",
"assets/assets/images/2.0x/ic_stream_2x.png": "e2c8f7b49b223bf3951b9f8d881c18b1",
"assets/assets/images/3.0x/ic_home_3x.png": "07dfde25785dd9edd250c83ddada09fc",
"assets/assets/images/3.0x/ic_message_3x.png": "068b55cb91e28a9344a8fb2ad98f7e28",
"assets/assets/images/3.0x/ic_notifications_3x.png": "a7e40a354435667fdef3e346a26309bb",
"assets/assets/images/3.0x/ic_profile_3x.png": "093a46c15118794e18bd52ca4687c062",
"assets/assets/images/3.0x/ic_stream_3x.png": "3fb5d394a0ee20fdb5f197bddf304cc9",
"assets/assets/images/background_regis_image.png": "d8843558f21e24d34fdf76b5530ad426",
"assets/assets/images/facebook.png": "b03c723e29869d1d87666ec13a1efce6",
"assets/assets/images/google.png": "91938e6f6bd5e557e2841a8d50bdd23c",
"assets/assets/images/ic_active.png": "8d44a473f802e2a7d92a80327c100405",
"assets/assets/images/ic_arrow_left.png": "b88069f6562d7a251cd00efddb420c96",
"assets/assets/images/ic_home.png": "e94e4efd7803e96fa6735b96d6fe9b43",
"assets/assets/images/ic_message.png": "44e273c923cee473adbac952a96b5647",
"assets/assets/images/ic_notifications.png": "b90a2854c54ee64bcbee13e9bf74e4e3",
"assets/assets/images/ic_plus.png": "ccd9b116ce5feae20d6292861836e10a",
"assets/assets/images/ic_profile.png": "1ee71ade243e82f298e3aa74b689a8aa",
"assets/assets/images/ic_stream.png": "b5caed5b9eadc1595c301ee5876c7dda",
"assets/assets/images/twitter.png": "b4110b9b7abe2508325775d779ede121",
"assets/FontManifest.json": "daeb9cc8ea03e9f51f8dad58977be952",
"assets/fonts/MaterialIcons-Regular.otf": "6d8d7add70bc21d7034fc5ce70381598",
"assets/NOTICES": "33563e679606644f6ab92e3c9791c261",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "59ed8478b398a8966eee147930f3d966",
"canvaskit/canvaskit.wasm": "94fb0e34a2204177e10724449321c4c5",
"canvaskit/chromium/canvaskit.js": "853c6cebea386c05aa9d954f11b2c1ca",
"canvaskit/chromium/canvaskit.wasm": "59886985b589f35d171dc176fb83a709",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "e9d564fb30788add6bd7d45541276d92",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0e4efd6f31f7a59cde975b2b4ba67d36",
"/": "0e4efd6f31f7a59cde975b2b4ba67d36",
"main.dart.js": "d2acd7e86cd94833dc29297bc3e4ee79",
"manifest.json": "a9ef9495c23b3ea2018f274d80a8c464",
"version.json": "ddc4f12d8e5df83a1d4d728d0c5d9576"};
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
