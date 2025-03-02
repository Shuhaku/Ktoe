<!-- WEB-INF/views/layout.jsp -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${title}</title>
    <script type="module" src="/js/components/pc-nav.js"></script>
    <script type="module" src="/js/utils/util.js"></script>
  </head>
  <body>
    <!-- loadinglayer -->
    <div id="loading-layer" class="loading-layer hidden">
      <div class="spinner"></div>
    </div>

    <!-- main -->
    <div class="root-container">
      <!-- PC Navigation -->
      <nav class="pc-nav">
        <pc-nav class="center"></pc-nav>
      </nav>
      <!-- Main Contents -->
      <main class="content">
        <jsp:include page="${content}" />
      </main>
    </div>

    <!-- css -->
    <style>
      body {
        display: flex;
        justify-content: center;
      }

      .center {
        display: flex;
        justify-content: center;
        align-content: center;
      }

      .root-container {
        display: flex;
        max-width: 1280px;
        width: 100%;
        scrollbar-width: none;
      }

      .root-container .pc-nav {
        height: calc(100vh - 1rem);
        width: 50%;
        background-color: white;
        display: flex;
        justify-content: center;
        align-content: center;
      }

      .root-container .content {
        min-height: 100vh;
        height: auto;
        width: 50%;
        background-color: white;
        box-shadow: 0 0 4px rgba(0, 0, 0, 0.5);
        overflow-y: scroll;
        scrollbar-width: none;
      }

      .loading-layer {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: #5bbeeb;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        z-index: 1000;
      }

      .hidden {
        display: none;
      }

      .spinner {
        width: 80px;
        height: 80px;
        border: 5px solid #5bbeeb;
        border-top-color: #000000;
        border-radius: 55%;
        animation: spin 1s linear infinite;
      }

      @keyframes spin {
        from {
          transform: rotate(0deg);
        }
        to {
          transform: rotate(360deg);
        }
      }

      @media (max-width: 1280px) {
        .root-container {
          display: flex;
          flex-direction: row;
          justify-content: center;
        }

        .root-container .pc-nav {
          display: none;
        }

        .root-container .content {
          max-width: 640px;
          width: 100%;
        }
      }
    </style>
  </body>
</html>
