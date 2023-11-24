// Get references to DOM elements
const chatBox = document.getElementById("chatBox");
const userInput = document.getElementById("userInput");
const sendMessageButton = document.getElementById("sendMessage");

// Function to add a user message to the chat
function addUserMessage(message) {
    const userMessage = document.createElement("div");
    userMessage.className = "chat-message1 user-message";
    userMessage.textContent = message;
    chatBox.appendChild(userMessage);
    userInput.value = ""; // Clear the input field
}

// Function to add a bot message to the chat
function addBotMessage(message) {
    // Add "Bot is typing..." message
    const botIsTypingMessage = document.createElement("div");
    botIsTypingMessage.className = "chat-message bot-message";
    botIsTypingMessage.textContent = "Bot is typing...";
    chatBox.appendChild(botIsTypingMessage);

    // Simulate delay before bot responds
    setTimeout(() => {
        // Remove the "Bot is typing..." message
        chatBox.removeChild(botIsTypingMessage);

        // Add the actual bot response
        const botMessage = document.createElement("div");
        botMessage.className = "chat-message bot-message";
        botMessage.textContent = message;
        chatBox.appendChild(botMessage);
    }, 1000); // Simulating a delay for the bot's response (you can adjust this)
}

// Function to handle user input and send messages
function sendMessage(message) {
    addUserMessage(message);

    // Handle user messages here and generate bot responses
    if (message.toLowerCase() === "get started") {
        // Respond to "Get Started" message
        addBotMessage('Great! How can I assist you with your career?');
    } else if (message.toLowerCase().includes("career advice")) {
        // Respond to questions about career advice
        addBotMessage("I can provide advice on various career topics. What specific question do you have?");
    } else if (message.toLowerCase() === "goodbye") {
        // Respond to "Goodbye" message
        addBotMessage("Goodbye! If you have more questions in the future, feel free to ask.");
    } else if (message.toLowerCase() === "hello") {
        // Respond to "Hello" message
        addBotMessage("Hello! \nHow can I assist you?");
    } else if (message.toLowerCase() === "hellows") {
        // Respond to "Hello" message
        addBotMessage("Hello! How can I assist you?");
    } else if (message.toLowerCase().includes("networking skills")) {
        // Respond to questions about networking skills
        addBotMessage("Networking skills are important for building professional connections. They involve...");


        //bsit
    } else if (message.toLowerCase().includes("what is bsit/bscs")) {
        addBotMessage(`Description:
        BSIT: Focuses on the practical application of technology in business settings, including networking, software development, and system management.
        BSCS: Emphasizes the theoretical foundations of computing, algorithms, programming languages, and software design.
    
    Alignment with Skills and Interests:
        BSIT: Suited for those interested in the practical use of technology in various industries and solving real-world problems.
        BSCS: Ideal for individuals with a strong interest in the theoretical aspects of computing, algorithm development, and software engineering.
        
    Possible Challenges:
        BSIT: Keeping up with industry trends, managing diverse technology applications, and handling project-based workloads.
        BSCS: Mastering complex algorithms, theoretical concepts, and handling abstract problem-solving.
       
    Possible Jobs:
        BSIT: Network Administrator, Software Developer, Systems Analyst, IT Consultant, Cybersecurity Analyst.
        BSCS: Software Engineer, Computer Programmer, Data Scientist, Database Administrator, Artificial Intelligence Engineer.`);
    }
    
    
      //bse
    
     else if (message.toLowerCase().includes("what is bsa/bse")) {
    addBotMessage(`Description:
    BS Architecture: Focuses on the principles of architectural design, construction, and spatial planning.
    BSE: Encompasses a variety of engineering disciplines, such as civil, mechanical, electrical, or aerospace engineering, depending on the specialization.
    
Alignment with Skills and Interests:
    BS Architecture: Suited for those with a creative flair, interest in design, and an appreciation for the aesthetics of buildings and spaces.
    BSE: Ideal for individuals with strong analytical and problem-solving skills, a passion for technology, and an interest in designing and improving systems.
   
Possible Challenges:
    BS Architecture: Balancing creativity with technical requirements, managing complex design projects, and adapting to evolving architectural trends.
    BSE: Navigating through rigorous mathematical and scientific concepts, handling complex engineering problems, and staying abreast of technological advancements.
    
Possible Jobs:
    BS Architecture: Architect, Urban Planner, Interior Designer, Construction Project Manager.
    BSE: Civil Engineer, Mechanical Engineer, Electrical Engineer, Aerospace Engineer, Environmental Engineer.`);


    //beed
}
else if (message.toLowerCase().includes("what is beed/bsed")) {
    addBotMessage(`Description:
    BEEd: Focuses on preparing students to become elementary school teachers, covering a broad range of subjects for early education.
    BSEd: Prepares students to teach in secondary or high school settings, specializing in specific subjects.
    
Alignment with Skills and Interests:
    BEEd: Suitable for individuals passionate about teaching young children, developing foundational skills, and creating a positive learning environment.
    BSEd: Ideal for those interested in teaching specific subjects to older students, with a focus on a particular academic area.
    
Possible Challenges:
    BEEd: Adapting teaching methods for diverse learning styles, managing classroom dynamics, and addressing individual needs.
    BSEd: Balancing depth of subject knowledge with effective teaching, handling the challenges of adolescent students, and engaging them in the learning process.
    
Possible Jobs:
    BEEd: Elementary School Teacher, Preschool Teacher, Education Consultant, Curriculum Developer.
    BSEd: High School Teacher, Subject-Specific Educator (e.g., Math, Science, English), Educational Administrator, Curriculum Coordinator.`);
    
    
    //BSN BSP
} else if (message.toLowerCase().includes("what is bsn/bsp")) {
    addBotMessage(`Description:
    BSN: Focuses on nursing theory, clinical practice, and patient care. It prepares students for roles in healthcare, emphasizing nursing skills and medical knowledge.
    BSP: Centers on pharmaceutical sciences, drug discovery, and medication management. It trains students in the science and application of pharmacy.
    
Alignment with Skills and Interests:
    BSN: Suitable if you have a passion for patient care, strong communication skills, and enjoy working in healthcare settings.
    BSP: Appropriate if you have an interest in pharmaceuticals, chemistry, and a desire to work in the development and management of medications.
    
Possible Challenges:
    BSN: Emotional challenges dealing with patient health, demanding schedules, and the need for effective communication and teamwork.
    BSP: Rigorous coursework in pharmaceutical sciences, staying updated on drug advancements, and handling responsibilities in medication dispensing.
    
Possible Jobs:
    BSN: Registered Nurse, Nurse Practitioner, Clinical Nurse Specialist, Nurse Manager.
    BSP: Pharmacist, Clinical Pharmacist, Pharmaceutical Researcher, Regulatory Affairs Specialist.`);


    //bstm
} else if (message.toLowerCase().includes("what is bstm/bshm")) {
    addBotMessage(`Description:
    BSTM: Focuses on the tourism industry, covering topics like travel planning, destination management, and tourism marketing.
    BSHM: Concentrates on the hospitality sector, including hotel and restaurant management, event planning, and customer service.
    
Alignment with Skills and Interests:
    BSTM: Suited for those interested in travel, cultural experiences, and marketing within the tourism sector.
    BSHM: Ideal for individuals with a passion for hospitality, customer service, and managing operations within hotels, restaurants, and events.
    
Possible Challenges:
    BSTM: Adapting to the dynamic nature of the tourism industry, dealing with cultural differences, and managing travel logistics.
    BSHM: Balancing customer satisfaction with operational efficiency, handling diverse guest needs, and addressing challenges in the service industry.
    
Possible Jobs:
    BSTM: Travel Agent, Tourism Manager, Destination Marketing Specialist, Event Planner.
    BSHM: Hotel Manager, Restaurant Manager, Event Coordinator, Hospitality Consultant.`);
}


    
       else {
        // Respond to unrecognized messages
        addBotMessage("I'm here to assist with career advice. Please ask a specific question or type 'Get Started'.");
    }
}

// Event listener for the "Send" button
sendMessageButton.addEventListener("click", () => {
    const userMessage = userInput.value.trim();
    if (userMessage !== "") {
        sendMessage(userMessage);
    }
});

// Event listener for the Enter key in the input field
userInput.addEventListener("keyup", (event) => {
    if (event.key === "Enter") {
        const userMessage = userInput.value.trim();
        if (userMessage !== "") {
            sendMessage(userMessage);
        }
    }
});

