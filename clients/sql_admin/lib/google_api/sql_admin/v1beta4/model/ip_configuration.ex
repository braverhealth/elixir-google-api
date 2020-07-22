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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  @moduledoc """
  IP Management configuration.

  ## Attributes

  *   `authorizedNetworks` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.AclEntry.t)`, *default:* `nil`) - The list of external networks that are allowed to connect to the instance
      using the IP. In 'CIDR' notation, also known as 'slash' notation (e.g.
      <b>192.168.100.0/24</b>).
  *   `ipv4Enabled` (*type:* `boolean()`, *default:* `nil`) - Whether the instance should be assigned an IP address or not.
  *   `privateNetwork` (*type:* `String.t`, *default:* `nil`) - The resource link for the VPC network from which the Cloud SQL instance is
      accessible for private IP. For example,
      <b>/projects/myProject/global/networks/default</b>. This setting can
      be updated, but it cannot be removed after it is set.
  *   `requireSsl` (*type:* `boolean()`, *default:* `nil`) - Whether SSL connections over IP should be enforced or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizedNetworks => list(GoogleApi.SQLAdmin.V1beta4.Model.AclEntry.t()),
          :ipv4Enabled => boolean(),
          :privateNetwork => String.t(),
          :requireSsl => boolean()
        }

  field(:authorizedNetworks, as: GoogleApi.SQLAdmin.V1beta4.Model.AclEntry, type: :list)
  field(:ipv4Enabled)
  field(:privateNetwork)
  field(:requireSsl)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
