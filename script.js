// Fetch products from backend
fetch('fetch_products.php')
    .then(response => response.json())
    .then(data => {
        const productsDiv = document.getElementById('products');
        productsDiv.innerHTML = data.map(product => `
            <div>
                <img src="${product.image_path}" alt="${product.name}" />
                <h3>${product.name}</h3>
                <p>Price: NPR ${product.price}</p>
            </div>
        `).join('');
    });
