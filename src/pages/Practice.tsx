import { useState } from 'react';
import { Link } from 'react-router-dom';
import { useParams } from 'react-router';

import creeds from '../creeds';
import classNames from '../utils/classNames';
import { check, toBackground } from '../domain/checker';

export default function Practice() {
  const [userInput, setUserInput] = useState<string>('');
  const { slug } = useParams();
  const creed = creeds.get(slug);

  if (!creed) {
    return <h1>Creed {slug} is not yet supported</h1>;
  }

  const result = check(creed.stanzas, userInput);
  const bgColor: string = toBackground(result);

  console.log(bgColor)

  return (
    <div className="flex flex-col space-y-4">
      <Link to={`/creeds/${slug}`}>Back To Creed</Link>
      <textarea
        value={userInput}
        onChange={e => setUserInput(e.target.value)}
        className={
          classNames(
            'shadow-md',
            'rounded-md',
            'm-6',
            'p-6',
            'text-black',
            bgColor,
          )
        }
      />
    </div>
  );
}