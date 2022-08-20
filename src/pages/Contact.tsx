export default function Contact() {
  return (
    <div className="flex flex-col items-center flex-grow space-y-8 m-6 overflow-auto">
      <h1 className="text-4xl font-thin underline">Contact</h1>
      <p className="m-4 font-thin">
        Currently the best way to contact me is via
        {' '}
        <a href="mailto:duwstiles@pm.me" className="text-blue-500 underline">this</a>
        {' '}
        email.
      </p>
    </div>
  );
}
