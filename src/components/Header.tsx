import classNames from '../utils/classNames';

export default function Header() {
  return (
    <div
      className={classNames(
        'flex',
        'w-full',
        'items-center',
        'h-16',
        'bg-indigo-100',
      )}
    >
      <a href="/">
        <img className="h-8 pl-4" src="/seargent.png" alt="" />
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
  );
}
