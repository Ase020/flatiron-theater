import { useEffect, useState } from "react";

import "./App.css";

function App() {
   const [productions, setProductions] = useState([]);

   useEffect(() => {
      fetch("http://localhost:3000/productions")
         .then((res) => res.json())
         .then(setProductions);
   }, []);

   return (
      <div>
         {productions.map((prod) => (
            <div key={prod.id}>
               <h2>{prod.title}</h2>
               <h3>{prod.genre}</h3>
               <p>{prod.budget}</p>
               <p>{prod.director}</p>
               <img src={prod.image} alt={prod.title} />
               <p>{prod.description}</p>
            </div>
         ))}
      </div>
   );
}

export default App;
