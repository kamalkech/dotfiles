interface IPerson {
  name: string;
  age: number;
}

function getPerson(): IPerson {
  return {
    name: "John",
    age: 30,
  };
}

const addPerson = (person: IPerson) => {
  console.log(person);
};

console.log(getPerson());
