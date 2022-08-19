import classNames from '../utils/classNames';

interface Props {
  readonly onInput: (search: string) => void;
}

export default function Search({ onInput }: Props) {
  return (
    <input
      className={classNames(
        'flex',
        'border-2',
        'rounded-md',
        'h-16',
        'w-96',
        'focus:border-2',
        'no-focus',
        'placeholder:justify-center',
        'w-full',
      )}
      onChange={(e) => onInput(e.target.value)}
      placeholder="The Soldier's Creed"
    />
  );
}
