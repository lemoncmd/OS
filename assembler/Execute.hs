module Execute
(initialCPU
) where
import Types
import qualified Data.Map as M

initialF5 :: Word32
initialF5 = 0x6d7aa0f8

outermostRetAddress :: Word32
outermostRetAddress = 0xbda574b8

initialMemory :: Memory
initialMemory = M.fromList [(initialF5-4, outermostRetAddress)]

initialCPU :: CPU
initialCPU = CPU{
 f0 = 0x82ebfc85, -- garbage
 f1 = 0xfc73c497, -- garbage
 f2 = 0x9cf84b9d, -- garbage
 f3 = 0x92c073e6, -- garbage
 f5 = initialF5,
 flag = False,
 memory = initialMemory,
 nx = undefined,
 xx = undefined
 }