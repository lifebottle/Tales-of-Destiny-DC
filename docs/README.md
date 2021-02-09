## Tales of Destiny DC Toolkit

#### 1.) Install python3

OSX

```bash
  brew install python3
```

Windows

- https://www.python.org/downloads/windows/

#### 2.) Install node (npm):

OSX

```bash
brew install node
```

Windows

- https://nodejs.org/en/download/package-manager/

#### 3.) Install yarn (optional)

```bash
npm -g install yarn
```

#### 4.) Run the server

Run the development server:

```bash
npm run dev
# or
yarn dev
```

#### 5.) Wheeeee

Server will be live at [http://localhost:3000](http://localhost:3000)

## FAQ

#### 1.) Python is not found

edit the `docs/.env` file and set `NEXT_PUBLIC_PYTHON_PATH` equal to your python path
