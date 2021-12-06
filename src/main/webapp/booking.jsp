<jsp:include page="metas.jsp" />

    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div
        id="main-wrapper"
        data-layout="vertical"
        data-navbarbg="skin5"
        data-sidebartype="full"
        data-sidebar-position="absolute"
        data-header-position="absolute"
        data-boxed-layout="full"```````````````
        >

        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Fill in the form below to book when to be vaccinated</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Library
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="auth-box bg-dark border-top border-secondary">
                
                <!-- Form -->
                
                
                
                
                <form class="form-horizontal mt-3" action="insert.jsp">
                    <div class="row pb-4">
                        <div class="col-12">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span
                                        class="input-group-text bg-success text-white h-100"
                                        id="basic-addon1"
                                        ><i class="mdi mdi-account fs-4"></i
                                        ></span>
                                </div>
                                <input
                                    type="text"
                                    class="form-control form-control-lg"
                                    placeholder="Full Name"
                                    aria-label="Name"
                                    aria-describedby="basic-addon1"
                                    name="name"
                                    required
                                    />
                            </div>
                            <!-- email -->
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span
                                        class="input-group-text bg-danger text-white h-100"
                                        id="basic-addon1"
                                        ><i class="mdi mdi-hospital fs-4"></i
                                        ></span>
                                </div>
                                <input
                                    type="text"
                                    class="form-control form-control-lg"
                                    placeholder="Health Center"
                                    aria-label="healthCenter"
                                    aria-describedby="basic-addon1"
                                    name="healthCenter"
                                    required
                                    />
                            </div>
                            
                             <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span
                                        class="input-group-text bg-warning text-white h-100"
                                        id="basic-addon2"
                                        ><i class="mdi mdi-lightbulb fs-4"></i
                                        ></span>
                                </div>
                                <input
                                    type="text"
                                    class="form-control form-control-lg"
                                    placeholder="vaccine Name"
                                    aria-label="vaccine Name"
                                    aria-describedby="basic-addon1"
                                    required
                                    name="vaccine"
                                    />
                            </div>
                            
                            <%--<div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span
                                        class="input-group-text bg-danger text-white h-100"
                                        id="basic-addon1"
                                        ><i class="mdi mdi-clock fs-4"></i
                                        ></span>
                                </div>
                                <input
                                    type="time"
                                    class="form-control form-control-lg"
                                    placeholder="Book Time"
                                    aria-label="Time"
                                    aria-describedby="basic-addon1"
                                    name="time"
                                    required
                                    />
</div>--%>
                            
                           
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span
                                        class="input-group-text bg-info text-white h-100"
                                        id="basic-addon2"
                                        ><i class="mdi mdi-calendar fs-4"></i
                                        ></span>
                                </div>
                                <input
                                    type="date"
                                    class="form-control form-control-lg"
                                    placeholder="Date to be vaccinated"
                                    aria-label="dtbv"
                                    aria-describedby="basic-addon1"
                                    name="date"
                                    required
                                    />
                            </div>
                        </div>
                    </div>
                    <div class="row border-top border-secondary">
                        <div class="col-12">
                            <div class="form-group">
                                <div class="pt-3 d-grid">
                                    <button
                                        class="btn btn-block btn-lg btn-info"
                                        type="submit"
                                        >
                                        Book Now
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Booking List</h5>
                            <div class="table-responsive">
                                
                                    
                                    
                                    <%@taglib prefix="vaccination" uri="/WEB-INF/tlds/mytags" %>
            <vaccination:Show table="booking" car1="dg" car2="null" car3="null" car4="null" />
                                    
                                    
                                                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right sidebar -->
            <!-- ============================================================== -->
            <!-- .right-sidebar -->
            <!-- ============================================================== -->
            <!-- End Right sidebar -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
            All Rights Reserved by Kilo-tech. Designed and Developed by
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<jsp:include page="bottommeta.jsp" />
