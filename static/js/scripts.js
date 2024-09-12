// Lấy dữ liệu từ file JSON
fetch('/static/data/data.json')
.then(response => response.json())
.then(data => {
    const events = data.Events;
    const table = document.getElementById('eventTable');
    const headerRow = table.querySelector('thead tr');
    const tbody = table.querySelector('tbody');

    // Tạo tiêu đề cột
    Object.keys(events[0]).forEach(key => {
        const th = document.createElement('th');
        th.textContent = key;
        headerRow.appendChild(th);
    });

    // Thêm tiêu đề cho cột chọn ở cuối
    const thSelect = document.createElement('th');
    const selectAllCheckbox = document.createElement('input');
    selectAllCheckbox.type = 'checkbox';
    selectAllCheckbox.id = 'selectAll'; // Thêm id cho checkbox "Chọn tất cả"
    thSelect.appendChild(selectAllCheckbox); // Thêm checkbox vào tiêu đề
    headerRow.appendChild(thSelect); // Thêm tiêu đề cột chọn vào hàng tiêu đề

    // Xử lý sự kiện cho checkbox "Chọn tất cả"
    selectAllCheckbox.addEventListener('change', (event) => {
        const checkboxes = document.querySelectorAll('.row-select');
        checkboxes.forEach(checkbox => {
            checkbox.checked = event.target.checked; // Tích hoặc bỏ tích tất cả checkbox
        });
    });

    // Tạo hàng dữ liệu
    events.forEach(event => {
        const row = document.createElement('tr');

        Object.values(event).forEach(value => {
            const td = document.createElement('td');
            td.textContent = value;
            row.appendChild(td);
        });

        // Tạo ô checkbox cho mỗi hàng và thêm vào cuối hàng
        const tdSelect = document.createElement('td');
        const checkbox = document.createElement('input');
        checkbox.type = 'checkbox';
        checkbox.className = 'row-select'; // Thêm lớp cho checkbox nếu cần
        tdSelect.appendChild(checkbox); // Thêm checkbox vào ô
        row.appendChild(tdSelect); // Thêm ô checkbox vào cuối hàng

        tbody.appendChild(row);
    });
});
    // .then(response => response.json())
    // .then(data => {
    //     const events = data.Events;
    //     const table = document.getElementById('eventTable');
    //     const headerRow = table.querySelector('thead tr');
    //     const tbody = table.querySelector('tbody');

    //     // Tạo tiêu đề cột
    //     Object.keys(events[0]).forEach(key => {
    //         const th = document.createElement('th');
    //         th.textContent = key;
    //         headerRow.appendChild(th);
    //     });

    //     // Tạo hàng dữ liệu
    //     events.forEach(event => {
    //         const row = document.createElement('tr');
    //         Object.values(event).forEach(value => {
    //             const td = document.createElement('td');
    //             td.textContent = value;
    //             row.appendChild(td);
    //         });
    //         tbody.appendChild(row);
    //     });
    // });
// document.addEventListener("DOMContentLoaded", function () {
//     // Dữ liệu mẫu để thêm vào bảng
//     const eventData = [
//         { project: "Project 1", ecu: "BCM", status: "Active" },
//         { project: "Project 2", ecu: "BCM 1", status: "Inactive" },
//         { project: "Project 3", ecu: "BCM 2", status: "Active" },
//         { project: "Project 4", ecu: "BCM 3", status: "Inactive" },
//         { project: "Project 5", ecu: "BCM 4", status: "Active" }
//     ];

//     const tableBody = document.getElementById('eventTable').getElementsByTagName('tbody')[0];

//     // Hàm thêm dữ liệu vào bảng
//     function addDataToTable(data) {
//         data.forEach(event => {
//             const row = tableBody.insertRow();
//             row.insertCell(0).innerText = event.project;
//             row.insertCell(1).innerText = event.ecu;
//             row.insertCell(2).innerText = event.status;
//         });
//     }

//     // Thêm dữ liệu vào bảng khi tải trang
//     addDataToTable(eventData);
// });