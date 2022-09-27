import React from "react";
import ReactDOM from "react-dom/client";
import MasterReact from "./MasterReact";
// This is a React Router v6 app
import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* <Route path="/movies" element={<MasterReact />} /> */}
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
  );
}
const root = ReactDOM.createRoot(document.getElementById("app"));
root.render(<App />);
