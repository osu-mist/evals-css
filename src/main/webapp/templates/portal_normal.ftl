<!DOCTYPE html>

  <#include init />

  <html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

  <head>
    <title>EvalS</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport" />

    <@liferay_util["include"] page=top_head_include />
  </head>

  <body class="${css_class}">

    <!--<@liferay_ui["quick-access"] contentId="#main-content" />-->

    <@liferay_util["include"] page=body_top_include />

    <div class="d-flex flex-column min-vh-100">
      <#if permissionChecker.isOmniadmin()>
        <@liferay.control_menu />
      </#if>

      <div class="d-flex flex-column flex-fill" id="wrapper">
        <header>

        	<div id="heading" class="header">
            <a href="https://oregonstate.edu/">
              <img src="${images_folder}/logo.svg" style="height:80px;" />
            </a>

            <#if !is_signed_in>
              <div class="sign-in">
                <@liferay.user_personal_bar />
              </div>
            </#if>
	        </div>
          <div class="title-bar">
            EvalS
          </div>
        </header>

		    <section class="${portal_content_css_class} flex-fill" id="content" style="padding: 0px 50px 0px 50px;">
            <#if selectable>
              <@liferay_util["include"] page=content_include />
            <#else>
				    ${portletDisplay.recycle()}

				    ${portletDisplay.setTitle(the_title)}

				    <@liferay_theme["wrap-portlet"] page="portlet.ftl">
					    <@liferay_util["include"] page=content_include />
				    </@>
			    </#if>
		    </section>
      </div>

      <footer id="footer" role="contentinfo" style="text-align: left;">
        <!-- Using style tag here since liferay css will override any classes defined -->
        <a href="http://oregonstate.edu/copyright" style="
          color: #fff;
          text-decoration: underline;
          font-size: 14px;
          font-weight: 500
        ">Copyright ©2020 Oregon State University</a>
      </footer>
    </div>

  </body>

  <@liferay_util["include"] page=body_bottom_include />

  <@liferay_util["include"] page=bottom_include />

</html>
