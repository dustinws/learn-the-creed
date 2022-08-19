import { Link } from 'react-router-dom';
import creeds, { Creed } from '../creeds';

export default function Landing() {
  return (
    <div className="flex flex-col m-10 h-screen space-y-10 items-center">
      {[...creeds.values()].map((creed: Creed) => (
        <Link
          key={creed.slug}
          to={`/creeds/${creed.slug}`}
          className="flex shadow-md flex-col items-center rounded justify-center border-2 hover:shadow-lg w-96 h-16"
        >
          <span className="text-xl">{creed.name}</span>
          <span className="font-thin">{creed.description}</span>
        </Link>
      ))}
    </div>
  );
}
