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
- Go to https://app.akash.network/signup?ref=dddzdxlvw0fsrv9 and register an account
- Go to Earn Token Rewards and copy the Participant Code
- export CODE=YOUR_PARTICIPANT_CODE
- akash query market lease get --dseq $DSEQ --gseq $GSEQ --oseq $OSEQ --provider $PROVIDER --owner $ACCOUNT_ADDRESS --node $AKASH_NODE -o json > akashian/phase3/challenge2/$CODE.json
- Commit your change and make a pull request
