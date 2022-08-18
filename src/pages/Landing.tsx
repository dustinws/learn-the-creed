import { Link } from 'react-router-dom';
import creeds from '../creeds';

export default function Landing() {
  return (
    <div className="m-5">
      <h1>Available Creeds:</h1>
      {[...creeds.values()].map(creed => (
        <div>
          <Link to={`/creeds/${creed.slug}`}>{creed.name}</Link>
        </div>
      ))}
    </div>
  );
}