import { Link } from 'react-router-dom';
import classNames from './utils/classNames';
import pkg from '../package.json';

import seargentPng from './assets/seargent.png';
import githubPng from './assets/github.png';

export default function Header() {
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
        <Link to="/about">
          <div>
            About
          </div>
        </Link>
        <Link to="/contact">
          <div>
            Contact
          </div>
        </Link>
        <a href="https://github.com/dustinws/learn-the-creed">
          <img className="h-6" src={githubPng} alt="" />
        </a>
      </div>
    </div>
  );
}
