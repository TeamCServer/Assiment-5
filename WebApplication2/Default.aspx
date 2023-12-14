<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <div class="pt-xxl-4"></div>
    <div id="carouselExampleIndicators" class="carousel slide pt-xxl-4" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/9701.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="image/5699751.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="image/8255514.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="pt-xxl-4 pb-xl-4"></div>
    <main class="container body-content pt-4 pb-xl-4">
        <section class="row pb-4" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle" class="fw-bold text-center">Welcome TeamC</h1>
            <p class="lead text-center">You can rent, buy, or sell vehicles, as well as hire drivers, on this website.</p>
            <div class="d-grid gap-2 col-3 mx-auto">
                <a class="btn btn btn-primary" href="#gettingStartedTitle">Experience Now</a>
            </div>
        </section>
        <div class="pt-xxl-4 pb-xl-4" id="gettingStartedTitle"></div>
        <div class="pt-xxl-4 pb-xl-4"></div>
        <div class="row pt-4 pb-xl-4">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <div aria-labelledby="gettingStartedTitle">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-bag-heart-fill" viewBox="0 0 16 16">
                        <path d="M11.5 4v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4zM8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m0 6.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132" />
                    </svg>
                    <h2 class="col-sm-8 mt-2 fw-bold ">Want to Buy</h2>
                </div>
                <p>
                    Looking to purchase the best vehicle? You can choose your preferred vehicle here for purchase.
                    <br />
                    <br />
                </p>
                <div>
                    <a class="btn btn btn-primary" href="<%= ResolveUrl("~/service/buycar.aspx") %>">Buy Now</a>
                </div>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <div aria-labelledby="gettingStartedTitle">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-car-front-fill" viewBox="0 0 16 16">
                        <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807 0 0 0 .381-.404l.792-1.848ZM3 10a1 1 0 1 0 0-2 1 1 0 0 0 0 2m10 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2M6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2zM2.906 5.189a.51.51 0 0 0 .497.731c.91-.073 3.35-.17 4.597-.17 1.247 0 3.688.097 4.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 11.691 3H4.309a.5.5 0 0 0-.447.276L2.906 5.19Z" />
                    </svg>
                    <h2 class="col-sm-8 mt-2 fw-bold ">Want to Rent</h2>
                </div>
                <p>
                    Do you prefer to rent rather than purchase? You can rent a car and a driver here.
                    <br />
                    <br />
                </p>
                <div>
                    <a class="btn btn btn-primary" href="<%= ResolveUrl("~/service/rentcar.aspx") %>">Rent Now</a>
                </div>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <div aria-labelledby="gettingStartedTitle">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-question-octagon-fill" viewBox="0 0 16 16">
                        <path d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353L11.46.146zM5.496 6.033a.237.237 0 0 1-.24-.247C5.35 4.091 6.737 3.5 8.005 3.5c1.396 0 2.672.73 2.672 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.105a.25.25 0 0 1-.25.25h-.81a.25.25 0 0 1-.25-.246l-.004-.217c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.803 0-1.253.478-1.342 1.134-.018.137-.128.25-.266.25h-.825zm2.325 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927z" />
                    </svg>
                    <h2 class="col-sm-8 mt-2 fw-bold ">Have Question</h2>
                </div>
                <p>
                    Do you have any questions or feedback regarding this website? Click here to leave a message, and a dedicated team member will assist you.
                </p>
                <div>
                    <a class="btn btn btn-primary" href="Contact.aspx">Fill Form</a>
                </div>
            </section>
        </div>
        <div class="pt-xxl-4 pb-xxl-4"></div>
        <div class="pt-xxl-4 pb-xxl-4"></div>
        <div class="container pt-xxl-4 pb-xxl-4">
            <div class="row">
                <div class="col-sm-4">
                    <img src="image/2710477.png" class="d-block w-100" alt="...">
                </div>
                <div class="col-sm-8 pt-xxl-4">
                    <p class="lead text-left p-xxl-4">
                        We are a platform that facilitates connections between sellers and renters of construction equipment, 
                        contractors, drivers, and subcontractors. Through transparent information display, we enable 
                        contractors in need of machinery or drivers, as well as licensed drivers seeking work opportunities, 
                        to find suitable partners to meet their requirements.
                    </p>
                    <div class="p-4">
                        <a class="btn btn btn-primary " href="About.aspx">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="pt-xxl-4 pb-xxl-4"></div>

    </main>
    <div class="pt-xxl-4 bg-black pb-1">
        <div class="container">
            <div class="row row d-flex justify-content-center align-items-center">
                <div class="col d-flex align-items-center justify-content-center text-center">
                    <img src="image/logo-02.png" class="d-block w-70 pt-xxl-4 pb-xxl-4" alt="...">
                </div>
                <div class="col text-center pt-xxl-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-telephone-inbound-fill" viewBox="0 0 16 16" style="fill: white;">
                        <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM15.854.146a.5.5 0 0 1 0 .708L11.707 5H14.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 1 0v2.793L15.146.146a.5.5 0 0 1 .708 0z" />
                    </svg>
                    <p class="lead text-white pt-4">
                        <a href="tel:+886227333141" style="text-decoration: none;" class="text-white">Tel: 886-2-27333141</a>
                    </p>
                </div>
                <div class="col text-center pt-xxl-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-geo-fill" viewBox="0 0 16 16" style="fill: white;">
                        <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411" />
                    </svg>
                    <p class="lead text-white pt-4">
                        <a href="https://www.google.com/maps?q=106335+臺北市大安區基隆路4段43號" class="text-white" style="text-decoration: none;" target="_blank">106335 No. 43, Section 4, Keelung Road, Da'an District, Taipei City.</a>
                    </p>
                </div>
            </div>
            <div>
                <hr class="text-white" />
            </div>
        </div>
    </div>
</asp:Content>
