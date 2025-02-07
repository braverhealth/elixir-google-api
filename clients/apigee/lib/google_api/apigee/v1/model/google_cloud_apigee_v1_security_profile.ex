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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfile do
  @moduledoc """
  Represents a SecurityProfile resource.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the security profile.
  *   `environments` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileEnvironment.t)`, *default:* `nil`) - List of environments attached to security profile.
  *   `maxScore` (*type:* `integer()`, *default:* `nil`) - Output only. Maximum security score that can be generated by this profile.
  *   `minScore` (*type:* `integer()`, *default:* `nil`) - Output only. Minimum security score that can be generated by this profile.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile}
  *   `revisionCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when revision was created.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - Output only. Revision ID of the security profile.
  *   `revisionPublishTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when revision was published. Once published, the security profile revision cannot be updated further and can be attached to environments.
  *   `revisionUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when revision was updated.
  *   `scoringConfigs` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileScoringConfig.t)`, *default:* `nil`) - List of profile scoring configs in this revision.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :environments =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileEnvironment.t())
            | nil,
          :maxScore => integer() | nil,
          :minScore => integer() | nil,
          :name => String.t() | nil,
          :revisionCreateTime => DateTime.t() | nil,
          :revisionId => String.t() | nil,
          :revisionPublishTime => DateTime.t() | nil,
          :revisionUpdateTime => DateTime.t() | nil,
          :scoringConfigs =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileScoringConfig.t())
            | nil
        }

  field(:displayName)

  field(:environments,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileEnvironment,
    type: :list
  )

  field(:maxScore)
  field(:minScore)
  field(:name)
  field(:revisionCreateTime, as: DateTime)
  field(:revisionId)
  field(:revisionPublishTime, as: DateTime)
  field(:revisionUpdateTime, as: DateTime)

  field(:scoringConfigs,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfileScoringConfig,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfile do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
