interface Iperson {
  name: string;
  age: number;
}

const person: Iperson = {
  name: "John",
  age: 30,
};

console.log("Hello, " + person.name);
