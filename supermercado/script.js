
document.addEventListener('DOMContentLoaded', () => {
    const containers = document.querySelectorAll('.login-container, .register-container, .dashboard-container');
    containers.forEach(container => {
      container.style.opacity = '0';
      container.style.transform = 'translateY(20px)';
      setTimeout(() => {
        container.style.opacity = '1';
        container.style.transform = 'translateY(0)';
      }, 200);
    });
  });