interface IPerson {
  name: string;
  age: number;
}

const person: IPerson = {
  name: "John",
  age: 30,
};

console.log("Hello, " + person.name);
