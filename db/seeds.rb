User.destroy_all
User.create([
  {
    first_name: 'Darcy',
    last_name: 'Lauder',
    email: 'darcy.lauder@shaw.ca'
  }
])

NavigationLink.destroy_all
NavigationLink.create([
  {
    user_id: 1,
    file_name: "bars-solid",
    file_type: "svg",
    description: "Settings",
    container_order: 0,
  },
  {
    user_id: 1,
    file_name: "circle-info-solid",
    file_type: "svg",
    description: "About Me",
    container_order: 1,
  },  
  {
    user_id: 1,
    file_name: "puzzle-piece-solid",
    file_type: "svg",
    description: "Projects",
    container_order: 2,
  },
  {
    user_id: 1,
    file_name: "envelope-solid",
    file_type: "svg",
    description: "Contact Me",
    container_order: 3,
  },
  {
    user_id: 1,
    file_name: "at-solid",
    file_type: "svg",
    description: "Links",
    container_order: 4,
  },
  {
    user_id: 1,
    file_name: "arrow-right-to-bracket-solid",
    file_type: "svg",
    description: "Login",
    container_order: 0,
    parent_id: 1,
  },
  {
    user_id: 1,
    file_name: "paper-plane-solid",
    file_type: "svg",
    description: "Email",
    container_order: 0,
    parent_id: 4,
  },
  {
    user_id: 1,
    file_name: "github",
    file_type: "svg",
    description: "Github",
    container_order: 1,
    parent_id: 5,
  },
  {
    user_id: 1,
    file_name: "linkedin-in",
    file_type: "svg",
    description: "LinkedIn",
    container_order: 2,
    parent_id: 5,
  },
  {
    user_id: 1,
    file_name: "stack-overflow",
    file_type: "svg",
    description: "Stack Overflow",
    container_order: 3,
    parent_id: 5,
  },
  {
    user_id: 1,
    file_name: "magnifying-glass-solid",
    file_type: "svg",
    description: "Search",
    container_order: 0,
    parent_id: 3,
  },
  {
    user_id: 1,
    file_name: "question-solid",
    file_type: "svg",
    description: "Summary",
    container_order: 1,
    parent_id: 2,
  },
  {
    user_id: 1,
    file_name: "clipboard-check-solid",
    file_type: "svg",
    description: "Contact Form",
    container_order: 1,
    parent_id: 4,
  },
  {
    user_id: 1,
    file_name: "clipboard-user-solid",
    file_type: "svg",
    description: "Resume",
    container_order: 0,
    parent_id: 2,
  }


])