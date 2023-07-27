package org.apache.jsp.WEB_002dINF.view.tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatDate_value_pattern_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_varStatus_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_url_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_setLocale_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_varStatus_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_url_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_setLocale_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.release();
    _jspx_tagPool_c_forEach_varStatus_var_items.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_url_value_nobody.release();
    _jspx_tagPool_fmt_setLocale_value_nobody.release();
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_fmt_setLocale_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <!--Import CSS-->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"");
      if (_jspx_meth_c_url_0(_jspx_page_context))
        return;
      out.write("\" type=\"image/x-icon\" sizes=\"30x30\">\n");
      out.write("        <link href=\"https://pro.fontawesome.com/releases/v5.10.0/css/all.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_1(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_2(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_3(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_4(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_5(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\"> \n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>Nha Trang Nature Elite</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <section class=\"mainBooking\">\n");
      out.write("            <div class=\"checkout\">\n");
      out.write("                <div class=\"booking\">\n");
      out.write("                    <form method=\"post\" id=\"handleSubmitForm\" action=\"");
      if (_jspx_meth_c_url_6(_jspx_page_context))
        return;
      out.write("\">\n");
      out.write("                        <input type=\"hidden\" id=\"PriceId\" name=\"PriceId\" value=\"15\" />\n");
      out.write("                        <div class=\"wrapper\">\n");
      out.write("                            <div class=\"boxLeft\">\n");
      out.write("                                <h3 class=\"checkoutTitle\">Thông tin của bạn</h3>\n");
      out.write("                                <p>\n");
      out.write("                                    Vui lòng điền đầy đủ thông tin vào trường bắt buộc (\n");
      out.write("                                    <span class=\"pink-color\">*</span>\n");
      out.write("                                    )\n");
      out.write("                                </p>\n");
      out.write("                                <div class=\"text-danger validation-summary-valid\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li style=\"display: none\"></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"formRow\">\n");
      out.write("                                    <div class=\"formGroup\">\n");
      out.write("                                        <label for=\"Name\"> Tên đầy đủ </label>\n");
      out.write("                                        <span class=\"pink-color\">*</span>\n");
      out.write("                                        <input\n");
      out.write("                                            required=\"\"\n");
      out.write("                                            class=\"formControl\"\n");
      out.write("                                            placeholder=\"Vui lòng nhập tên của bạn.\"\n");
      out.write("                                            type=\"text\"\n");
      out.write("                                            id=\"Name\"\n");
      out.write("                                            maxlength=\"50\"\n");
      out.write("                                            name=\"Name\"\n");
      out.write("                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.person.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                            lang=\"vi\"/>\n");
      out.write("                                        <span class=\"text-danger field-validation-valid\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"formGroup\">\n");
      out.write("                                        <label for=\"Address\"> Địa chỉ </label>\n");
      out.write("                                        <span class=\"pink-color\">*</span>\n");
      out.write("                                        <input\n");
      out.write("                                            required=\"\"\n");
      out.write("                                            class=\"formControl\"\n");
      out.write("                                            placeholder=\"Vui lòng nhập địa chỉ của bạn.\"\n");
      out.write("                                            type=\"text\"\n");
      out.write("                                            id=\"Name\"\n");
      out.write("                                            maxlength=\"50\"\n");
      out.write("                                            name=\"Address\"\n");
      out.write("                                            value=\"\"\n");
      out.write("                                            lang=\"vi\"/>\n");
      out.write("                                        <span class=\"text-danger field-validation-valid\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"formRow2\">\n");
      out.write("                                    <div class=\"itemRow2\">\n");
      out.write("                                        <label for=\"Email\">Email</label>\n");
      out.write("                                        <span class=\"pink-color\">*</span>\n");
      out.write("                                        <input\n");
      out.write("                                            required=\"\"\n");
      out.write("                                            class=\"formControl\"\n");
      out.write("                                            placeholder=\"example@gmail.com\"\n");
      out.write("                                            type=\"email\"\n");
      out.write("                                            id=\"Email\"\n");
      out.write("                                            name=\"Email\"\n");
      out.write("                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.person.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/>\n");
      out.write("                                        <span class=\"text-danger field-validation-valid\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"itemRow2\">\n");
      out.write("                                        <label for=\"PhoneNumber\">Số điện thoại</label>\n");
      out.write("                                        <span class=\"pink-color\">*</span>\n");
      out.write("                                        <input\n");
      out.write("                                            required=\"\"\n");
      out.write("                                            type=\"tel\"\n");
      out.write("                                            class=\"formControl\"\n");
      out.write("                                            name=\"PhoneNumber\"\n");
      out.write("                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.person.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                            placeholder=\"0903.xxx.xxx\"\n");
      out.write("                                            pattern=\"[0-9]{10}\"\n");
      out.write("                                            maxlength=\"10\"\n");
      out.write("                                            />\n");
      out.write("                                        <span class=\"text-danger field-validation-valid\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"formRow3\">\n");
      out.write("                                    <div class=\"formLeft\">\n");
      out.write("                                        <div class=\"formGroup3Left\">\n");
      out.write("                                            <label for=\"AdultAmount\">\n");
      out.write("                                                Số người lớn\n");
      out.write("                                                <span class=\"pink-color\">*</span>\n");
      out.write("                                            </label>\n");
      out.write("                                            <ul class=\"list-group list-group-horizontal\">\n");
      out.write("                                                <button id=\"btnMinus1\" class=\"btn mt-0 btnMinus list-group-item\" type=\"button\" >\n");
      out.write("                                                    -\n");
      out.write("                                                </button>\n");
      out.write("                                                <input class=\"list-group-item formControl people-count\"\n");
      out.write("                                                       id=\"adults\"\n");
      out.write("                                                       value=\"1\"\n");
      out.write("                                                       type=\"number\"\n");
      out.write("                                                       name=\"AdultAmount\"\n");
      out.write("                                                       />\n");
      out.write("                                                <button id=\"btnPlus1\" class=\"btn mt-0 btnPlus list-group-item\" type=\"button\" >\n");
      out.write("                                                    +\n");
      out.write("                                                </button>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"formGroup3Right\">\n");
      out.write("                                            <label for=\"ChildAmount\"\n");
      out.write("                                                   >Số Trẻ em\n");
      out.write("                                                <span class=\"pink-color\">*</span>\n");
      out.write("                                            </label>\n");
      out.write("                                            <ul class=\"list-group list-group-horizontal\">\n");
      out.write("                                                <button id=\"btnMinus2\" class=\"btn mt-0 btnMinus list-group-item\" type=\"button\">\n");
      out.write("                                                    -\n");
      out.write("                                                </button>\n");
      out.write("                                                <input class=\"list-group-item formControl people-count\"\n");
      out.write("                                                       id=\"childs\"\n");
      out.write("                                                       value=\"0\"\n");
      out.write("                                                       type=\"number\"\n");
      out.write("                                                       span=\"0\"\n");
      out.write("                                                       name=\"ChildAmount\"\n");
      out.write("                                                       />\n");
      out.write("                                                <button id=\"btnPlus2\" class=\"btn mt-0 btnPlus list-group-item\" type=\"button\">\n");
      out.write("                                                    +\n");
      out.write("                                                </button>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"formRight\">\n");
      out.write("                                        <label for=\"StartDate\"\n");
      out.write("                                               >Tour theo ngày hiện có\n");
      out.write("                                            <span class=\"pink-color\">*</span>\n");
      out.write("                                        </label>\n");
      out.write("                                        <select name=\"tripDate\" id=\"tripDate\" class=\"formControl\">\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        </select>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"formRow4\">\n");
      out.write("                                    <div class=\"itemRow4\">\n");
      out.write("                                        <label>Thanh toán bằng</label>\n");
      out.write("                                        <select\n");
      out.write("                                            class=\"formControl\"\n");
      out.write("                                            id=\"payment_type\"\n");
      out.write("                                            name=\"PaymentType\"\n");
      out.write("                                            >\n");
      out.write("                                            <option value=\"1\" selected=\"\">\n");
      out.write("                                                Thanh toán tiền mặt\n");
      out.write("                                            </option>\n");
      out.write("                                            <option value=\"3\">VNPay</option> \n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"hidden\" name=\"PaymentType\" value=\"1\"/>\n");
      out.write("                                <div class=\"formRow5\">\n");
      out.write("                                    <div class=\"itemRow5\">\n");
      out.write("                                        <div style=\"width: 100%\" class=\"\">\n");
      out.write("                                            <label for=\"AdditionField\"\n");
      out.write("                                                   >Yêu cầu thêm (không bắt buộc)</label\n");
      out.write("                                            >\n");
      out.write("                                            <textarea\n");
      out.write("                                                class=\"formControl formTextArea\"\n");
      out.write("                                                rows=\"6\"\n");
      out.write("                                                id=\"AdditionField\"\n");
      out.write("                                                maxlength=\"500\"\n");
      out.write("                                                name=\"AdditionField\"\n");
      out.write("                                                ></textarea>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"boxRight\">\n");
      out.write("                                <div class=\"wrapperRight\">\n");
      out.write("                                    <h3 class=\"checkoutTitle\">Thông tin tour</h3>\n");
      out.write("                                    <div class=\"image-group\">\n");
      out.write("                                        <img class=\"image\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getThumbnail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fad fa-info-circle\"></i>\n");
      out.write("                                            Chuyến đi:\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"adults-price\">\n");
      out.write("                                            <span><strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></span>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fas fa-male\"></i>\n");
      out.write("                                            Người lớn:\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"adults-price\">\n");
      out.write("                                            <strong><span id=\"displayPriceAdult\">");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("</span> VNĐ</strong>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fas fa-child\"></i>\n");
      out.write("                                            Trẻ em:\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"childs-price\">\n");
      out.write("                                            <strong><span id=\"displayPriceChild\">");
      if (_jspx_meth_fmt_formatNumber_1(_jspx_page_context))
        return;
      out.write("</span> VNĐ</strong>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fas fa-users\"></i> Số ghế:\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"amount\">\n");
      out.write("                                            <strong>\n");
      out.write("                                            <span id=\"adults-count\" style=\"font-size: medium\" class=\"adults-count\">\n");
      out.write("                                                ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write(" \n");
      out.write("                                                ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                    chỗ trống\n");
      out.write("                                            </span>\n");
      out.write("                                            </strong>                                           \n");
      out.write("                                        </p>    \n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                        <!--SỐ LƯỢNG TRẺ EM && NGƯỜI LỚN-->\n");
      out.write("                                        <!--<div class=\"price-group\">\n");
      out.write("                                            <p class=\"price-name\">\n");
      out.write("                                                <i class=\"fas fa-users\"></i> Số lượng:\n");
      out.write("                                            </p>\n");
      out.write("                                            <p class=\"price-value\" id=\"amount\">\n");
      out.write("                                                <span id=\"adults-count\" style=\"font-size: medium\" class=\"adults-count\"\n");
      out.write("                                                      >1 người lớn</span\n");
      out.write("                                                >\n");
      out.write("                                                <span id=\"childs-count\" style=\"font-size: medium\" class=\"childs-count\"\n");
      out.write("                                                      >0 trẻ em</span\n");
      out.write("                                                >\n");
      out.write("                                            </p>\n");
      out.write("                                        </div>-->\n");
      out.write("                                        <!--SỐ LƯỢNG TRẺ EM && NGƯỜI LỚN-->\n");
      out.write("\n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fas fa-dollar-sign\"></i> Tổng thanh toán:\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"total-price\">\n");
      out.write("                                            <strong><span id=\"totalPrice\">");
      if (_jspx_meth_fmt_formatNumber_2(_jspx_page_context))
        return;
      out.write("</span> VNĐ</strong>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_4(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                                    <input type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getPriceChild()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" id=\"priceChild\" name=\"priceChild\"/>\n");
      out.write("                                    <input type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getPriceAdult()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" id=\"priceAdult\" name=\"priceAdult\"/>\n");
      out.write("                                    <input type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" id=\"tripID\" name=\"tripID\"/>\n");
      out.write("                                    <input type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tourID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"tourID\"/>\n");
      out.write("                                    <input type=\"hidden\" id=\"tripQuantity\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity.getQuantity()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/>\n");
      out.write("                                    <input type=\"hidden\" id=\"score\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.person.accumulatedScore}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/>\n");
      out.write("                                    <input type=\"hidden\" id=\"applyScore\" name=\"applyScore\" value=\"\"/>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"price-group\">\n");
      out.write("                                        <p class=\"price-name\">\n");
      out.write("                                            <i class=\"fas fa-percent\"></i></i> Điểm thưởng\n");
      out.write("                                        </p>\n");
      out.write("                                        <p class=\"price-value\" id=\"total-price\">\n");
      out.write("                                            <strong><span id=\"totalPrice\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.person.accumulatedScore}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></strong>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                        \n");
      out.write("                                    <ul class=\"list-group list-group-horizontal\">\n");
      out.write("                                        <input class=\"list-group-item formControl people-count\"\n");
      out.write("                                               id=\"displayScore\"\n");
      out.write("                                               value=\"0\"\n");
      out.write("                                               type=\"number\"\n");
      out.write("                                               span=\"0\"\n");
      out.write("                                               name=\"accumulatedScore\"\n");
      out.write("                                               />\n");
      out.write("                                        <button id=\"btnScore\" class=\"btn mt-0 text-center btnScore list-group-item\" type=\"button\">\n");
      out.write("                                            <strong><span id=\"displayButtonScore\">Áp dụng</span></strong>\n");
      out.write("                                        </button>\n");
      out.write("                                    </ul>\n");
      out.write("                                    \n");
      out.write("                                    <button class=\"btnPink btnCheckout\" type=\"submit\" onclick=\"getSelectedValue()\">\n");
      out.write("                                        Đặt Tour\n");
      out.write("                                    </button>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("                              \n");
      out.write("        <script>\n");
      out.write("            const displayScore = document.getElementById(\"displayScore\");\n");
      out.write("            const displayButtonScore = document.getElementById(\"displayButtonScore\");\n");
      out.write("            const btnScore = document.getElementById(\"btnScore\");\n");
      out.write("            const applyScore = document.getElementById(\"applyScore\");\n");
      out.write("            const score = document.getElementById(\"score\");\n");
      out.write("            let isApplyScore = false;\n");
      out.write("            const btnPlus1 = document.getElementById(\"btnPlus1\");\n");
      out.write("            const btnMinus1 = document.getElementById(\"btnMinus1\");\n");
      out.write("            const numberAdult = document.getElementById(\"adults\");\n");
      out.write("            const displayPriceAdult = document.getElementById(\"displayPriceAdult\");\n");
      out.write("            let priceAdult = document.getElementById(\"priceAdult\");\n");
      out.write("            var tempAdult = 1;\n");
      out.write("\n");
      out.write("            let totalAdult = 0;\n");
      out.write("            let totalChild = 0;\n");
      out.write("            const btnPlus2 = document.getElementById(\"btnPlus2\");\n");
      out.write("            const btnMinus2 = document.getElementById(\"btnMinus2\");\n");
      out.write("            const numberChild = document.getElementById(\"childs\");\n");
      out.write("            const displayPriceChild = document.getElementById(\"displayPriceChild\");\n");
      out.write("            let priceChild = document.getElementById(\"priceChild\");\n");
      out.write("            var tempChild = 0;\n");
      out.write("\n");
      out.write("            var tripQuantity = document.getElementById(\"tripQuantity\").value;\n");
      out.write("            const totalPrice = document.getElementById(\"totalPrice\");\n");
      out.write("            const caution = document.getElementById(\"alertID\");\n");
      out.write("            const tripID = document.getElementById(\"tripID\");\n");
      out.write("\n");
      out.write("            btnPlus1.addEventListener(\"click\", function () {\n");
      out.write("                if (tripQuantity == 0) {\n");
      out.write("                    alert(\"Tour đã hết chỗ trống\");\n");
      out.write("                } else {\n");
      out.write("                    if (parseInt(tempAdult + tempChild) < tripQuantity) {\n");
      out.write("                        increaseNumber();\n");
      out.write("                    } else {\n");
      out.write("                        alert(\"Số lượng hành khách không vượt quá \" + tripQuantity);\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("            btnMinus1.addEventListener(\"click\", function () {\n");
      out.write("                decreaseNumber();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            function increaseNumber() {\n");
      out.write("                let currentValue = parseInt(numberAdult.value);\n");
      out.write("\n");
      out.write("                numberAdult.value = currentValue + 1;\n");
      out.write("                tempAdult = parseInt(numberAdult.value);\n");
      out.write("                //Hiển thị số lượng người lớn\n");
      out.write("                //Tính toán số tiền người lớn\n");
      out.write("                const number = priceAdult.value;\n");
      out.write("                totalAdult = parseInt((currentValue + 1) * number);\n");
      out.write("                //Hiển thị tổng giá\n");
      out.write("                displayPriceAdult.textContent = totalAdult.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                tolalPriceTour(totalChild, totalAdult);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function decreaseNumber() {\n");
      out.write("                let currentValue = parseInt(numberAdult.value);\n");
      out.write("                if (currentValue > 1) {\n");
      out.write("                    numberAdult.value = currentValue - 1;\n");
      out.write("                    tempAdult = parseInt(numberAdult.value);\n");
      out.write("\n");
      out.write("                    //Hiển thị số lượng người lớn\n");
      out.write("                    //Tính toán số tiền người lớn\n");
      out.write("                    const number = priceAdult.value;\n");
      out.write("                    totalAdult = parseInt((currentValue - 1) * number);\n");
      out.write("                    //Hiển thị tổng giá\n");
      out.write("                    displayPriceAdult.textContent = totalAdult.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");;\n");
      out.write("                    tolalPriceTour(totalChild, totalAdult);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            btnPlus2.addEventListener(\"click\", function () {\n");
      out.write("                if (tripQuantity == 0) {\n");
      out.write("                    alert(\"Tour đã hết chỗ trống\");\n");
      out.write("                } else {\n");
      out.write("                    if (parseInt(tempAdult + tempChild) < tripQuantity) {\n");
      out.write("                        increaseNumber2();\n");
      out.write("                    } else {\n");
      out.write("                        alert(\"Số lượng hành khách không vượt quá \" + tripQuantity);\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("            btnMinus2.addEventListener(\"click\", function () {\n");
      out.write("                decreaseNumber2();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            function increaseNumber2() {\n");
      out.write("                let currentValue = parseInt(numberChild.value);\n");
      out.write("                numberChild.value = currentValue + 1;\n");
      out.write("                tempChild = parseInt(numberChild.value);\n");
      out.write("                console.log(tempChild);\n");
      out.write("                //Hiển thị số lượng trẻ em\n");
      out.write("                //Tính toán số tiền trẻ em\n");
      out.write("                const number = priceChild.value;\n");
      out.write("                totalChild = parseInt((currentValue + 1) * number);\n");
      out.write("                //Hiển thị tổng giá\n");
      out.write("                displayPriceChild.textContent = totalChild.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");;\n");
      out.write("                tolalPriceTour(totalChild, totalAdult);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function decreaseNumber2() {\n");
      out.write("                let currentValue = parseInt(numberChild.value);\n");
      out.write("                tempChild = currentValue;\n");
      out.write("                if (currentValue > 0) {\n");
      out.write("                    numberChild.value = currentValue - 1;\n");
      out.write("                    tempChild = parseInt(numberChild.value);\n");
      out.write("                    //Hiển thị số lượng trẻ em\n");
      out.write("                    //Tính toán số tiền trẻ em\n");
      out.write("                    const number = priceChild.value;\n");
      out.write("                    totalChild = parseInt((currentValue - 1) * number);\n");
      out.write("                    //Hiển thị tổng giá\n");
      out.write("                    if (totalChild == 0) {\n");
      out.write("                        temp = parseInt(currentValue * number);\n");
      out.write("                        displayPriceChild.textContent = temp.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                    } else {\n");
      out.write("                        displayPriceChild.textContent = totalChild.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");;\n");
      out.write("                    }\n");
      out.write("                    tolalPriceTour(totalChild, totalAdult);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function tolalPriceTour(priceChild, priceAdult) {\n");
      out.write("                if(priceAdult == 0){\n");
      out.write("                    priceAdult = parseInt(document.getElementById(\"priceAdult\").value);\n");
      out.write("                }\n");
      out.write("                console.log(isApplyScore);\n");
      out.write("                //XỬ LÝ TỔNG GIÁ CÓ ÁP DỤNG ĐIỂM THƯỞNG HAY KHÔNG\n");
      out.write("                if (isApplyScore){ //TRƯỜNG HỢP CÓ ÁP DỤNG\n");
      out.write("                    console.log(\"Giá trẻ em: \", priceChild);\n");
      out.write("                    console.log(\"Giá trẻ người lớn: \", priceAdult);\n");
      out.write("                    console.log(\"Giá: \", parseInt(displayScore.value*1000));\n");
      out.write("                    console.log(\"Giảm giá thực: \", parseInt(applyScore.value*1000));\n");
      out.write("                    if(parseInt(applyScore.value*1000) < priceChild + priceAdult){\n");
      out.write("                        //TÍNH TỔNG TIỀN PHẢI TRẢ\n");
      out.write("                        let total =  priceChild + priceAdult - parseInt(applyScore.value*1000);\n");
      out.write("                        totalPrice.textContent = total.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                    } else {\n");
      out.write("                        //TÍNH TỔNG TIỀN PHẢI TRẢ\n");
      out.write("                        let total = 0;\n");
      out.write("                        totalPrice.textContent = total.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                        displayScore.value = (priceChild + priceAdult)/1000;\n");
      out.write("                        applyScore.value = (priceChild + priceAdult)/1000;\n");
      out.write("                    }\n");
      out.write("                } else { // TRƯỜNG HỢP KHÔNG ÁP DỤNG\n");
      out.write("                    const total = priceChild + priceAdult;\n");
      out.write("                    totalPrice.textContent = total.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            //FUNCTION XỬ LÝ ĐỔI SỐ SLOT VÀ GIÁ THEO SELECT NGÀY CỦA TRIP\n");
      out.write("            const tripDate = document.getElementById(\"tripDate\");\n");
      out.write("            tripDate.onchange = (e) => {\n");
      out.write("                console.log(\"Xử lý đổi số slot tour và giá\");\n");
      out.write("                const adultsCount = document.getElementById(\"adults-count\");\n");
      out.write("                const priceTripChange = document.getElementById(e.target.value).value;\n");
      out.write("\n");
      out.write("                const keyValuePairs = priceTripChange.match(/\\w+=(?:[^,}]+)/g);\n");
      out.write("                console.log(tripID);\n");
      out.write("                const tripObject = {};\n");
      out.write("\n");
      out.write("                keyValuePairs.forEach(pair => {\n");
      out.write("                    const [key, value] = pair.split('=');\n");
      out.write("                    tripObject[key.trim()] = value.trim();\n");
      out.write("                });\n");
      out.write("                console.log(\"TripObject: \", tripObject);\n");
      out.write("                priceAdult.value = tripObject.priceAdult;\n");
      out.write("                priceChild.value = tripObject.priceChild;\n");
      out.write("                tripID.value = tripObject.id;\n");
      out.write("\n");
      out.write("                tripQuantity = tripObject.quantity - tripObject.current_quantity;\n");
      out.write("\n");
      out.write("                let numberAdultChange = parseInt(numberAdult.value);\n");
      out.write("                let numberChildChange = parseInt(numberChild.value);\n");
      out.write("\n");
      out.write("                //Xử lý nếu numberChild = 0 ? numberChild = 1*PriceChild sẽ bằng Price mặc định\n");
      out.write("\n");
      out.write("                //Xử lý nếu tổng số lượng slot cusBook > slot hiện có của Trip thì gán lại mặc định\n");
      out.write("                if (numberAdultChange + numberChildChange > tripQuantity) {\n");
      out.write("                    numberChildChange = 1;\n");
      out.write("                    numberAdultChange = 1;\n");
      out.write("                    tempAdult = 1;\n");
      out.write("                    tempChild = 0;\n");
      out.write("                    numberChild.value = 0;\n");
      out.write("                    numberAdult.value = 1;\n");
      out.write("                }\n");
      out.write("                //Hiển thị ra màn hình\n");
      out.write("                //Giá trẻ em\n");
      out.write("                totalChild = parseInt(numberChildChange * priceChild.value);\n");
      out.write("                totalAdult = parseInt(numberAdultChange * priceAdult.value);\n");
      out.write("                if (totalChild == 0){\n");
      out.write("                    const total = 1 * priceChild.value;\n");
      out.write("                    displayPriceChild.textContent = total.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                } else {\n");
      out.write("                    displayPriceChild.textContent = totalChild.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                }\n");
      out.write("                //Giá người lớn\n");
      out.write("                displayPriceAdult.textContent = totalAdult.toLocaleString(\"vi-VN\").replace(\"₫\", \"VNĐ\");\n");
      out.write("                tolalPriceTour(totalChild, totalAdult);\n");
      out.write("                //Số chỗ của trip\n");
      out.write("                if (tripQuantity == 0){\n");
      out.write("                    adultsCount.textContent =\"Hết chỗ trống\";\n");
      out.write("                } else {\n");
      out.write("                    adultsCount.textContent = tripQuantity + \" chỗ trống\";\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                console.log(\"Số slot hiện có: \", tripQuantity);\n");
      out.write("                console.log(\"Số người lớn hiện tại: \", numberAdultChange);\n");
      out.write("                console.log(\"Giá người lớn: \", priceAdult.value);\n");
      out.write("                console.log(\"Số trẻ em hiện tại: \", numberChildChange);\n");
      out.write("                console.log(\"Giá trẻ em: \", priceChild.value);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            if (caution !== null) {\n");
      out.write("                console.log('im here');\n");
      out.write("                alert(caution.value);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            const handleSubmitForm = document.getElementById(\"handleSubmitForm\");\n");
      out.write("\n");
      out.write("            handleSubmitForm.addEventListener('submit', (e) => {\n");
      out.write("                e.preventDefault();\n");
      out.write("                if (tripQuantity == 0) {\n");
      out.write("                    alert(\"Tour đã hết chỗ trống\");\n");
      out.write("                } else {\n");
      out.write("                    handleSubmitForm.submit();\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("            \n");
      out.write("            //XỬ LÝ THÊM ĐIỂM VOUCHER VÀO PAYMENT\n");
      out.write("            btnScore.addEventListener(\"click\", function () {\n");
      out.write("                handleApplyScore();\n");
      out.write("            });\n");
      out.write("            \n");
      out.write("            function handleApplyScore() {\n");
      out.write("                isApplyScore = !isApplyScore;\n");
      out.write("                if (isApplyScore){\n");
      out.write("                    if(parseInt(displayScore.value) < 0){\n");
      out.write("                       alert(\"Nhập điểm thưởng không hợp lệ!!!\");\n");
      out.write("                       applyScore.value = 0;\n");
      out.write("                       displayScore.value = 0;\n");
      out.write("                       isApplyScore = false;\n");
      out.write("                    } else if (parseInt(displayScore.value) > parseInt(score.value)){\n");
      out.write("                       alert(\"Điểm thưởng bạn không đủ!!!\");\n");
      out.write("                       applyScore.value = 0;\n");
      out.write("                       displayScore.value = 0;\n");
      out.write("                       isApplyScore = false;\n");
      out.write("                    } else {\n");
      out.write("                        if(parseInt(displayScore.value) == 0){\n");
      out.write("                           applyScore.value = 0;\n");
      out.write("                           isApplyScore = false;\n");
      out.write("                        } else {\n");
      out.write("                           applyScore.value = parseInt(displayScore.value);\n");
      out.write("                           displayButtonScore.textContent = \"Hủy áp dụng\";\n");
      out.write("                           alert(\"Đã áp dụng điểm thưởng trong booking của bạn\");\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                } else {\n");
      out.write("                    applyScore.value = 0;\n");
      out.write("                    displayScore.value = 0;\n");
      out.write("                    displayButtonScore.textContent = \"Áp dụng\";\n");
      out.write("                    alert(\"Đã hủy áp dụng điểm thưởng\");\n");
      out.write("                }\n");
      out.write("                tolalPriceTour(totalChild, totalAdult);\n");
      out.write("            }\n");
      out.write("             //END XỬ LÝ THÊM ĐIỂM VOUCHER\n");
      out.write("        </script>\n");
      out.write("        <!--Import JS Slider -->\n");
      out.write("        <script src=\"");
      if (_jspx_meth_c_url_7(_jspx_page_context))
        return;
      out.write("\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"");
      if (_jspx_meth_c_url_8(_jspx_page_context))
        return;
      out.write("\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_fmt_setLocale_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:setLocale
    org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag _jspx_th_fmt_setLocale_0 = (org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag) _jspx_tagPool_fmt_setLocale_value_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.SetLocaleTag.class);
    _jspx_th_fmt_setLocale_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_setLocale_0.setParent(null);
    _jspx_th_fmt_setLocale_0.setValue(new String("vi_VN"));
    int _jspx_eval_fmt_setLocale_0 = _jspx_th_fmt_setLocale_0.doStartTag();
    if (_jspx_th_fmt_setLocale_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_setLocale_value_nobody.reuse(_jspx_th_fmt_setLocale_0);
      return true;
    }
    _jspx_tagPool_fmt_setLocale_value_nobody.reuse(_jspx_th_fmt_setLocale_0);
    return false;
  }

  private boolean _jspx_meth_c_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_0.setPageContext(_jspx_page_context);
    _jspx_th_c_url_0.setParent(null);
    _jspx_th_c_url_0.setValue("/assets/imgs/five-icon.png");
    int _jspx_eval_c_url_0 = _jspx_th_c_url_0.doStartTag();
    if (_jspx_th_c_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
    return false;
  }

  private boolean _jspx_meth_c_url_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_1.setPageContext(_jspx_page_context);
    _jspx_th_c_url_1.setParent(null);
    _jspx_th_c_url_1.setValue("/assets/css/HomePageCSS/bootstrap1.css");
    int _jspx_eval_c_url_1 = _jspx_th_c_url_1.doStartTag();
    if (_jspx_th_c_url_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
    return false;
  }

  private boolean _jspx_meth_c_url_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_2.setPageContext(_jspx_page_context);
    _jspx_th_c_url_2.setParent(null);
    _jspx_th_c_url_2.setValue("/assets/css/header_footer.css");
    int _jspx_eval_c_url_2 = _jspx_th_c_url_2.doStartTag();
    if (_jspx_th_c_url_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
    return false;
  }

  private boolean _jspx_meth_c_url_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_3 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_3.setPageContext(_jspx_page_context);
    _jspx_th_c_url_3.setParent(null);
    _jspx_th_c_url_3.setValue("/assets/css/HomePageCSS/homepage_new.css");
    int _jspx_eval_c_url_3 = _jspx_th_c_url_3.doStartTag();
    if (_jspx_th_c_url_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
    return false;
  }

  private boolean _jspx_meth_c_url_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_4 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_4.setPageContext(_jspx_page_context);
    _jspx_th_c_url_4.setParent(null);
    _jspx_th_c_url_4.setValue("/assets/css/Booking/styles.css");
    int _jspx_eval_c_url_4 = _jspx_th_c_url_4.doStartTag();
    if (_jspx_th_c_url_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
    return false;
  }

  private boolean _jspx_meth_c_url_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_5 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_5.setPageContext(_jspx_page_context);
    _jspx_th_c_url_5.setParent(null);
    _jspx_th_c_url_5.setValue("/assets/css/HomePageCSS/plugins.css");
    int _jspx_eval_c_url_5 = _jspx_th_c_url_5.doStartTag();
    if (_jspx_th_c_url_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_5);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_5);
    return false;
  }

  private boolean _jspx_meth_c_url_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_6 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_6.setPageContext(_jspx_page_context);
    _jspx_th_c_url_6.setParent(null);
    _jspx_th_c_url_6.setValue("/tour/book.do");
    int _jspx_eval_c_url_6 = _jspx_th_c_url_6.doStartTag();
    if (_jspx_th_c_url_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_6);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_6);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("trip");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripDate}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVarStatus("loop");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("                 \n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_varStatus_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripDate.get(loop.index).isAvailability()== true}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                    <option value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${trip.getDepart_time()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">\n");
        out.write("                                                        ");
        if (_jspx_meth_fmt_formatDate_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\n");
        out.write("                                                    </option>\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatDate_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_formatDate_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _jspx_tagPool_fmt_formatDate_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    _jspx_th_fmt_formatDate_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatDate_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_fmt_formatDate_0.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${trip.getDepart_time()}", java.util.Date.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatDate_0.setPattern("dd/MM/yyyy");
    int _jspx_eval_fmt_formatDate_0 = _jspx_th_fmt_formatDate_0.doStartTag();
    if (_jspx_th_fmt_formatDate_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
      return true;
    }
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setVar("trip");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripDate}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVarStatus("loop");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("                 \n");
          out.write("                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_varStatus_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripDate.get(loop.index).isAvailability()== true}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                <input type=\"hidden\" id=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${trip.getDepart_time()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${trip}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\"/>                                             \n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getPriceAdult()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setPattern("###,###");
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_1.setParent(null);
    _jspx_th_fmt_formatNumber_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getPriceChild()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_1.setPattern("###,###");
    int _jspx_eval_fmt_formatNumber_1 = _jspx_th_fmt_formatNumber_1.doStartTag();
    if (_jspx_th_fmt_formatNumber_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity.getQuantity() > 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity.getQuantity()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(' ');
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity.getQuantity() <= 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("Hết ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_2 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_2.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_2.setParent(null);
    _jspx_th_fmt_formatNumber_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tripInfo.getPriceAdult()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_2.setPattern("###,###");
    int _jspx_eval_fmt_formatNumber_2 = _jspx_th_fmt_formatNumber_2.doStartTag();
    if (_jspx_th_fmt_formatNumber_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_2);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_2);
    return false;
  }

  private boolean _jspx_meth_c_if_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent(null);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("  <input type=\"hidden\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alert}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" id=\"alertID\"/>");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_url_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_7 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_7.setPageContext(_jspx_page_context);
    _jspx_th_c_url_7.setParent(null);
    _jspx_th_c_url_7.setValue("/assets/js/jquery.min.js");
    int _jspx_eval_c_url_7 = _jspx_th_c_url_7.doStartTag();
    if (_jspx_th_c_url_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_7);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_7);
    return false;
  }

  private boolean _jspx_meth_c_url_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_8 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_8.setPageContext(_jspx_page_context);
    _jspx_th_c_url_8.setParent(null);
    _jspx_th_c_url_8.setValue("/assets/js/bootstrap.min.js");
    int _jspx_eval_c_url_8 = _jspx_th_c_url_8.doStartTag();
    if (_jspx_th_c_url_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_8);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_8);
    return false;
  }
}
