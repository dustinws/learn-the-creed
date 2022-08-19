import { useParams } from 'react-router';
import { Link } from 'react-router-dom';
import creeds from '../creeds';
import classNames from '../utils/classNames';

export default function Creed() {
  const { slug } = useParams();
  const creed = creeds.get(slug || '');

  if (!creed) {
    return (
      <h1>
        Creed
        {slug}
        {' '}
        is not supported yet.
      </h1>
    );
  }

  return (
    <div className="flex flex-col items-center flex-grow space-y-8 m-6 overflow-auto">
      <Link to="/">
        <button type="button">
          Back To Main
        </button>
      </Link>
      <h1 className="text-4xl font-thin">
        The
        {' '}
        {creed.name}
      </h1>
      <div className="font-thin">
        {creed.stanzas.map((stanza) => (
          <div key={stanza}>
            <div className="m-4">
              <p key={stanza}>{stanza}</p>
            </div>
          </div>
        ))}
      </div>
      <Link to={`/creeds/${slug}/practice`}>
        <button
          type="button"
          className={classNames(
            'p-2',
            'rounded',
            'border-2',
            'border-black',
            'w-full',
          )}
        >
          Practice
        </button>
      </Link>
    </div>
  );
}
