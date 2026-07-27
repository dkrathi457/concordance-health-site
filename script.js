document.addEventListener('DOMContentLoaded', function () {
  var toggle = document.getElementById('navToggle');
  var panel = document.getElementById('navPanel');

  if (!toggle || !panel) return;

  toggle.addEventListener('click', function () {
    var isOpen = panel.classList.toggle('open');
    toggle.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
  });

  panel.querySelectorAll('a').forEach(function (link) {
    link.addEventListener('click', function () {
      panel.classList.remove('open');
      toggle.setAttribute('aria-expanded', 'false');
    });
  });
});
