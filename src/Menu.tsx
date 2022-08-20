/* eslint-disable jsx-a11y/no-static-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */

import { Link, useLocation } from 'react-router-dom';

interface Props {
  readonly toggleMenu: () => void;
}

export default function Menu({ toggleMenu }: Props) {
  const location = useLocation();

  const homeFont = location.pathname === '/' ? 'font-semibold' : 'font-thin';
  const aboutFont = location.pathname === '/about' ? 'font-semibold' : 'font-thin';
  const contactFont = location.pathname === '/contact' ? 'font-semibold' : 'font-thin';

  return (
    <div
      onClick={toggleMenu}
      className="flex flex-col space-y-4 text-4xl p-4 font-thin"
    >
      <Link className={homeFont} to="/">Home</Link>
      <hr />
      <Link className={aboutFont} to="/about">About</Link>
      <hr />
      <Link className={contactFont} to="/contact">Contact</Link>
    </div>
  );
}
