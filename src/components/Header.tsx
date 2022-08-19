import classNames from '../utils/classNames';

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
          <img className="h-8" src="/seargent.png" alt="" />
        </a>
        <div
          className={classNames(
            'text-4xl',
            'pl-4',
            'justify-self-center',
          )}
        >
          Learn the Creed
        </div>
        <div className="font-thin px-4">
          v0.0.4
        </div>
      </div>
      <div>
        <a href="https://github.com/dustinws/learn-the-creed">
          <img className="h-8" src="/github.png" alt="" />
        </a>
      </div>
    </div>
  );
}
