import { useCallback, useState } from 'react';
import { Route, Routes } from 'react-router-dom';

import Header from './Header';
import Menu from './Menu';
import About from './pages/About';
import Contact from './pages/Contact';
import Landing from './pages/Landing';
import Practice from './pages/Practice';
import Review from './pages/Review';

enum MenuVisibility {
  Visible,
  Hidden,
}

export default function App() {
  const [menuVisibility, setMenuVisibility] = useState(MenuVisibility.Hidden);

  const toggleMenu = useCallback(() => {
    if (menuVisibility === MenuVisibility.Hidden) {
      return setMenuVisibility(MenuVisibility.Visible);
    }
    return setMenuVisibility(MenuVisibility.Hidden);
  }, [setMenuVisibility, menuVisibility]);

  return (
    <div className="h-full min-h-screen w-screen">
      <Header toggleMenu={toggleMenu} />

      {menuVisibility === MenuVisibility.Visible && (
        <Menu toggleMenu={toggleMenu} />
      )}

      {menuVisibility === MenuVisibility.Hidden && (
        <Routes>
          <Route path="/" element={<Landing />} />
          <Route path="/about" element={<About />} />
          <Route path="/contact" element={<Contact />} />
          <Route path="/creeds/:slug" element={<Review />} />
          <Route path="/creeds/:slug/practice" element={<Practice />} />
        </Routes>
      )}
    </div>
  );
}
