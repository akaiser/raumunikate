{{flutter_js}}
{{flutter_build_config}}

const loadingEl = document.querySelector('#loading');

_flutter.loader.load({
    onEntrypointLoaded: async function (engineInitializer) {
        const appRunner = await engineInitializer.initializeEngine({
            // hack
            canvasKitBaseUrl: "raumunikate/canvaskit/"
        });
        await appRunner.runApp();
        loadingEl.remove();
    }
});
