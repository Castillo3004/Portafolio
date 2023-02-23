(() => {
  type Avengers = {
    nicke: string;
    ironman: string;
    vision: string;
    activo: boolean;
    poder: number;
  };

  const avengers = {
    nicke: "Samuel L. Jackson",
    ironman: "Robert Downey Jr",
    vision: "Paul Bettany",
    activo: true,
    poder: 1500.123123,
  };

  // const {poder, vision} = avengers

  // console.log(poder.toFixed(2), vision.toUpperCase())

  const printAvenger = ({ ironman, ...resto }: Avengers) => {
    console.log(ironman, resto);
  };

  // printAvenger(avengers)

  const avengersArr: [string, boolean, number] = ["Cap. America", true, 150.15];

  const [cap, ironman , seriaUnNumero] = avengersArr;

//   console.log({ ironman, cap });




})();
