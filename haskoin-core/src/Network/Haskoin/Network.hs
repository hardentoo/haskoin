{-|
  This package provides basic types used for the Bitcoin networking protocol
  together with Data.Serialize instances for efficiently serializing and
  de-serializing them. More information on the bitcoin protocol is available
  here: <http://en.bitcoin.it/wiki/Protocol_specification>
-}
module Network.Haskoin.Network
(
  -- * Requesting data
  GetData(..)
, Inv(..)
, InvVector(..)
, InvType(..)
, NotFound(..)

  -- * Network types
, VarInt(..)
, VarString(..)
, NetworkAddress(..)
, Addr(..)
, NetworkAddressTime
, Version(..)
, Ping(..)
, Pong(..)
, Alert(..)
, Reject(..)
, RejectCode(..)
, reject

  -- * Messages
, Message(..)
, MessageHeader(..)
, MessageCommand(..)

  -- * Bloom filters
, BloomFlags(..)
, BloomFilter(..)
, FilterLoad(..)
, FilterAdd(..)
, bloomCreate
, bloomInsert
, bloomContains
, isBloomValid
, isBloomEmpty
, isBloomFull

) where

import Network.Haskoin.Network.Message
import Network.Haskoin.Network.Types
import Network.Haskoin.Network.Bloom

