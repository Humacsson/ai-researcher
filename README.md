# AI Researcher
The AI Researcher is a tool that helps users to gather and filter large amounts of information. 

The main goal is to save users a lot of time that would normally be used to manually sift through lots of information and therefore allow the user to research topics that would otherwise be too time consuming for them.

A secondary, also very important, goal is to allow users to collaborate together on a particular topic by generating new conclusions from existing data, adding new data sources, or modifying old conclusions.

Ideally everything should be file based, and it should be possible for a human to manually read through the current conclusions and find the data they are based on. It should be easy to send an entire report to another user by just transferring one file to them. 

This is separate from the LLM models which will be used for filtering and understanding data.

This tool is meant to be used by anyone and should therefore be easy to set up an use. LLMs provide a unique capability by allowing all of the data to be stored in plain text instead of something complicated like JSON. This will allow users from any background to understand the data and possibly even manually modifying it, which should also be supported.

## Dependencies

- The project will use Ollama for communicating with models. This abstraction will save a lot of development time since running models is actually very complicated and error prone. Since Ollama has already taken care of this for us and supports many platforms/devices it's perfect for a tool like this that is meant to be used by anyone.
- For development conda is needed (or at least highly recommended) for keeping the environment consistent across multiple machines. Python in particular has a huge dependency hell issue that should be mitigated by separating the project Python dependencies from system dependencies and any other projects that might be installed on the machine.
- For now this project will use Python for all source code. This is not ideal for a project that is intended to run on any machine but is good enough in the beginning of the project since any work with the model like training will most likely use Python. Later on we will want to split out code that is supposed to be installed and run by the user only to be written in something like Go that can be compiled into a binary for use on any system.

## Installing dependencies

### Ollama

Just follow the instructions here:
- https://ollama.com

### Conda & Python

1. Install miniconda (https://docs.anaconda.com/free/miniconda/#quick-command-line-install)

2. Disable auto initializization after install with:
`conda config --set auto_activate_base false`

3. Create a new environment for `ai-researcher`:
`conda create --name ai-researcher python=3.11.9`

4. Now activate the new environment:
`conda activate ai-researcher`

You will need to activate the environment every time you start working on the project in a new terminal.

Once the environment is active install all dependencies with the command `make dependencies` (or `make deps` which is a shortcut for the same command).

## Resources
- https://llm.mlc.ai

## Available Models
Any model supported by Ollama can be used. Either use a model already in the Ollama library or use a local model in the GGUF format. You can find available GGUF models on huggingface:
- https://huggingface.co/models?library=gguf
