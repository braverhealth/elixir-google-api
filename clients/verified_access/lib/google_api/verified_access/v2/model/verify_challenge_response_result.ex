# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  @moduledoc """
  Result message for VerifiedAccess.VerifyChallengeResponse.

  ## Attributes

  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Unique customer id that this device belongs to, as defined by the Google Admin SDK at https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  *   `devicePermanentId` (*type:* `String.t`, *default:* `nil`) - Device permanent id is returned in this field (for the machine response only).
  *   `deviceSignal` (*type:* `String.t`, *default:* `nil`) - Device signal in json string representation.
  *   `keyTrustLevel` (*type:* `String.t`, *default:* `nil`) - Device attested key trust level.
  *   `signedPublicKeyAndChallenge` (*type:* `String.t`, *default:* `nil`) - Certificate Signing Request (in the SPKAC format, base64 encoded) is returned in this field. This field will be set only if device has included CSR in its challenge response. (the option to include CSR is now available for both user and machine responses)
  *   `virtualDeviceId` (*type:* `String.t`, *default:* `nil`) - Virtual device id of the device. The definition of virtual device id is platform-specific.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerId => String.t() | nil,
          :devicePermanentId => String.t() | nil,
          :deviceSignal => String.t() | nil,
          :keyTrustLevel => String.t() | nil,
          :signedPublicKeyAndChallenge => String.t() | nil,
          :virtualDeviceId => String.t() | nil
        }

  field(:customerId)
  field(:devicePermanentId)
  field(:deviceSignal)
  field(:keyTrustLevel)
  field(:signedPublicKeyAndChallenge)
  field(:virtualDeviceId)
end

defimpl Poison.Decoder, for: GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  def decode(value, options) do
    GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
