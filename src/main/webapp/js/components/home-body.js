import {LitElement, html, css} from '/lit-core.min.js'
import {showLoading, hideLoading} from '/js/utils/util.js'

export class HomeBody extends LitElement {
  constructor() {
    super()
    this.title = null
    this.content = null
  }

  static properties = {
    content: {type: Object},
  }

  async firstUpdated() {
    showLoading()
    await new Promise((resolve) => setTimeout(resolve, 1000))
    await this.fetchData()
    hideLoading()
  }

  async fetchData() {
    try {
      const spec = await fetch('/api/contents/1')
      const realSpec = await spec.json()
      this.title = realSpec?.title

      const countResponse = await fetch('/api/contents/1/sentences/count')
      if (!countResponse.ok) {
        throw new Error(`HTTP error! status: ${countResponse.status}`)
      }

      const sentenceCountText = await countResponse.text()
      const sentenceCount = parseInt(sentenceCountText, 10)
      if (isNaN(sentenceCount)) {
        throw new Error('Invalid sentence count received')
      }

      let sentences = []
      for (let i = 1; i <= sentenceCount; i++) {
        const response = await fetch(`/api/contents/paragraphs/${i}/sentences`)
        if (!response.ok) {
          console.warn(`Skipping paragraph ${i}, status: ${response.status}`)
          continue
        }

        const data = await response.json()
        sentences.push(...data)
      }

      this.content = sentences
      console.log('Fetched sentences:', this.content)
    } catch (error) {
      console.error('Error:', error)
    }
  }

  render() {
    return html`
      <div class="container">
        <p class="title">${this.title || 'No title available'}</p>
        ${this.content?.length
          ? this.content.map(
              (item) => html`
                <div class="sentence">
                  <div>${item.koreanSentence || 'No koreanSentence'}</div>
                  <div>${item.englishSentence || 'No englishSentence'}</div>
                </div>
              `
            )
          : html`<div>No content available</div>`}
      </div>
    `
  }

  static styles = css`
    .container {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
      margin: 0rem 2rem;
      align-items: center;
    }

    .title {
      font-size: 2rem;
    }

    .sentence {
      background: #f9f9f9;
      padding: 1.5rem;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 600px;
      line-height: 1.6;
    }

    .sentence div {
      font-size: 1.2rem;
      font-weight: 500;
    }

    .sentence div:first-child {
      font-style: italic;
      color: #000000;
    }

    .sentence div:last-child {
      font-weight: normal;
      color: #5bbeeb;
    }
  `
}

customElements.define('home-body', HomeBody)
