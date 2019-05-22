'use strict';

const path = require('path');

module.exports = Franz => {
  let modal;
  let updates = 0;

  const createModal = () => {
    const franzModal = document.createElement('div');
    franzModal.setAttribute('id', 'franz-modal');
    franzModal.innerHTML = '<div class="modal-content"><span class="close">&times;</span><p></p></div>';
    franzModal.querySelector('.close').addEventListener('click', hideModal);

    return franzModal;
  };

  const showModal = text => {
    modal.querySelector('p').innerHTML = text;
    updates++;
    modal.classList.add('open');
  };

  const hideModal = () => {
    modal.querySelector('p').innerHTML = '';
    updates--;
    modal.classList.remove('open');
  };

  window.alert = showModal;

  const getMessages = () => Franz.setBadge(updates);

  modal = createModal();
  document.addEventListener('DOMContentLoaded', event => {
    document.body.appendChild(modal);
    document.addEventListener('keydown', event => event.keyCode === 27 && hideModal());
  });

  Franz.injectCSS(path.join(__dirname, 'calendar.css'));
  Franz.loop(getMessages);
};
