import { Route, Routes } from 'react-router-dom';

import Header from './Header';
import About from './pages/About';
import Contact from './pages/Contact';
import Landing from './pages/Landing';
import Practice from './pages/Practice';
import Review from './pages/Review';

export default function App() {
  return (
    <div className="h-full min-h-screen w-screen">
      <Header />
      <Routes>
        <Route path="/" element={<Landing />} />
        <Route path="/about" element={<About />} />
        <Route path="/contact" element={<Contact />} />
        <Route path="/creeds/:slug" element={<Review />} />
        <Route path="/creeds/:slug/practice" element={<Practice />} />
      </Routes>
    </div>
  );
}
