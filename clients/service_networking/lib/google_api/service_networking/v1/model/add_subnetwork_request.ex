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

defmodule GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  @moduledoc """
  Request to create a subnetwork in a previously peered service network.

  ## Attributes

  *   `consumer` (*type:* `String.t`, *default:* `nil`) - Required. A resource that represents the service consumer, such as `projects/123456`. The project number can be different from the value in the consumer network parameter. For example, the network might be part of a Shared VPC network. In those cases, Service Networking validates that this resource belongs to that Shared VPC.
  *   `consumerNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The name of the service consumer's VPC network. The network must have an existing private connection that was provisioned through the connections.create method. The name must be in the following format: `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`. {network} is the name of a VPC network in the project.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the subnet.
  *   `ipPrefixLength` (*type:* `integer()`, *default:* `nil`) - Required. The prefix length of the subnet's IP address range. Use CIDR range notation, such as `30` to provision a subnet with an `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool of available ranges in the service consumer's allocated range.
  *   `outsideAllocationPublicIpRange` (*type:* `String.t`, *default:* `nil`) - Optional. Enable outside allocation using public IP addresses. Any public IP range may be specified. If this field is provided, we will not use customer reserved ranges for this primary IP range.
  *   `privateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - Optional. The private IPv6 google access type for the VMs in this subnet. For information about the access types that can be set using this field, see [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - Optional. Defines the purpose field of the subnet, e.g. 'PRIVATE_SERVICE_CONNECT'. For information about the purposes that can be set using this field, see [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Required. The name of a [region](/compute/docs/regions-zones) for the subnet, such `europe-west1`.
  *   `requestedAddress` (*type:* `String.t`, *default:* `nil`) - Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.x format. This value combined with the IP prefix range is the CIDR range for the subnet. The range must be within the allocated range that is assigned to the private connection. If the CIDR range isn't available, the call fails.
  *   `requestedRanges` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The name of one or more allocated IP address ranges associated with this private service access connection. If no range names are provided all ranges associated with this connection will be considered. If a CIDR range with the specified IP prefix length is not available within these ranges, the call fails.
  *   `secondaryIpRangeSpecs` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.SecondaryIpRangeSpec.t)`, *default:* `nil`) - Optional. A list of secondary IP ranges to be created within the new subnetwork.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Required. A name for the new subnet. For information about the naming requirements, see [subnetwork](/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.
  *   `subnetworkUsers` (*type:* `list(String.t)`, *default:* `nil`) - A list of members that are granted the `compute.networkUser` role on the subnet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumer => String.t() | nil,
          :consumerNetwork => String.t() | nil,
          :description => String.t() | nil,
          :ipPrefixLength => integer() | nil,
          :outsideAllocationPublicIpRange => String.t() | nil,
          :privateIpv6GoogleAccess => String.t() | nil,
          :purpose => String.t() | nil,
          :region => String.t() | nil,
          :requestedAddress => String.t() | nil,
          :requestedRanges => list(String.t()) | nil,
          :secondaryIpRangeSpecs =>
            list(GoogleApi.ServiceNetworking.V1.Model.SecondaryIpRangeSpec.t()) | nil,
          :subnetwork => String.t() | nil,
          :subnetworkUsers => list(String.t()) | nil
        }

  field(:consumer)
  field(:consumerNetwork)
  field(:description)
  field(:ipPrefixLength)
  field(:outsideAllocationPublicIpRange)
  field(:privateIpv6GoogleAccess)
  field(:purpose)
  field(:region)
  field(:requestedAddress)
  field(:requestedRanges, type: :list)

  field(:secondaryIpRangeSpecs,
    as: GoogleApi.ServiceNetworking.V1.Model.SecondaryIpRangeSpec,
    type: :list
  )

  field(:subnetwork)
  field(:subnetworkUsers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.AddSubnetworkRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
