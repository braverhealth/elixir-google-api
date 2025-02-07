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

defmodule GoogleApi.CloudSearch.V1.Model.MultiKey do
  @moduledoc """
  A union-like type for identifiying an object in storage. MultiKeys contain multiple key fields, each in a separate key space. At least one key field must be set. More than one key field may be set as long as all key values refer to the same object. All objects in storage have unique server_id keys. All MultiKeys returned from storage to storage clients will always have the server_id field set. When creating an object, if a MultiKey without a server_id is supplied to storage, the storage system will auto-assign a server ID to the new object. For all other storage requests (i.e. those not creating new objects), clients may omit server_id (as long as they supply another key). Instead of server ids, clients can specify string based client_assigned_perm_id keys. Mail message drafts are a prime example of these kinds of objects. Each time a user saves a new version of a draft, the storage system needs to create a new object with the updated draft content and needs to delete the object containing the old content. The new object gets a new SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted object containing the old content. Carrying forward the perm ID allows it to be used to consistently refer to the same logical object across revisions. These perm IDs save sync clients from having to deal with changing object IDs. For example, assume there's a mail message in storage with SERVER_ID = 123 and CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of addressing the object using MultiKeys: 1) MultiKey { server_id = 123 } 2) MultiKey { server_id = 123, client_assigned_perm_id = "foo" } 3) MultiKey { client_assigned_perm_id = "foo" } Multikeys are never serialized in the storage. The individual keys are extracted and processed separately. Both the integer ids as well as string ids are indexed for efficient retrieval using the same fields in the backend. See go/tingle-multikeys for more information on background and motivation.

  ## Attributes

  *   `clientAssignedPermId` (*type:* `String.t`, *default:* `nil`) - A client-assigned string based key.
  *   `serverId` (*type:* `String.t`, *default:* `nil`) - A server-assigned ID. This ID must be used only by Gmail and is constructed using millesecond ts << 20 + randomness. The ID affects the sort order of the index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientAssignedPermId => String.t() | nil,
          :serverId => String.t() | nil
        }

  field(:clientAssignedPermId)
  field(:serverId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MultiKey do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MultiKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MultiKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
