<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from colorlib.com/polygon/cooladmin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Aug 2018 14:12:05 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <jsp:include page="include/Top.jsp"></jsp:include>

</head>
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <jsp:include page="include/HeaderMobile.jsp"></jsp:include>
        <!-- END HEADER MOBILE-->
        <!-- MENU SIDEBAR-->
        <jsp:include page="include/Sidebar.jsp"></jsp:include>
        <!-- END MENU SIDEBAR-->
        <!-- PAGE CONTAINER-->
        <div class="page-container">
           <!-- HEADER DESKTOP-->
           		<jsp:include page="include/Header.jsp"></jsp:include>
	      	<!-- HEADER DESKTOP-->
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Danh sách thành viên</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">Theo thuộc tính</option>
                                                <option value="">Họ tên</option>
                                                <option value="">Độ tuổi</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Ngày tham gia</option>
                                                <option value="">3 ngày</option>
                                                <option value="">1 tuần</option>
                                                <option value="">1 tháng</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>Lọc</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>Thêm thành viên</button>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2" name="type">
                                                <option selected="selected">Excel</option>
                                                <option value="">Import</option>
                                                <option value="">Export</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Họ tên</th>
                                                <th>email</th>
                                                <th>Giới tính</th>
                                                <th>Ngày sinh</th>
                                                <th>Trạng thái</th>
                                                <th>Ngày tham gia</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>Lori Lynch</td>
                                                <td>
                                                    <span class="block-email"><a href="https://colorlib.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="14787b667d54716c75796478713a777b79">[email&#160;protected]</a></span>
                                                </td>
                                                <td class="desc">Samsung S8 Black</td>
                                                <td>2018-09-27 02:12</td>
                                                <td>
                                                    <span class="status--process">Processed</span>
                                                </td>
                                                <td>$679.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Gửi thông báo">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Sửa">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Xóa">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Chi tiết">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>Lori Lynch</td>
                                                <td>
                                                    <span class="block-email"><a href="https://colorlib.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="264c494e4866435e474b564a430845494b">[email&#160;protected]</a></span>
                                                </td>
                                                <td class="desc">iPhone X 64Gb Grey</td>
                                                <td>2018-09-29 05:57</td>
                                                <td>
                                                    <span class="status--process">Processed</span>
                                                </td>
                                                <td>$999.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>Lori Lynch</td>
                                                <td>
                                                    <span class="block-email"><a href="https://colorlib.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f09c899eb09588919d809c95de939f9d">[email&#160;protected]</a></span>
                                                </td>
                                                <td class="desc">iPhone X 256Gb Black</td>
                                                <td>2018-09-25 19:03</td>
                                                <td>
                                                    <span class="status--denied">Denied</span>
                                                </td>
                                                <td>$1199.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>Lori Lynch</td>
                                                <td>
                                                    <span class="block-email"><a href="https://colorlib.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6703080227021f060a170b024904080a">[email&#160;protected]</a></span>
                                                </td>
                                                <td class="desc">Camera C430W 4k</td>
                                                <td>2018-09-24 19:10</td>
                                                <td>
                                                    <span class="status--process">Processed</span>
                                                </td>
                                                <td>$699.00</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                            <i class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>
    </div>
	<jsp:include page="include/Bottom.jsp"></jsp:include>
</body>
<!-- Mirrored from colorlib.com/polygon/cooladmin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Aug 2018 14:12:18 GMT -->
</html>
<!-- end document-->