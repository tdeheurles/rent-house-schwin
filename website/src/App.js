import React from 'react';
import logo from './logo.svg';
import './App.css';
import ImageGallery from 'react-image-gallery';
import images from './images'

function App() {
  return (
    <div className="App">
        <div>Maison de Schwindratzheim</div>
        <ImageGallery items={images} thumbnailPosition="left"/>
    </div>
  );
}

export default App;
