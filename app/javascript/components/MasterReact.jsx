import React, { useEffect, useState } from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter, Routes, Route } from "react-router-dom";

export const MasterReact = () => {
  const [loading, setloading] = useState(true);
  const [loadedMovie, setloadedMovie] = useState([]);

  const loadingSection = <div>Loading...</div>;
  const dataMovies = loadedMovie.map((loadedMovie, index) => {
    return <div key={index}>{loadedMovie.attributes.name}</div>;
  });

  useEffect(() => {
    const apiEndPoint = "/movies";
    fetch(apiEndPoint)
      .then((response) => {
        return response.json();
      })
      .then((data) => {
        moviesArray = data.data;
        setloadedMovie(moviesArray); // Array of Objects
        setloading(false);
      })
      .catch((error) => {
        console.warn("Error:", error);
      });
  }, []);

  console.log("loadedMovie", loadedMovie);
  if (loading) {
    return <> {loadingSection}</>;
  } else {
    return <>{dataMovies}</>;
  }
};
const masterReact = ReactDOM.createRoot(document.getElementById("masterReact"));
masterReact.render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/movies" element={<MasterReact />} />
        <Route
          path="*"
          element={
            <>
              hello
              <MasterReact />{" "}
            </>
          }
        />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
);
// document.addEventListener("DOMContentLoaded", () => {
//   ReactDOM.render(<MasterReact />, document.getElementById("masterReact"));
// });
export default MasterReact;
