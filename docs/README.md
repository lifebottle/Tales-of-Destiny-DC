## Tales of Destiny DC Toolkit

#### Install python version 3+

###### OSX

```bash
brew install python3
```

###### Windows

- https://www.python.org/downloads/windows/

#### Install node (npm):

###### OSX

```bash
brew install node
```

###### Windows

- https://nodejs.org/en/download/package-manager/

#### Install yarn (optional)

```bash
npm -g install yarn
```

#### Run the server

###### Navigate to `/docs` directory:

```bash
cd docs
```

###### Install required node libraries

```bash
yarn
```

###### Run the development server:

```bash
npm run dev
# or
yarn dev
```

#### You are ready

Server will be live at [http://localhost:3000](http://localhost:3000)

## FAQ

#### Python is not found

Edit the `docs/.env` file and set `NEXT_PUBLIC_PYTHON_PATH` equal to your python path
