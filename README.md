# Akash-Challenges

## [Challenge 1](https://docs.akash.network/v/master/testnet-challenges/testnet-challenges/guided-deployments#challenge-1-week-1) 
---

### Installations:
* git clone https://github.com/blurtbuzz/Akash-Challenges.git
* cd Akash-Challenges
* . ./install.sh

### Create Wallet:

- export KEY_NAME="ANY_KEY_NAME"
- export KEYRING_BACKEND="os"
- akash --keyring-backend "$KEYRING_BACKEND" keys add "$KEY_NAME"
    - Enter keyring passphrase(password to unlock your wallet)
- export ACCOUNT_ADDRESS="$(akash keys show $KEY_NAME -a)"

### Funding Account

- Go to https://akash.vitwit.com/faucet and enter your address to receive funds
- Check account balance:
    - akash --node "$AKASH_NODE" query bank balances "$ACCOUNT_ADDRESS"

### Deploy Your App:

- Fork this repo: https://github.com/ovrclk/ecosystem
- cd
- git clone https://github.com/YOUR_GIT_ACCOUNT/ecosystem.git
- cd ecosystem
- curl -s https://raw.githubusercontent.com/ovrclk/docs/master/guides/deploy/deploy.yml > deploy.yml
- akash tx deployment create deploy.yml --from $KEY_NAME --node $AKASH_NODE --chain-id $AKASH_CHAIN_ID -y
- akash query market lease list --owner $ACCOUNT_ADDRESS --node $AKASH_NODE --state active
    - Wait for your Lease

    leases:
    - lease_id:
        dseq: "47714"
        gseq: 1
        oseq: 1
        owner: akash1nyxtwy6y0crnvrfmctfjyaljzu8y4xc46398ah
        provider: akash174hxdpuxsuys9qkauaf57ym5j8dm4secnz6jd7
      price:
        amount: "43"
        denom: uakt
      state: active
    pagination:
      next_key: null
      total: "0"

- export DSEQ=GENERATED_VALUE_FROM_ABOVE
- export GSEQ=GENERATED_VALUE_FROM_ABOVE
- export OSEQ=GENERATED_VALUE_FROM_ABOVE
- export OWNER=GENERATED_VALUE_FROM_ABOVE
- export PROVIDER=GENERATED_VALUE_FROM_ABOVE
- Go to https://app.akash.network/signup?ref=dddzdxlvw0fsrv9 and register an account
- Go to Earn Token Rewards and copy the Participant Code
- export CODE=YOUR_PARTICIPANT_CODE
- akash query market lease get --dseq $DSEQ --gseq $GSEQ --oseq $OSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS --node $AKASH_NODE -o json > akashian/phase3/challenge1/$CODE.json
- Commit your change and make a pull request

## [Challenge 2](https://docs.akash.network/v/master/testnet-challenges/testnet-challenges/guided-deployments#challenge-2-week-1) 
---

### Installations:
* git clone https://github.com/blurtbuzz/Akash-Challenges.git
* cd Akash-Challenges
* . ./setup.sh

### Setup Wallet:

- export KEY_NAME="ANY_KEY_NAME"
- export KEYRING_BACKEND="os"
- export ACCOUNT_ADDRESS="$(akash keys show $KEY_NAME -a)"


### Deploy Your App:
- cd
- cd ecosystem
- curl -s https://raw.githubusercontent.com/ovrclk/docs/335978772efddd76215adadcd6fa4d13464ddff7/testnet-challenges/deploy-1-2.yaml > deploy.yml
- akash tx deployment create deploy.yml --from $KEY_NAME --node $AKASH_NODE --chain-id $AKASH_CHAIN_ID -y
- akash query market lease list --owner $ACCOUNT_ADDRESS --node $AKASH_NODE --state active
    - Wait for your Lease

    leases:
    - lease_id:
        dseq: "47714"
        gseq: 1
        oseq: 1
        owner: akash1nyxtwy6y0crnvrfmctfjyaljzu8y4xc46398ah
        provider: akash174hxdpuxsuys9qkauaf57ym5j8dm4secnz6jd7
      price:
        amount: "43"
        denom: uakt
      state: active
    pagination:
      next_key: null
      total: "0"

- export DSEQ=GENERATED_VALUE_FROM_ABOVE
- export GSEQ=GENERATED_VALUE_FROM_ABOVE
- export OSEQ=GENERATED_VALUE_FROM_ABOVE
- export OWNER=GENERATED_VALUE_FROM_ABOVE
- export PROVIDER=GENERATED_VALUE_FROM_ABOVE
- Go to https://app.akash.network/
- Go to Earn Token Rewards and copy the Participant Code
- export CODE=YOUR_PARTICIPANT_CODE
- akash query market lease get --dseq $DSEQ --gseq $GSEQ --oseq $OSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS --node $AKASH_NODE -o json > akashian/phase3/challenge2/$CODE.json
- Commit your change and make a pull request


## [Challenge 3](https://docs.akash.network/v/master/testnet-challenges/testnet-challenges/guided-deployments#challenge-3-week-1) 
---

### Installations:
* git clone https://github.com/blurtbuzz/Akash-Challenges.git
* cd Akash-Challenges
* . ./setup.sh

### Setup Wallet:

- export KEY_NAME="ANY_KEY_NAME"
- export KEYRING_BACKEND="os"
- export ACCOUNT_ADDRESS="$(akash keys show $KEY_NAME -a)"


### Deploy Your App:
- cd
- cd ecosystem
- curl -s https://raw.githubusercontent.com/ovrclk/docs/9e527054721faae47413014d5dafae6ea14d30f7/testnet-challenges/deploy-1-3.yaml > deploy.yml
- akash tx deployment create deploy.yml --from $KEY_NAME --node $AKASH_NODE --chain-id $AKASH_CHAIN_ID -y
- akash query market lease list --owner $ACCOUNT_ADDRESS --node $AKASH_NODE --state active
    - Wait for your Lease

    leases:
    - lease_id:
        dseq: "47714"
        gseq: 1
        oseq: 1
        owner: akash1nyxtwy6y0crnvrfmctfjyaljzu8y4xc46398ah
        provider: akash174hxdpuxsuys9qkauaf57ym5j8dm4secnz6jd7
      price:
        amount: "43"
        denom: uakt
      state: active
    pagination:
      next_key: null
      total: "0"

- export DSEQ=GENERATED_VALUE_FROM_ABOVE
- export GSEQ=GENERATED_VALUE_FROM_ABOVE
- export OSEQ=GENERATED_VALUE_FROM_ABOVE
- export OWNER=GENERATED_VALUE_FROM_ABOVE
- export PROVIDER=GENERATED_VALUE_FROM_ABOVE
* akash provider send-manifest deploy.yml --node $AKASH_NODE --dseq $DSEQ --oseq $OSEQ --gseq $GSEQ --owner $ACCOUNT_ADDRESS --provider $PROVIDER
* akash provider lease-status --node $AKASH_NODE --dseq $DSEQ --oseq $OSEQ --gseq $GSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS
~~~
{
  "services": {
    "akash": {
      "name": "akash",
      "available": 1,
      "total": 1,
      "uris": [
        "zke3b5enbvvzdh34wpohv9.provider3.akashdev.net"
      ],
      "observed-generation": 0,
      "replicas": 0,
      "updated-replicas": 0,
      "ready-replicas": 0,
      "available-replicas": 0
    }
  },
  "forwarded-ports": {}
}
~~~
* Copy the uris from above(eg: "zke3b5enbvvzdh34wpohv9.provider3.akashdev.net"), and run the following command:
* export DEPLOYMENT_HOST="URIS_FROM_ABOVE"
    * eg: export DEPLOYMENT_HOST="zke3b5enbvvzdh34wpohv9.provider3.akashdev.net"
* akash --node "tcp://$DEPLOYMENT_HOST:80" status
- Go to https://app.akash.network/
- Go to Earn Token Rewards and copy the Participant Code
- export CODE=YOUR_PARTICIPANT_CODE
- akash query market lease get --dseq $DSEQ --gseq $GSEQ --oseq $OSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS --node $AKASH_NODE -o json > akashian/phase3/challenge3/$CODE.json
- Commit your change and make a pull request


## [Challenge 4](https://docs.akash.network/v/master/testnet-challenges/testnet-challenges/guided-deployments#challenge-1-week-2) 
---

### Installations:
* git clone https://github.com/blurtbuzz/Akash-Challenges.git
* cd Akash-Challenges
* . ./setup.sh

### Setup Wallet:

- export KEY_NAME="ANY_KEY_NAME"
- export KEYRING_BACKEND="os"
- export ACCOUNT_ADDRESS="$(akash keys show $KEY_NAME -a)"


### Deploy Your App:
- cd
- cd ecosystem
* git remote add upstream https://github.com/ovrclk/ecosystem.git
* git fetch upstream
* git pull upstream master
- curl -s https://raw.githubusercontent.com/ovrclk/docs/02995cca8d90a6bdf1bec896c6e28b6e51cb58ee/testnet-challenges/deploy-2-1.yaml > deploy.yml
- akash tx deployment create deploy.yml --from $KEY_NAME --node $AKASH_NODE --chain-id $AKASH_CHAIN_ID -y
- akash query market lease list --owner $ACCOUNT_ADDRESS --node $AKASH_NODE --state active
    - Wait for your Lease

    leases:
    - lease_id:
        dseq: "47714"
        gseq: 1
        oseq: 1
        owner: akash1nyxtwy6y0crnvrfmctfjyaljzu8y4xc46398ah
        provider: akash174hxdpuxsuys9qkauaf57ym5j8dm4secnz6jd7
      price:
        amount: "43"
        denom: uakt
      state: active
    pagination:
      next_key: null
      total: "0"

- export DSEQ=GENERATED_VALUE_FROM_ABOVE
- export GSEQ=GENERATED_VALUE_FROM_ABOVE
- export OSEQ=GENERATED_VALUE_FROM_ABOVE
- export OWNER=GENERATED_VALUE_FROM_ABOVE
- export PROVIDER=GENERATED_VALUE_FROM_ABOVE
- Go to https://app.akash.network/
- Go to Earn Token Rewards and copy the Participant Code
- export CODE=YOUR_PARTICIPANT_CODE
- akash query market lease get --dseq $DSEQ --gseq $GSEQ --oseq $OSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS --node $AKASH_NODE -o json > akashian/phase3/challenge4/$CODE.json
- Commit your change and make a pull request
