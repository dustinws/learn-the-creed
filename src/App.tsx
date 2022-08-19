import { Route, Routes } from 'react-router-dom';

import Header from './components/Header';
import Landing from './pages/Landing';
import Practice from './pages/Practice';
import Creed from './pages/Creed';

export default function App() {
  return (
    <div className="h-full min-h-screen w-screen">
      <Header />
      <div className="mt-20">
        <Routes>
          <Route path="/" element={<Landing />} />
          <Route path="/creeds/:slug" element={<Creed />} />
          <Route path="/creeds/:slug/practice" element={<Practice />} />
        </Routes>
      </div>
    </div>
  );
}
