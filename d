<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Budsy Demo</title>
<style>
body {
font-family: Arial, sans-serif;
background-color: #f0f2f5;
display: flex;
justify-content: center;
align-items: flex-start;
padding-top: 50px;
margin: 0;
}
#app-container {
background-color: #fff;
padding: 30px;
border-radius: 10px;
box-shadow: 0 0 15px rgba(0,0,0,0.1);
width: 100%;
max-width: 600px;
}
h1 {
text-align: center;
color: #333;
}
#review-list {
list-style: none;
padding: 0;
margin: 20px 0;
}
#review-list li {
background-color: #e0e0e0;
margin-bottom: 10px;
padding: 10px 15px;
border-radius: 5px;
}
input[type="text"] {
width: calc(100% - 110px);
padding: 10px;
margin-right: 10px;
border-radius: 5px;
border: 1px solid #ccc;
}
button {
padding: 10px 15px;
border-radius: 5px;
border: none;
background-color: #4CAF50;
color: white;
cursor: pointer;
}
button:hover {
background-color: #45a049;
}
</style>
</head>
<body>

<div id="app-container">
<h1>Budsy Demo</h1>

<!-- Your note -->
<p>This is my Budsy note.</p>

<!-- Review Section -->
<div id="review-section">
<input type="text" id="new-review" placeholder="Type a review...">
<button id="submit-review">Submit</button>
<ul id="review-list"></ul>
</div>
</div>

<script>
const submitButton = document.getElementById('submit-review');
const reviewList = document.getElementById('review-list');

submitButton.addEventListener('click', () => {
const newReview = document.getElementById('new-review').value.trim();
if (!newReview) return;

// Create review element
const li = document.createElement('li');
li.textContent = newReview + ' (AI reply goes here)'; // placeholder for AI reply
reviewList.appendChild(li);

// Clear input
document.getElementById('new-review').value = '';
});
</script>

</body>
</html>
