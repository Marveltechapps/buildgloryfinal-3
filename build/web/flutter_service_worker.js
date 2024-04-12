'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "e52c1291cfdff977d4430a907d98635b",
"assets/AssetManifest.bin.json": "fd0bef83bbb9556e0e331aaeb5e06757",
"assets/AssetManifest.json": "cbff3dcd7a49af82d00789dadaebe628",
"assets/assets/images/aboutbanner.png": "0b2e30b3e990729648f52c665a3c3837",
"assets/assets/images/aboutimage1.jpeg": "eb4e8a402fd738e3fd4f25a3ec481aa8",
"assets/assets/images/aboutimage2.jpeg": "55db7f4be7bce1bc031930be80fdc93b",
"assets/assets/images/aboutimage3.jpeg": "cfd32e8563dbc46bbc28b0a7f026fe3e",
"assets/assets/images/aboutimage4.png": "1873f79cbdadfaed48d240a2076dd85a",
"assets/assets/images/aboutimage5.jpeg": "86e459387e9e7275bb0acfe8055c06ca",
"assets/assets/images/agentbanner.png": "ae8b61dafb90c816623cb403a6bd9fbb",
"assets/assets/images/apartmentinfobanner.png": "59791c2a1548f5028b08724c118d4bc7",
"assets/assets/images/BimageLeft.png": "5c93669b8db0bfacc1a33ed91ea1bfc9",
"assets/assets/images/BimageRight.png": "2049768e0747a2ff1a770a3afc89a5fb",
"assets/assets/images/BuiltgloryHomepg/aboutbanner.png": "d681c6b27183fba1a292a1a521eb4976",
"assets/assets/images/BuiltgloryHomepg/agentbanner.png": "91adc465f1c58f29aae50429e621bc27",
"assets/assets/images/BuiltgloryHomepg/buybanner.png": "290e6a68e5c9b22c655397d0e1538d2f",
"assets/assets/images/BuiltgloryHomepg/contactbanner.png": "26921238400a86b75db5489e34289f9d",
"assets/assets/images/BuiltgloryHomepg/exchangebanner.png": "fcdf1c74425bd19d34391fc65bec3ec9",
"assets/assets/images/BuiltgloryHomepg/homebanner.png": "1a17fbb5a89177ee82134898fe2ee1c9",
"assets/assets/images/BuiltgloryHomepg/propertylist4.png": "818da6071c48a7f80147f5674d0202b6",
"assets/assets/images/BuiltgloryHomepg/propertylist5.png": "3bf8f33a8f50471fbb13b20cbb20389e",
"assets/assets/images/BuiltgloryHomepg/salebanner.png": "d69a289139eb2a788384de94e6381f39",
"assets/assets/images/Buy/buybanner.png": "552bec639c07a675a1d055b5c2443bf0",
"assets/assets/images/Buy/image1.png": "178ccca46b879f6ad33262e535fa146c",
"assets/assets/images/Buy/image10.jpeg": "fcc3afcfdcc64e17b27a48c2ea9404a2",
"assets/assets/images/Buy/image11.jpeg": "b3bd1e9106427277b63196ec87fdda51",
"assets/assets/images/Buy/image12.jpeg": "f15ccd53222950090a3461fcf91d4488",
"assets/assets/images/Buy/image2.png": "27bc21e5dc8f4ce033df8d8d4a38d3db",
"assets/assets/images/Buy/image3.png": "ac0c8461aeada1f0a97c9edf308610c7",
"assets/assets/images/Buy/image4.jpeg": "cfd32e8563dbc46bbc28b0a7f026fe3e",
"assets/assets/images/Buy/image5.jpeg": "83c755580bc8834c4088534e2e5d16c4",
"assets/assets/images/Buy/image6.jpeg": "86e459387e9e7275bb0acfe8055c06ca",
"assets/assets/images/Buy/image7.png": "83d4b0f265924129f6af3ac804ed780b",
"assets/assets/images/Buy/image8.png": "5c38b6baff2e6c9cd99fc69cae612634",
"assets/assets/images/Buy/svg1.svg": "3a444b31dc9531f920fedd133dcebb9f",
"assets/assets/images/Buy/svg2.svg": "12d0e076ea01e6ec1d757b9824d8f33c",
"assets/assets/images/Buy/svg3.svg": "7d54106ba9774386e4955ebe41ccee83",
"assets/assets/images/Buy/svg4.svg": "009d06b215003ffbd8f42eed4c9455a0",
"assets/assets/images/Buy/svg5.svg": "cbf949a0c2ce942d22d8661e2ac543c7",
"assets/assets/images/Buy/svg6.svg": "4c7c35e946dc3cae8f23091bf8de8ae1",
"assets/assets/images/Buy/svg7.svg": "2541449c3cea811fd868a81c1f7b7b08",
"assets/assets/images/commercial/c1.svg": "f75df2c6b4cff7e96d87727d46f158dd",
"assets/assets/images/commercial/c2.svg": "5b87259595596de8dfda75298d355227",
"assets/assets/images/commercial/c3.svg": "24b8f5cb6fa9e4bc767943bc7a797224",
"assets/assets/images/commercial/c4.svg": "324af3bf4649e8113ab273ebbc21a408",
"assets/assets/images/commercial/c5.svg": "0f6456c44e1d10b8e1b4be93aefe0cf9",
"assets/assets/images/commercial/c6.svg": "2799275f6fa50e36bc1cf0890d700810",
"assets/assets/images/commercial/c7.svg": "0b3f9319837a8202be71c013653f6e9d",
"assets/assets/images/commercial/c8.svg": "2fa69885be168b6ed8e06fa041951ceb",
"assets/assets/images/commercial/c9.svg": "2527fa2f751e1e8aa63b6f3e0a2c7370",
"assets/assets/images/commercial/commercial1.jpg": "fcc3afcfdcc64e17b27a48c2ea9404a2",
"assets/assets/images/commercial/commercial2.jpg": "b3bd1e9106427277b63196ec87fdda51",
"assets/assets/images/commercial/commercial3.jpg": "f15ccd53222950090a3461fcf91d4488",
"assets/assets/images/commercial/commercialbanner.png": "84118e4e64194356222f6b3768e068f3",
"assets/assets/images/commercial/floor1.png": "1dfa3c330b6e13152a1deea4609ffa19",
"assets/assets/images/commercial/floor2.png": "1dfa3c330b6e13152a1deea4609ffa19",
"assets/assets/images/commercial/floor3.png": "95c63b7fefaeded0cd3e37042dbe4794",
"assets/assets/images/contact/banner.png": "142fceaf002b1417c40341be6512932f",
"assets/assets/images/exchangebanner.png": "cfb7366009f3f69a6895fb3007fe9a09",
"assets/assets/images/floor1.png": "e74a6d645f7d298742a783ac8b0b3d61",
"assets/assets/images/floor2.png": "a05ec97e325477c0f87e16e588fc59ba",
"assets/assets/images/floor3.png": "7a208c6e6f49b162e19e9a00604d9e8f",
"assets/assets/images/Home/buylogo.png": "2b3ab8a20f4da3ee5c36a594b36eb7f5",
"assets/assets/images/Home/c1.png": "6fe16e2ebae96061c2a67a39498133fc",
"assets/assets/images/Home/c2.png": "d0d0837f978a79db2016d73b6a44c9a9",
"assets/assets/images/Home/c3.png": "0b77579197fd09d1bb10e79a33ff5434",
"assets/assets/images/Home/c4.png": "08b1888edee769a4e188e383b15d6206",
"assets/assets/images/Home/c5.png": "6ce0363e2e81b43d4fbfe88a8e574fdb",
"assets/assets/images/Home/Exchange.png": "3537335911ebfb5359268fd807ba1b8e",
"assets/assets/images/Home/selllogo.png": "c63f37de16b4ad407aa5e9995ea0f7d8",
"assets/assets/images/logo.png": "7110cf379b12804e76dce6ae7a5905c7",
"assets/assets/images/plot/plot1.svg": "60ca4244fe766b4d48908f216b19de6b",
"assets/assets/images/plot/plot2.svg": "b273dfe71d74e366161cf53b1fbf3680",
"assets/assets/images/plot/plot3.svg": "86da92ec6230e7508435895ddcb5ecff",
"assets/assets/images/plot/plot4.svg": "9886582f50027dd99aa3541e2e81a965",
"assets/assets/images/plot/plotbanner.png": "a36100ef184614320c36d20d338d998b",
"assets/assets/images/plot/plotfloor1.png": "192c9c8f3d692b09869ef3094f8fe019",
"assets/assets/images/plot/plotfloor2.png": "f9f0367035ea2776b3bfab0ec856e6ce",
"assets/assets/images/plot/plotfloor3.png": "03bfd41aa84c9844d382a19c12bc40ca",
"assets/assets/images/search/image1.jpeg": "037d153957dbdf4882a3dfc50224620f",
"assets/assets/images/search/image2.png": "dd88bb5f3fb699b7472bd123df6e3187",
"assets/assets/images/search/image3.png": "ff878b85e80cef2befed4b3f7206eebc",
"assets/assets/images/search/image4.png": "86dbc698088e9f9536516bc322ef1a46",
"assets/assets/images/search/image5.jpeg": "c83420f89949a203df7261647335c428",
"assets/assets/images/search/image6.png": "68066972eee91f90845e9f3369ebbc1f",
"assets/assets/images/sell/sell.png": "2515d6d7ea7b9dde96b81512ec262473",
"assets/assets/images/villa/v1.svg": "949235864d09567a2f645ee7ac8a1199",
"assets/assets/images/villa/v10.svg": "6821507c5d8aeff9c3d7e50ab84315f0",
"assets/assets/images/villa/v2.svg": "d60ba873912f49e5030208e9fbe865d5",
"assets/assets/images/villa/v3.svg": "7f3ea9e4ea9e54230515c58207ba969f",
"assets/assets/images/villa/v4.svg": "ce75e21c52c38abd74c45f2851f24e39",
"assets/assets/images/villa/v5.svg": "5fadd6307e092737add416e1a8a53d26",
"assets/assets/images/villa/v6.svg": "4780bed6a664042c646083c11f3f1ad0",
"assets/assets/images/villa/v7.svg": "7ae3e6a8ce74e8a6e1d10bfa353fa950",
"assets/assets/images/villa/v8.svg": "e5f338c08e64235baa246af7dd5b80b9",
"assets/assets/images/villa/v9.svg": "cd6472a94f1e62d5ef65f411ba3bb986",
"assets/assets/images/villa/vbanner1.png": "37faa23cc54cf30a1944ed58fc13e236",
"assets/assets/images/villa/vbanner2.png": "d4dca947392ffc8620ba313c75331738",
"assets/assets/images/villa/vbanner3.png": "a1c677374063b5d258092aadec0dabb7",
"assets/assets/images/villa/villa1.png": "cdabc92a125e4b0e439749802e5e7e22",
"assets/assets/images/villa/villa2.png": "c2f568a95da9a44d4ea9deb021b6ab62",
"assets/assets/images/villa/villa3.png": "a0a515be0794401000959109806f94c8",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "5ec4469bc1d0f97239c3925420ee622d",
"assets/NOTICES": "0dd15e091b36a6a30960e357cedfe88b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "da59c17e7cab00aaf260355b87dd8c45",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "112487a749c092932014ef249171179b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2e9a88bae0bd72e475528f8ee614b020",
"/": "2e9a88bae0bd72e475528f8ee614b020",
"main.dart.js": "74fc393d5f9aac8f975a367fc741d495",
"manifest.json": "2d798e7d45933e28b091f5abf48d3777",
"version.json": "a6e18bdc31a1b4cb5708a94d918d04cb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
