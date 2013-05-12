{-| A data model for a simple 101companies System such that companies are flat containers of employees where all sorts of data are modeled by means of algebraic data types in Haskell. By means of "deriving" clauses, all types are readied for equality, showing (export to a string for output), and reading (import from a
string for input). -}

module Company.Data where

-- | A company consists of company name and employees
data Company = Company Name [Employee]
  deriving (Eq, Show, Read)

-- | An employee consists of a name, an address, and a salary
data Employee = Employee Name Address Salary
  deriving (Eq, Show, Read)

-- | Names as strings
data Name = Name String
  deriving (Eq, Show, Read)

-- | Addresses as strings
data Address = Address String
  deriving (Eq, Show, Read)

-- | Salaries as floats
data Salary = Salary Float
  deriving (Eq, Show, Read)
