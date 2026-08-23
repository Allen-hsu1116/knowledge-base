---
title: prettymaps
slug: marceloprates-prettymaps
created: 2026-08-20
updated: 2026-08-20
stars: 13121
language: zh-TW
topics: [地圖視覺化, OpenStreetMap, 生成藝術, Python, Matplotlib, 資料視覺化]
---

# prettymaps

> ⭐13121 · 以 OpenStreetMap 資料、Matplotlib 與 Shapely 繪製可高度客製化城市地圖的 Python 工具。

## 快速導航


- 🎨 [[generative-AI]] — 以資料與程式規則創作視覺內容
- 📊 [[data-analysis]] — 將地理資料轉換成可讀的視覺表達
- 🕸 [[網頁爬蟲]] — 理解從公開網路來源取得結構化資料的流程

## 是什麼

prettymaps 是一個精簡的 Python 地圖繪圖函式庫，從 OpenStreetMap 取得道路、建築、水域與自然地物等資料，再利用 OSMnx、Matplotlib、Shapely 與 vsketch 組合成風格化地圖。

它把地理資料擷取、圖層選擇與視覺樣式整合進 `prettymaps.plot()`。使用者可以先用地名快速產生圖，再細調每一圖層的標籤條件、填色、邊線、色盤、半徑與邊界形狀。

這個專案介於資料視覺化、製圖與生成藝術之間。除了 Python API，也提供 Streamlit 前端、marimo 教學 notebook、JSON presets 與多圖拼接等使用方式。

## 核心特色

- **OpenStreetMap 資料來源**：直接以地名或位置取得街道、建築、水域與自然地物等開放地理資料。
- **圖層級客製化**：`layers` 可指定 OSM tags，`style` 可為各層設定填色、邊線、寬度與 palette。
- **快速起步**：一行 `prettymaps.plot('地點')` 就能產生基本地圖，適合 notebook 探索。
- **預設風格系統**：內建 default、minimal、macao、tijuca 等 JSON preset，可作為視覺設計起點。
- **多種互動入口**：提供 Python API、Streamlit app、marimo notebook 與 Google Colab demo。
- **可進一步加工**：回傳 dataclass，內含 GeoDataFrames、Matplotlib figure 與 axes，方便疊加圖層或後製。
- **生成藝術用途**：可把真實都市形態轉換為海報、繪圖機輸出與風格化地圖作品。

## 怎麼用

先安裝 Python 套件：

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install prettymaps
```

最小範例是傳入 OpenStreetMap 可識別的地名：

```python
import prettymaps

plot = prettymaps.plot("Stad van de Zon, Heerhugowaard, Netherlands")
plot.fig.savefig("map.png", dpi=200)
```

若從原始碼啟動圖形前端，可在 clone 專案並完成依賴安裝後執行：

```bash
streamlit run app.py
```

使用作品時需保留對 prettymaps 與 OpenStreetMap 的適當標示，並留意專案採 AGPLv3；README 也特別要求尊重作者對 NFT 使用的反對聲明。

## 跟其他方案的關係

prettymaps 專注「風格化靜態地圖」，和一般互動地圖或通用繪圖工具的重點不同：

| 方案 | 資料／渲染方式 | 強項 | 較適合 |
|------|----------------|------|--------|
| prettymaps | OpenStreetMap + Matplotlib | 快速產生藝術化城市地圖 | 海報、生成藝術、靜態輸出 |
| OSMnx | OpenStreetMap + NetworkX/GeoPandas | 街道網路下載與分析 | 都市網路研究與資料處理 |
| Folium | Leaflet.js | 互動式網頁地圖 | Notebook 或 Web 的縮放／標記地圖 |
| GeoPandas | 向量地理資料處理 | 通用 GIS 資料操作 | 空間分析與資料清理 |

prettymaps 本身建立在 OSMnx 等函式庫之上，替使用者封裝常見的資料抓取與視覺分層；若需求是空間統計或互動式應用，仍應搭配 GeoPandas、OSMnx 或 Web 地圖框架。

## 相關概念


← [[generative-AI]] · [[data-analysis]] · [[網頁爬蟲]]

## 來源

- GitHub：https://github.com/marceloprates/prettymaps
- Raw 檔案：raw/2026-08-20-marceloprates-prettymaps.md
- 文件：https://marceloprates.github.io/prettymaps/

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/marceloprates/prettymaps |
| Stars | ⭐13121|
| License | GNU AGPLv3 |
| 收錄日期 | 2026-08-20 |
