import { useState } from 'react';
import { Link } from 'react-router-dom';
import { useParams } from 'react-router';

import creeds from '../creeds';
import classNames from '../utils/classNames';
import { check, toBackground } from '../domain/checker';
import UnknownCreed from './UnknownCreed';

export default function Practice() {
  const [userInput, setUserInput] = useState<string>('');
  const [selectedStanza, setSelectedStanza] = useState<null | string>(null);
  const { slug } = useParams();
  const creed = creeds.get(slug || '');

  if (!creed) {
    return <UnknownCreed creedName={slug!} />;
  }

  const result = selectedStanza
    ? check(selectedStanza, userInput)
    : check(creed.stanzas.join(' '), userInput);
  const bgColor: string = toBackground(result);

  return (
    <div className="flex flex-col px-6 py-4 space-y-4 justify-center flex-grow">
      <Link to={`/creeds/${creed.slug}`}>
        <button
          type="button"
          className="border-2 p-2 rounded border-slate-400 hover:shadow-md"
        >
          Back To Creed
        </button>
      </Link>
      <div className="flex items-center">
        <div className="m-6 text-2xl">{creed.name}</div>
        <select>
          <option onClick={() => setSelectedStanza(null)} value="entire-creed">Entire Creed</option>
          {creed.stanzas.map((stanza, index) => (
            <option
              key={stanza}
              onClick={() => setSelectedStanza(stanza)}
            >
              Stanza
              {' '}
              {index + 1}
            </option>
          ))}
        </select>
      </div>
      <div className="m-6 font-thin">
        * Punctuation and capitalization does not matter. Only the words.
      </div>
      <textarea
        value={userInput}
        onChange={(e) => setUserInput(e.target.value)}
        placeholder="Being typing here... Can you finish it?"
        className={
          classNames(
            'h-96',
            'textarea',
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
