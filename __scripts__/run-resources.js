const { execSync } = require("child_process");

const args = process.argv.slice(2);

if (args.length !== 3) {
  console.error(
    "Please provide three arguments, for example: aws dynamodb create-bills.sh"
  );
  process.exit(1);
}

const command = `bash __local__/resources/${args[0]}/${args[1]}/${args[2]}`;
console.log(`Running command: ${command}`);

try {
  execSync(command, { stdio: "inherit" });
} catch (error) {
  console.error("Error running command:", error.message);
  process.exit(1);
}
