
<%@page import="java.util.ArrayList"%>
<%@page import="demo.Disciplina"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <%
 
  Disciplina poo = new Disciplina("ILP007", "Programação Orientada a Objeto", "JAVA,JSP,SERVLETS", "Segunda-Feira", "19:00");
  Disciplina so =  new Disciplina("ISO200", "Sistemas Operacionais II", "Linux, Open-Source, Android, Mac OSX", "Terça-Feira", "19:00");  
  Disciplina ling =  new Disciplina("ILP512", "Linguagem de Programação IV ", "PHP", "Quarta-Feira", "19:00");
  Disciplina eng =  new Disciplina("IES300", "Engenharia de Software III ", "Arquitetura de Software", "Quinta-Feira", "19:00");
  Disciplina meto = new Disciplina("TTG001", "Metodologia da Pesquisa Cientifica Tecnologica", "ABNT, Pesquisa Cientifica, Artigo Cientifico", "Sexta-Feira", "19:00");
  Disciplina ingles =  new Disciplina("LIN400", "Inglês IV ", "Simple Past, Speaking, Job Apply", "Sexta-Feira", "21:00");
  Disciplina banco =  new Disciplina("IBD002", "Bando de dados", "Modelo conceitual, lógico e físico. SQL Oracle", "Sábado", "08:00");
  
    ArrayList<Disciplina> lista = new ArrayList<>();
    lista.add(poo); 
    lista.add(so);    
    lista.add(ling);
    lista.add(eng); 
    lista.add(meto);     
    lista.add(ingles); 
    lista.add(banco); 
%>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplina</title>
    </head>
    <body>
        <h1>Nome: Gerson Rangel Garcia</h1>
        <h2>1290482023016</h2>
        <h1>Nome: Sabrina Maria Andrade Carvalho</h1>
        <h2>1290481923051</h2>
        
        <%Date agora = new Date();%>
        
        <div> 
            <% 
                out.print(agora);
            %>
        </div>
        
                    <table border="4">
                <tr>
                    <th>Disciplina</th> 
                    <th>Sigla:</th>   
                    <th>Ementa:</th>  
                    <th>Dia da Semana:</th>  
                    <th>Horário:</th>  
                   
                </tr>
                <% for(Disciplina d: lista) {%>
                <tr> 
                    <td><%= (d.getNome()!=null) ? d.getNome(): "" %></td>
                    <td><%= (d.getSigla()!=null) ? d.getSigla(): "" %></td>
                    <td><%= (d.getEmenta()!=null) ? d.getEmenta(): "" %></td> 
                    <td><%= (d.getDiaDaSemana()!=null) ? d.getDiaDaSemana(): "" %></td> 
                    <td><%= (d.getHorario()!=null) ? d.getHorario(): "" %></td> 
                    
                  

                </tr>
                  <%}%>    
            </table>
    </body>
</html>
