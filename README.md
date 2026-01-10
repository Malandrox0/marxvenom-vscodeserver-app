# MarxVenom VS Code Server App

⚠️ **Projeto em desenvolvimento**  
Este repositório faz parte de um aplicativo Android em construção.  
Atualmente, o foco está na automação e validação do método de instalação do VS Code Server no Android.

---

## 📌 Sobre o projeto

O **MarxVenom VS Code Server App** é um aplicativo Android que tem como objetivo **instalar, configurar e iniciar o VS Code Server automaticamente**, oferecendo uma experiência simples, direta e integrada.

O objetivo final do app é:

- Executar o VS Code Server sem exigir uso manual do Termux  
- Possuir **terminal próprio integrado**  
- Possuir **navegador integrado** ou abertura automática da URL  
- Gerenciar instalação, inicialização e configuração com poucos toques  

O usuário **não precisará copiar comandos**, nem configurar nada manualmente.

---

## 🧠 Estado atual do projeto

✔ Método funcional de instalação validado no Termux  
✔ Script automatizado para instalação e configuração  
✔ Senha padrão definida automaticamente  
🚧 Aplicativo Android ainda em desenvolvimento  
🚧 Interface, botões e terminal integrado em fase de planejamento  

---

## ⚙️ Script automatizado atual

O script abaixo representa o **núcleo funcional** que futuramente será executado pelo aplicativo Android de forma interna.

Arquivo: `vscodeserver.sh`

### O que ele faz automaticamente:
- Atualiza os pacotes do Termux
- Instala o repositório necessário
- Instala o `code-server`
- Configura senha fixa
- Inicia o VS Code Server

Senha padrão definida:12345678
URL padrão: http://127.0.0.1:8080
---

## ▶️ Uso atual (modo desenvolvimento)

```bash
git clone https://github.com/Malandrox0/marxvenom-vscodeserver-app.git
cd marxvenom-vscodeserver-app
chmod +x vscodeserver.sh
./vscodeserver.sh

⚠️ Este método é temporário
No app final, todo esse processo será executado automaticamente sem interação manual.

🚀 Visão futura do app
Funcionalidades planejadas:
Botão Instalar VS Code
Botão Iniciar / Parar servidor
Exibição automática da senha
Botão Copiar senha
Botão Abrir VS Code
Logs visuais integrados
Terminal interno invisível ao usuário
Detecção automática de dependências
📱 Plataforma alvo
Android
Baseado em Termux como backend
App nativo com interface própria
📄 Licença
Este projeto está em desenvolvimento ativo.
Licença será totalmente definida posteriormente.
