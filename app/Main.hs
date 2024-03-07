{-# LANGUAGE DeriveDataTypeable #-}
module Main where
import System.Environment (getArgs)
import System.Console.CmdArgs


data Cor = Azul | Amarelo | Branco | Rosa | Laranja 
           deriving (Show, Data, Typeable, Enum, Bounded)

instance Default Cor where
     def = Azul


data Interface = Interface {ano :: Int, cor :: Cor, gabarito :: Bool, pdf :: FilePath}
                 deriving (Show, Data, Typeable)

interface = Interface { ano = def &= help "O ano da prova"
                      , cor = def &= help "A cor da prova"
                      , gabarito = def &= help "Se é um gabarito"
                      , pdf = def &= args &= typ "Arquivo PDF" 
                      } &= program "redox" &= details ["Exemplos:", "redox -a 2023 -c branco -g <pdf> : GABARITO da prova BRANCO de 2023", "redox -a 2023 -c azul <pdf> : PROVA AZUL de 2023"]

main :: IO ()
main = do
    args <- getArgs
    print =<< cmdArgs interface
