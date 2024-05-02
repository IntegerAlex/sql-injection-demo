"use strict";

const form = document.querySelector("form");
const userInput = document.querySelector("#product-name");
const renderContent = document.querySelector("#render-content");

form.addEventListener("submit", async e => {

    renderPreloader();

    e.preventDefault();
    const productName = userInput.value;

    const response = await fetch("/products", {

        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            name: productName,
        }),
    });

    const result = await response.json();

    if (response.status === 200)
        setTimeout(() => createTable(result), 1000);
    else
        setTimeout(() => renderError(result), 1000);
});

function createTable(products) {

    const columns = [
        { name: 'Product ID', icon: 'local_offer' },
        { name: 'Product Name', icon: 'title' },
        { name: 'Description', icon: 'description' },
        { name: 'Price', icon: 'attach_money' },
        { name: 'Stock Quantity', icon: 'inventory' }
    ];

    const header = columns.map(column => {
        return /* html */ `
            <th>${column.name}<i class="material-icons hide-on-med-and-down">${column.icon}</i></th>
        `;
    }).join('');

    const checkForWordWrap = value => {

        if (value.length >= 100) {
            const chunk = Math.ceil(value.length / 4);
            return /* html */ `
                <span class="hide-on-med-and-down">
                    <p>${value.slice(0, chunk)}</p>
                    <p>${value.slice(chunk, chunk * 2)}</p>
                    <p>${value.slice(chunk * 2, chunk * 3)}</p>
                    <p>${value.slice(chunk * 3, chunk * 4)}</p>
                </span>
                <span class="hide-on-large-only">
                    ${value}
                </span>
            `;
        }

        return value;
    };

    const rows = products.map(product => {
        const values = Object.values(product);
        return /* html */ `
            <tr>
                ${
                    values.map(value => {    
                        return /* html */ `
                            <td>${checkForWordWrap(value)}</td>
                        `;
                    }).join('')
                }
            </tr>
        `;
    }).join('');

    const output = /* html */ `
        <div class="animate__animated animate__zoomIn" id="table-container">
        <div class="stick-1"></div>
            <table class="striped centered responsive-table">
                    <thead>
                        <tr>
                            ${header}
                        </tr>
                    </thead>
                    <tbody>
                        ${rows}
                    </tbody>
            </table>
            <div class="stick-2"></div>
        </div>
    `;

    renderContent.innerHTML = output;
}

function renderError({
    message
}) {
    const icon = message === "Internal Server Error" ? "storage" : "error_outline";

    const output = /* html */ `
        <div class="animate__animated animate__bounceIn">
            <center>
                <h3 class="error">${message}</h3>
                <i class="large material-icons error">${icon}</i>
            </center>
        </div>
    `;

    renderContent.innerHTML = output;
}

function renderPreloader() {

    const loader = /* html */ `
        <div class="loader">
            <center>
                <div class="preloader-wrapper small active">
                    <div class="spinner-layer spinner-green-only">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div><div class="gap-patch">
                            <div class="circle"></div>
                        </div><div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>
                </div>
            </center>
        </div>
    `;

    renderContent.innerHTML = loader;
}
