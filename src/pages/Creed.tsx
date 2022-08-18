import { useParams } from 'react-router';
import { Link } from 'react-router-dom';
import creeds from '../creeds';
import classNames from '../utils/classNames';

export default function Creed() {
  const { slug } = useParams();
  const creed = creeds.get(slug);

  if (!creed) {
    return <h1>Creed {slug} is not supported yet.</h1>;
  }

  return (
    <div className="m-6 overflow-auto">
      <h1>{creed.name}</h1>
      {creed.stanzas.map((stanza: string, index: number) => (
          <div key={stanza}>
            <div className="m-4">
              <p key={index}>{stanza}</p>
            </div>
          </div>
        ))}
      <Link to={`/creeds/${slug}/practice`}>
        <button
          className={classNames(
            'p-2',
            'rounded',
            'border-2',
            'border-white',
            'text-white',
            'hover:border-slate-300',
            'hover:text-slate-300',
          )}
        >
          Practice
        </button>
      </Link>
    </div>
  );
}