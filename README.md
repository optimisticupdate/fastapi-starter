# FastAPI Starter with VS Code Dev Containers

This repository provides a starter setup for developing a **FastAPI** application using **VS Code Dev Containers** or **Docker Compose**. It enables a smooth development workflow, allowing you to choose between VS Code's built-in Dev Container environment or using Docker Compose with your preferred IDE.

## Features

- **FastAPI** development environment pre-configured.
- Option to use **VS Code Dev Containers** for a seamless, containerized development experience.
- **Docker Compose** support for easy environment setup and flexibility with IDE choice.
- Integrated API documentation available at `/docs`.

## Development Environments

### VS Code (Dev Container)

1. **Clone the Repository**:
    ```bash
    git clone git@github.com:optimisticupdate/fastapi-starter.git
    cd fastapi-starter
    touch .env
    ```

2. **Start VS Code**:  
    Ensure you have the **Dev Containers** extension installed.

3. **Open the Project in a Dev Container**:  
    - Click on the "Reopen in Container" prompt in VS Code.

4. **Run the Application**:  
    Open the VS Code terminal and execute:
    ```bash
    fastapi dev app/main.py --host 0.0.0.0
    ```

5. Access the application locally at:  
    - **Application**: [http://127.0.0.1:8000](http://127.0.0.1:8000)  
    - **API Docs**: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)


### Docker Compose (Attach to Container)

1. **Start the Bash Session in the API Container**:
    ```bash
    make bash
    ```

2. The `api` container will start and open a bash shell. From there, run:
    ```bash
    fastapi dev app/main.py --host 0.0.0.0
    ```

3. Access the application locally at:  
    - **Application**: [http://127.0.0.1:8000](http://127.0.0.1:8000)  
    - **API Docs**: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)


## Prerequisites

- **VS Code** with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
- **Docker** and **Docker Compose** installed.
- [Make](https://www.gnu.org/software/make/) (for using the `make` commands).


## Project Structure

```plaintext
.
├── app
│   ├── main.py        # FastAPI application entry point
│   └── ...
├── .devcontainer      # VS Code Dev Container configuration
├── docker-compose.yml # Docker Compose configuration
├── Makefile           # Automation of common tasks
└── README.md          # Project documentation
```


## Documentation

- **FastAPI Documentation**: [https://fastapi.tiangolo.com/](https://fastapi.tiangolo.com/)  
  Guide to FastAPI

- **VS Code Dev Containers Documentation**: [https://code.visualstudio.com/docs/devcontainers/containers](https://code.visualstudio.com/docs/devcontainers/containers)  
  Official documentation for developing inside containers using Visual Studio Code.

---

## Contributing

Contributions, issues, and feature requests are welcome!
