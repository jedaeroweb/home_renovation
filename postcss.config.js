module.exports = {
    plugins: [
        require('postcss-url')({
            url: asset => {
                if (asset.url.startsWith('/fonts')) {
                    return '../fonts/' + asset.url.split('/').pop();
                }
                return asset.url;
            }
        })
    ]
};
