process.env.PORT = process.env.PORT || 5678;

const { exec } = require("child_process");

exec("npx n8n", (err, stdout, stderr) => {
  if (err) {
    console.error("Error:", err);
    return;
  }
  console.log(stdout);
  console.error(stderr);
});
