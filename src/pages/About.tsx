import { Link } from 'react-router-dom';

export default function About() {
  return (
    <div className="flex flex-col items-center flex-grow space-y-8 m-6 overflow-auto">
      <h1 className="text-4xl font-thin underline">About</h1>
      <p className="m-4 font-thin">
        This website was originally created so that I could use it to study for
        my own board. I made it public so that others might use it too.
      </p>
      <h1 className="text-4xl font-thin">Adding Creeds / Features</h1>
      <p className="m-4 font-thin">
        If you would like to add a creed or propose an idea for a new feature, feel free to send me
        an email. If it seems like something that other people could use as well,
        then I would be happy to add it.
      </p>
      <p className="m-4 font-thin">
        Head over to the
        {' '}
        <Link className="text-blue-500 underline" to="/contact">contact</Link>
        {' '}
        page to send me an email.
      </p>
    </div>
  );
}
