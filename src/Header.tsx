/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */

import { Link, useLocation } from 'react-router-dom';
import classNames from './utils/classNames';
import pkg from '../package.json';

import menuSvg from './assets/menu.svg';
import seargentPng from './assets/seargent.png';

interface Props {
  readonly toggleMenu: () => void;
}

export default function Header({ toggleMenu }: Props) {
  const location = useLocation();

  const homeFont = location.pathname === '/' ? 'font-semibold' : 'font-thin';
  const aboutFont = location.pathname === '/about' ? 'font-semibold' : 'font-thin';
  const contactFont = location.pathname === '/contact' ? 'font-semibold' : 'font-thin';

  return (
    <div
      className={classNames(
        'flex',
        'w-full',
        'items-center',
        'justify-between',
        'h-16',
        'px-4',
        'bg-indigo-100',
      )}
    >
      <div className="flex items-center">
        <a href="/">
          <img className="h-8" src={seargentPng} alt="" />
        </a>
        <div
          className={classNames(
            'text-xl',
            'pl-4',
            'justify-self-center',
            'hidden',
            'sm:flex',
          )}
        >
          Learn the Creed
        </div>
        <div className="font-thin px-4">
          {`v${pkg.version}`}
        </div>
      </div>
      <div className="flex items-center space-x-6 text-lg font-thin">
        <div className="flex sm:hidden">
          <img className="h-7 cursor-pointer" src={menuSvg} onClick={toggleMenu} alt="" />
        </div>
        <Link
          to="/"
          className={classNames(
            'hidden',
            'sm:flex',
            homeFont,
          )}
        >
          Home
        </Link>
        <Link
          to="/about"
          className={classNames(
            'hidden',
            'sm:flex',
            aboutFont,
          )}
        >
          About
        </Link>
        <Link
          to="/contact"
          className={classNames(
            'hidden',
            'sm:flex',
            contactFont,
          )}
        >
          Contact
        </Link>
      </div>
    </div>
  );
}
