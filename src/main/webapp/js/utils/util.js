export function showLoading() {
  const loadingLayer = document.getElementById('loading-layer')
  const contentWrapper = document.getElementById('root-container')

  if (loadingLayer) {
    loadingLayer.classList.remove('hidden') // 🔥 로딩 레이어 표시
  }
  if (contentWrapper) {
    contentWrapper.classList.add('hidden') // 🔥 컨텐츠 숨김
  }
}

export function hideLoading() {
  const loadingLayer = document.getElementById('loading-layer')
  const contentWrapper = document.getElementById('root-container')

  if (loadingLayer) {
    loadingLayer.classList.add('hidden') // 🔥 로딩 레이어 숨김
  }
  if (contentWrapper) {
    contentWrapper.classList.remove('hidden') // 🔥 컨텐츠 표시
  }
}
