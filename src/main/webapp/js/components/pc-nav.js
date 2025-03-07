import {LitElement, html, css} from '/lit-core.min.js'

export class PcNav extends LitElement {
  static properties = {
    message: {type: String},
  }

  constructor() {
    super()
    this.message = 'Pc-Nav'
  }

  render() {
    return html`
      <div class="wrapper">
        <div class="campfire">
          <div class="flames">
            <div class="flame big"></div>
            <div class="flame medium"></div>
            <div class="flame small"></div>
          </div>
          <div class="sparks">
            <div class="spark"></div>
            <div class="spark"></div>
            <div class="spark"></div>
          </div>
          <div class="logs">
            <div class="log"></div>
            <div class="log"></div>
          </div>
        </div>
      </div>
    `
  }

  static styles = css`
    .wrapper {
      display: flex;
      justify-content: center;
      align-items: center;
      background: white;
      overflow: hidden;
    }

    .campfire {
      display: flex;
      justify-content: center;
      position: relative;
      width: 150px;
      height: 250px;
      bottom: 100px;
    }

    /* 불꽃 */
    .flames {
      position: absolute;
      bottom: 40px;
      display: flex;
      justify-content: center;
      align-items: flex-end;
    }

    .flame {
      position: absolute;
      bottom: 0;
      border-radius: 50%;
      opacity: 0.8;
      animation: rise 2s infinite ease-in-out, flicker 1.5s infinite ease-in-out;
    }

    /* 불꽃 크기와 색상 */
    .flame.big {
      width: 65px;
      height: 120px;
      background: radial-gradient(
        circle,
        rgba(255, 100, 0, 1) 0%,
        rgba(255, 30, 0, 0.8) 80%
      );
      animation-delay: 0s;
    }

    .flame.medium {
      width: 55px;
      height: 100px;
      background: radial-gradient(
        circle,
        rgba(255, 150, 0, 1) 0%,
        rgba(255, 50, 0, 0.7) 80%
      );
      animation-delay: 0.2s;
    }

    .flame.small {
      width: 45px;
      height: 80px;
      background: radial-gradient(
        circle,
        rgba(255, 200, 0, 1) 0%,
        rgba(255, 100, 0, 0.6) 80%
      );
      animation-delay: 0.4s;
    }

    /* 장작 */
    .logs {
      position: absolute;
      bottom: 8px;
      display: flex;
      justify-content: center;
      align-items: center;
      width: 100%;
    }

    .log {
      width: 70px;
      height: 20px;
      background: #5b3a29;
      border-radius: 10px;
      margin: 0 5px;
      transform: rotate(-20deg);
    }

    .log:nth-child(2) {
      transform: rotate(20deg);
    }

    /* 불꽃 애니메이션 */
    @keyframes rise {
      0% {
        transform: translateY(0) scale(1);
        opacity: 0.8;
      }
      50% {
        opacity: 1;
      }
      100% {
        transform: translateY(-50px) scale(0.6);
        opacity: 0;
      }
    }

    @keyframes flicker {
      0%,
      100% {
        filter: brightness(1);
      }
      50% {
        filter: brightness(1.3);
      }
    }

    /* 불꽃 튀는 효과 */
    .sparks {
      position: absolute;
      bottom: 120px;
      width: 10px;
      height: 10px;
    }

    .spark {
      position: absolute;
      width: 5px;
      height: 5px;
      background: rgba(255, 255, 100, 0.8);
      border-radius: 50%;
      animation: spark-rise 2s infinite ease-in-out;
    }

    .spark:nth-child(1) {
      left: 10px;
      animation-delay: 0s;
    }

    .spark:nth-child(2) {
      left: 20px;
      animation-delay: 0.3s;
    }

    .spark:nth-child(3) {
      left: 30px;
      animation-delay: 0.5s;
    }

    @keyframes spark-rise {
      0% {
        transform: translateY(0);
        opacity: 1;
      }
      100% {
        transform: translateY(-80px) translateX(20px);
        opacity: 0;
      }
    }
  `
}

customElements.define('pc-nav', PcNav)
