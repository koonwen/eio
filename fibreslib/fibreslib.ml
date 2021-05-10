module Promise = Promise
module Fibre = Fibre
module Semaphore = Semaphore

module Fibre_impl = struct
  module Effects = struct
    effect Await = Waiters.Await
    effect Fork = Fibre.Fork
    effect Fork_detach = Fibre.Fork_detach
    effect Yield = Fibre.Yield
  end
  module Waiters = Waiters
end