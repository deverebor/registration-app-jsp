<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link
    rel="preconnect"
    href="https://fonts.gstatic.com"
    crossorigin
  />
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1.0"
  />
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
    rel="stylesheet"
  />
  <title>Agenda Pessoal - Guarde seus contatos</title>
  <style type="text/css">
		:root {
			--white: #fff;
			--gray-100: #e1e1e6;
			--gray-300: #c4c4cc;
			--gray-400: #8d8d99;
			--gray-600: #323238;
			--gray-700: #29292e;
			--gray-800: #202024;
			--gray-900: #121214;
			--green-300: #00B37E;
			--green-500: #00875f;
			--blue-300: #1f8cff;
			--red-500: #F75A68;
		}
		:focus {
			outline: transparent;
			box-shadow: 0 0 0 2px var(--green-500);
		}
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		body {
			background-color: var(--gray-900);
			color: var(--gray-300);
			-webkit-font-smoothing: antialiased;
			margin: 0;
		}
		body,
		input,
		textarea,
		button {
			font-family: 'Roboto', sans-serif;
			font-size: 1rem;
			font-weight: 400;
		}
		.registration {
			display: flex;
			flex-direction: column;
			place-content: center;
			place-items: center;
			margin-block-start: 40vh;
		}
		.registration__header-title {
			font-size: 32px;
			font-weight: 700;
			color: var(--blue-300);
		}
		.registration__header-subtitle {
			font-size: 24px;
			font-weight: 400;
			margin-block-start: 16px;
			margin-block-end: 32px;
		}
		.registration__form-label,
		.registration__form-label-input {
			font-size: 16px;
			text-align: start;
		}
		.registration__form-label {
			display: flex;
			padding-block-start: 16px;
			width: 32%;
		}
		.registration__button {
			margin-block-start: 48px;
			display: flex;
			justify-content: space-between;
			place-content: center;
			place-items: center;
			width: 200px;
			height: 40px;
			border: none;
			border-radius: 8px;
			background-color: var(--green-300);
			color: var(--white);
			font-size: 16px;
			font-weight: 700;
			cursor: pointer;
			transition: filter 0.2s;
		}
		.registration__button:hover {
			filter: brightness(0.9);
		}
		.registration__button img {
			color: var(--white);
			width: 24px;
			height: 24px;
			margin-inline-start: 8px;
			transition: all 0.3s ease-in-out;
		}
		.registration__button:hover img {
			transform: rotate(90deg);
			width: 32px;
			height: 32px;
		}
  </style>
</head>
<body>
<section class="registration">
  <header class="registration__header">
    <h1 class="registration__header-title"> Agenda Pessoal. </h1>
    <h2 class="registration__header-subtitle"> Cadastre um novo contato! </h2>
  </header>

  <form
    class="registration__form"
    action="NewContactRegistrationServlet"
    method="POST"
  >
    <label
      class="registration__form-label"
      for="name"
    >
      Nome:

      <input
        class="registration__form-label-input"
        type="text"
        name="name"
        id="name"
        placeholder="Digite o nome"
      />
    </label>


    <label
      class="registration__form-label"
      for="lastName"
    >
      Sobrenome:

      <input
        class="registration__form-label-input"
        type="text"
        name="lastName"
        id="lastName"
        placeholder="Digite o sobrenome"
      />
    </label>

    <label
      class="registration__form-label"
      for="telephone"
    >
      Telefone:

      <input
        class="registration__form-label-input"
        type="text"
        name="telephone"
        id="telephone"
        placeholder="Digite o telefone"
      />
    </label>

    <label
      class="registration__form-label"
      for="cep"
    >
      CEP:

      <input
        class="registration__form-label-input"
        type="text"
        name="cep"
        id="cep"
        placeholder="Digite o telefone"
      />
    </label>

    <label
      class="registration__form-label"
      for="address"
    >
      Endereço:

      <input
        class="registration__form-label-input"
        type="text"
        name="address"
        id="address"
        placeholder="Digite o telefone"
      />
    </label>

    <label
      class="registration__form-label"
      for="addressComplement"
    >
      Complemento:

      <input
        class="registration__form-label-input"
        type="text"
        name="addressComplement"
        id="addressComplement"
        placeholder="Digite o telefone"
      />
    </label>

    <button class="registration__button" type="submit">
      Cadastrar

      <img
        loading="lazy"
        src="https://img.icons8.com/ios/50/FFFFFF/plus.png"
        alt="Ícone com uma simbolo de mais para adicionar um novo contato"
      />
    </button>
  </form>
</section>
</body>
</html>