import { Link } from 'react-router-dom';
import creeds, { Creed } from '../creeds';

export default function Landing() {
  return (
    <div className="flex flex-col h-screen space-y-10 justify-center items-center">
      {[...creeds.values()].map((creed: Creed) => (
        <Link
          key={creed.slug}
          to={`/creeds/${creed.slug}`}
          className="flex rounded justify-center border-2 w-96"
        >
          {creed.name}
        </Link>
      ))}
    </div>
  );
}
