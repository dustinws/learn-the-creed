import classNames from '../utils/classNames';
import pkg from '../../package.json';

import seargentPng from '../assets/seargent.png';
import githubPng from '../assets/github.png';

export default function Header() {
  return (
    <div
      className={classNames(
        'fixed',
        'top-0',
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
          )}
        >
          Learn the Creed
        </div>
        <div className="font-thin px-4">
          {`v${pkg.version}`}
        </div>
      </div>
      <div>
        <a href="https://github.com/dustinws/learn-the-creed">
          <img className="h-8" src={githubPng} alt="" />
        </a>
      </div>
    </div>
  );
}
