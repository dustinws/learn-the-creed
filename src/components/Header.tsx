export default function Header() {
  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6">
      <div className="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
        <div className="flex justify-start lg:w-0 lg:flex-1">
          <a href="/">
            <span className="sr-only">Workflow</span>
            <img className="h-8 w-auto sm:h-10" src="/seargent.png" alt="" />
          </a>
          <h1 className="place-self-center text-4xl px-5">Learn the Creed</h1>
        </div>
      </div>
    </div>
  )
}