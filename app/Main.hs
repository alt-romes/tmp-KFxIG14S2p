{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedRecordDot #-}

import Data.List
import DeriveHasField

data BankAccount =
  BankAccount
    { bankAccountAccountNumber :: String
    }

deriveHasFieldWith (drop $ length "bankAccount") ''BankAccount

b = BankAccount "hello"
main = print $ b.accountNumber
