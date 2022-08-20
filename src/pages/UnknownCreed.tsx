import classNames from '../utils/classNames';

interface Props {
  readonly creedName: string;
}

export default function UnknownCreed({ creedName }: Props) {
  return (
    <div
      className={classNames(
        'flex',
        'flex-col',
        'h-full',
        'justify-center',
        'items-center',
        'm-10',
        'space-y-16',
      )}
    >
      <h1 className="text-4xl">
        {creedName}
      </h1>
      <h1 className="text-2xl">Unfortunately we do not currently support this creed.</h1>
      <div className="text-lg">
        If you think that we should add this to our library, please email us
        with a link to the creed on an official website so that we can verify
        it and add the correct version.
      </div>
      <a href="mailto:duwstiles@pm.me">
        <button
          type="button"
          className={classNames(
            'border-2',
            'border-slate-300',
            'text-lg',
            'p-4',
            'rounded',
            'hover:shadow-md',
          )}
        >
          Send Email
        </button>
      </a>
    </div>
  );
}
