███████╗███████╗██╗   ██╗███████╗    ███████╗██╗     ███████╗██╗   ██╗
██╔════╝██╔════╝██║   ██║██╔════╝    ██╔════╝██║     ██╔════╝╚██╗ ██╔╝
███████╗█████╗  ██║   ██║█████╗      █████╗  ██║     █████╗   ╚████╔╝ 
╚════██║██╔══╝  ╚██╗ ██╔╝██╔══╝      ██╔══╝  ██║     ██╔══╝    ╚██╔╝  
███████║███████╗ ╚████╔╝ ███████╗    ███████╗███████╗███████╗   ██║   
╚══════╝╚══════╝  ╚═══╝  ╚══════╝    ╚══════╝╚══════╝╚══════╝   ╚═╝   

             ██████╗ ██████╗ ██╗   ██╗███████╗██████╗ 
            ██╔════╝██╔═══██╗██║   ██║██╔════╝██╔══██╗
            ██║     ██║   ██║██║   ██║█████╗  ██████╔╝
            ██║     ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔═══╝ 
            ╚██████╗╚██████╔╝ ╚████╔╝ ███████╗██║     
             ╚═════╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝     



# Script de Limpeza de Arquivos Temporários e Logs do Windows

Este script foi desenvolvido para realizar a limpeza de arquivos temporários, lixeira, logs, caches de navegadores e outros resíduos gerados no sistema operacional Windows. Ele utiliza **CMD** e **PowerShell** para garantir maior cobertura e eficácia na exclusão de arquivos indesejados.

## Funcionalidades

- **Limpeza de Lixeira**: Remove itens da lixeira de todos os usuários.
- **Arquivos Temporários**:
  - Exclui arquivos das pastas `Temp` de usuários e do sistema.
  - Remove pastas temporárias vazias.
- **Logs do Sistema**: Exclui arquivos de log de várias localizações no Windows.
- **Cache de Navegadores**:
  - Limpeza completa para Microsoft Edge, Google Chrome, Mozilla Firefox, Brave e Vivaldi.
- **Cache do Adobe Media Cache**: Limpa resíduos gerados por programas Adobe.
- **Otimização de Serviços e Processos**:
  - Finaliza processos de navegadores para garantir limpeza eficaz.
  - Para e desativa serviços do Windows desnecessários.

## Pré-requisitos

1. **Permissões de Administrador**:
   - O script deve ser executado como **Administrador** para acesso total às pastas e arquivos do sistema.
2. **Sistema Operacional**:
   - Compatível com Windows 10 e superior.

## Como Usar

1. **Download**:
   - Baixe o arquivo do script `cleanup_script.bat`.
2. **Executar como Administrador**:
   - Clique com o botão direito no script e selecione **Executar como Administrador**.
3. **Siga as Instruções**:
   - O script solicita interações em algumas etapas para confirmar ou pausar as ações.

## Estrutura do Script

1. **Validação de Permissões**:
   - Garante que o script está sendo executado como administrador.
2. **Limpeza Organizada**:
   - Dividido por seções como lixeira, temporários, logs, e navegadores.
3. **Uso de CMD e PowerShell**:
   - Comandos complementares para maior eficácia.

## Avisos

- **Cuidado com Arquivos Importantes**:
  - Certifique-se de que não há arquivos importantes nas pastas `Temp` ou lixeira antes de executar.
- **Impacto em Navegadores**:
  - O script encerra navegadores e remove caches, o que pode resultar na perda de sessões ou dados de navegação.
- **Desativação de Serviços**:
  - Serviços como `SysMain` e `WSearch` são desativados. Reative-os manualmente se necessário.

## Personalização

Você pode modificar o script para incluir ou excluir pastas específicas ou adicionar novos navegadores conforme suas necessidades.

## Autor

Desenvolvido por **Germeson Pereira**  
**Analista de TI**

---

**Licença**: Uso interno. Modificações permitidas para fins pessoais ou organizacionais.
