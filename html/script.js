window.addEventListener('message', function(event) {
    if (event.data.alert) {
        createNotification(event.data.data)
    }
});

function createNotification(data) {
    const notificationContainer = document.getElementById('notification-container');

    const container = document.createElement('div');
    container.className = 'container';

    if (data.isImportant) {
        container.classList.add('officer-down');
    }

    if (data.job) {
        container.classList.add(data.job);
    }

    const header = document.createElement('div');
    header.className = 'header';

    const badge = document.createElement('div');
    badge.className = 'badge';
    badge.innerText = data.badge;

    const title = document.createElement('div');
    title.className = 'title';
    title.innerHTML = `<span>${data.title}</span>`;

    const locationIcon = document.createElement('div');
    locationIcon.className = 'location-icon';
    const jobImage = document.createElement('img');
    jobImage.src = `img/${data.job}.png`;
    jobImage.style.width = '90px';
    jobImage.style.height = '90px';
    locationIcon.appendChild(jobImage);

    header.appendChild(badge);
    header.appendChild(title);
    header.appendChild(locationIcon);

    const content = document.createElement('div');
    content.className = 'content';

    const info = document.createElement('div');
    info.className = 'info';
    info.innerHTML = `<i class="fas fa-phone-alt"></i><span>${data.info.replace(/\n/g, '<br>')}</span>`;

    const location = document.createElement('div');
    location.className = 'location';
    location.innerHTML = `<i class="fas fa-globe-asia"></i><span>${data.location}</span>`;

    content.appendChild(info);
    content.appendChild(location);

    container.appendChild(header);
    container.appendChild(content);

    notificationContainer.appendChild(container);

    setTimeout(() => {
        container.style.animation = 'hideNoti 0.5s forwards';
        setTimeout(() => {
            notificationContainer.removeChild(container);
        }, 500);
    }, data.length);
}