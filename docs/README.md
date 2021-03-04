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
# or
npm install
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

#### Can't open `scripts\HexToJpn.py` [Errno 2] No such file or directory

Edit the `docs/.env` file and set `NEXT_PUBLIC_PYTHON_SCRIPTS_PATH` equal to your python path

#### Adding a new python script

- `scripts/*` - Raw python **def** functions go here.
- `dictionary/*` CSV text language files go here.
- `docs/api` - This is the folder **vercel** will look at to consume serverless python functions (endpoints).
- `docs/api/_scripts` - This is a symbolic link to the root **scripts** directory so that vercel can access our raw python **defs**
- `docs/api/_dictionary` - A symbolic link to the root **dictionary** folder.
- `docs/pages/api` - Local version stores node endpoints here.
