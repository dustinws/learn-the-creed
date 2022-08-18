import { useState } from 'react';
import Header from './components/Header';

import creeds from './creeds.json';
import Creed from './pages/Creed';

function normalize(text: string) {
  return text
    .toLowerCase()
    .replace(/[^a-z]ig/, '')
    .replace('\n', '');
}

function classNames(...classes: string[]) {
  return classes.join(' ');
}

function getBGColor(creed: string, textSoFar: string) {
  const normalizedCreed = normalize(creed);
  const normalizedText = normalize(textSoFar);

  const normalizedSoFar = normalizedCreed.slice(0, normalizedText.length);
  const isFinished = normalizedCreed.length === normalizedText.length;

  console.log({
    normalizedText,
    normalizedSoFar,
    isFinished,
  })

  if (isFinished && normalizedCreed === normalizedText) {
    return 'bg-green-200';
  }
  if (!isFinished && normalizedSoFar === normalizedText) {
    return 'bg-slate-200';
  }
  return 'bg-red-200';
}

export default function App() {
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [practiceText, setPracticeText] = useState<string>('');

  return (
    <div className="bg-slate-600 h-screen w-screen text-white">
      <Header />
      <section className="m-4 flex-col justify-center align-middle">
        {!isEditing && (
          <Creed stanzas={creeds.nco} />
        )}
        {isEditing && (
          <div className="flex space-y-4">
            <textarea
              className={classNames(
                getBGColor(creeds.nco.join(' '), practiceText),
                'shadow-md',
                'rounded-md',
              )}
              value={practiceText}
              onChange={e => setPracticeText(e.target.value)}
            />
            <button
              onClick={() => setIsEditing(false)}
              className={classNames(
                'p-2',
                'rounded',
                'border-2',
                'border-indigo-500/100',
                'text-indigo-500/100',
                'hover:border-indigo-800',
                'hover:text-indigo-800',
                'drop-shadow-md',
              )}
            >
              Review Creed
            </button>
          </div>
        )}
      </section>
    </div>
  )
}
