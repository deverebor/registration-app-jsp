<%--
  Created by IntelliJ IDEA.
  User: lucas
  Date: 22/11/2022
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
		.schedule {
			display: flex;
			flex-direction: column;
			place-content: center;
			place-items: center;
			margin-block-start: 45vh;
		}
		.schedule__header-title {
			font-size: 32px;
			font-weight: 700;
			color: var(--green-300);
		}
		.schedule__header-subtitle {
			font-size: 24px;
			font-weight: 400;
			margin-block-start: 16px;
			margin-block-end: 32px;
		}
		.schedule__label,
		.schedule__label-emphasis {
			font-size: 16px;
			text-align: start;
		}
		.schedule__label {
			padding-block-start: 16px;
			width: 32%;
		}
		.schedule__button {
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
		.schedule__button:hover {
			filter: brightness(0.9);
		}
		.schedule__button img {
			color: var(--white);
			width: 24px;
			height: 24px;
			margin-inline-start: 32px;
			transition: all 0.3s ease-in-out;
		}
		.schedule__button:hover img {
			transform: rotate(360deg);
			width: 32px;
			height: 32px;
		}
  </style>
</head>
<body>
<section class="schedule">
  <header class="schedule__header">
    <h1 class="schedule__header-title">Contato cadastrado com sucesso!</h1>
    <h2 class="schedule__header-subtitle">
      Informações do contato cadastrado.
    </h2>
  </header>

  <label class="schedule__label">
    Nome:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("name")%>
    </strong>
  </label>
  <label class="schedule__label">
    Sobrenome:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("lastName")%>
    </strong>
  </label>
  <label class="schedule__label">
    Telefone:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("telephone")%>
    </strong>
  </label>
  <label class="schedule__label">
    CEP:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("cep")%>
    </strong>
  </label>
  <label class="schedule__label">
    Endereço:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("address")%>
    </strong>
  </label>
  <label class="schedule__label">
    Complemento:
    <strong class="schedule__label-emphasis">
      <%= request.getAttribute("addressComplement")%>
    </strong>
  </label>

  <button
    class="schedule__button"
    type="submit"
    value="return"
    onclick="history.back()"
  >
    Retornar

    <img
      loading="lazy"
      src="https://img.icons8.com/ios-glyphs/30/FFFFFF/return.png"
      alt=""
    />
  </button>
</section>
</body>
</html>
