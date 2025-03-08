const myname = "kamal";
console.log(myname);

const run = () => {
  console.log("running");
};

class People {
  name: string;
  age: number;
  fullData: string;

  constructor() {
    this.fullData = `${this.name} ${this.age}`;
  }
}
