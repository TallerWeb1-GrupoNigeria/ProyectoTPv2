<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="_header.jsp" %>


  <div class="py-2">
    <div class="container">
      <div class="row">
        
        <!-- CARROUSEL -->
        
        <div class="col-md-9">
          <div id="carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              
              <div class="carousel-item active">
                <img class="d-block img-fluid w-100" src="img/imagenCarrusel01.jpg">
                <div class="carousel-caption">
                  <h3>First slide label</h3>
                  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </div>
              </div>
              
              <div class="carousel-item">
                <img class="d-block img-fluid w-100" src="img/imagenCarrusel02.jpg">
                <div class="carousel-caption">
                  <h3>Second slide label</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
              
              <div class="carousel-item">
                <img class="d-block img-fluid w-100" src="img/imagenCarrusel03.jpg">
                <div class="carousel-caption">
                  <h3>Second slide label</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
            
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
              <span class="carousel-control-next-icon"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        
        <!-- BANNER LADO DERECHO -->
        
        <div class="col-md-3">
          <div class="blockquote">
            <p class="mb-0">Blockquoute</p>
            <div class="blockquote-footer">Someone famous in My memories</div>
          </div>
          <div class="blockquote">
            <p class="mb-0">Blockquoute</p>
            <div class="blockquote-footer">Someone famous in My memories</div>
          </div>
          <div class="blockquote">
            <p class="mb-0">Blockquoute</p>
            <div class="blockquote-footer">Someone famous in My memories</div>
          </div>
        </div>
      </div>
      
      <!-- 2 CARDS -->
      <div class="row py-2">
      
      	<c:forEach items="${ keyListarEventos }" var="evento">
	        <div class="col-md-6">
	          <div class="card">
	            <img class="card-img-top" src="img/${ evento.getImagen() }" alt="Card image cap">
	            <div class="card-body">
	              <h5 class="card-title">${ evento.getNombre() }</h5>
	              <p class="card-text">${ evento.getDescripcion() }</p>
	              <a href="#" class="btn btn-primary">Ir al Evento</a>
	            </div>
	          </div>
	        </div>
        </c:forEach>
      </div>
      
      <div class="row">
        <div class="col-md-12">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#">
                <span>«</span>
                <span class="sr-only">Previous</span>
              </a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">
                <span>»</span>
                <span class="sr-only">Next</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <%@ include file="_footer.jsp" %>
  
  
  
  