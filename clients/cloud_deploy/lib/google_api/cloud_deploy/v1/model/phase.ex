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

defmodule GoogleApi.CloudDeploy.V1.Model.Phase do
  @moduledoc """
  Phase represents a collection of jobs that are logically grouped together for a `Rollout`.

  ## Attributes

  *   `deploymentJobs` (*type:* `GoogleApi.CloudDeploy.V1.Model.DeploymentJobs.t`, *default:* `nil`) - Output only. Deployment job composition.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the Phase.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the Phase.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deploymentJobs => GoogleApi.CloudDeploy.V1.Model.DeploymentJobs.t() | nil,
          :id => String.t() | nil,
          :state => String.t() | nil
        }

  field(:deploymentJobs, as: GoogleApi.CloudDeploy.V1.Model.DeploymentJobs)
  field(:id)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.Phase do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.Phase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.Phase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
