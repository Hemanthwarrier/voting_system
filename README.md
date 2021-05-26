# Voting-System
Blockchain based voting system.
## Setup
### Dependencies
<ul>
  <li>NodeJS: https://nodejs.org</li>
  <li>Truffle: https://github.com/trufflesuite/truffle</li>
  <li>Ganache: http://truffleframework.com/ganache/</li>
  <li>Metamask: https://metamask.io/</li>
</ul>  

### Step 1. Clone the project
`git clone https://github.com/Hemanthwarrier/voting_system`

### Step 2. Install dependencies
```
λ cd voting_system
λ npm install
```
### Step 3. Start Ganache
Run the Ganache GUI to start the local blockchain.

### Step 4. Compile & Deploy Election Smart Contract
`$ truffle migrate --reset`
Deploying the election contract to the local blockchain network.

### Step 5. Configure Metamask
- Unlock Metamask
- Add network configaration for the local blockchain network provided by Ganache
- Import an account provided by ganache to the metamask.

### Step 6. Run the Front End Application
`$ npm start`
Visit this URL in your browser: http://localhost:3000
