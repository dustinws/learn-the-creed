import classNames from '../utils/classNames';

interface Props {
  readonly stanzas: string[];
}

export default function Creed({ stanzas }: Props) {
  return (
    <>
      {stanzas.map((stanza, index) => (
          <>
            <div className="m-4">
              <p key={index}>{stanza}</p>
            </div>
          </>
        ))}

    <button
          className={classNames(
            'p-2',
            'rounded',
            'border-2',
            'border-indigo-500/100',
            'text-indigo-500/100',
            'hover:border-indigo-800',
            'hover:text-indigo-800',
          )}
        >
          Practice
        </button>
    </>
  );
}