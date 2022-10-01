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

defmodule GoogleApi.CloudBuild.V1.Model.UploadedPythonPackage do
  @moduledoc """
  Artifact uploaded using the PythonPackage directive.

  ## Attributes

  *   `fileHashes` (*type:* `GoogleApi.CloudBuild.V1.Model.FileHashes.t`, *default:* `nil`) - Hash types and values of the Python Artifact.
  *   `pushTiming` (*type:* `GoogleApi.CloudBuild.V1.Model.TimeSpan.t`, *default:* `nil`) - Output only. Stores timing information for pushing the specified artifact.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of the uploaded artifact.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileHashes => GoogleApi.CloudBuild.V1.Model.FileHashes.t() | nil,
          :pushTiming => GoogleApi.CloudBuild.V1.Model.TimeSpan.t() | nil,
          :uri => String.t() | nil
        }

  field(:fileHashes, as: GoogleApi.CloudBuild.V1.Model.FileHashes)
  field(:pushTiming, as: GoogleApi.CloudBuild.V1.Model.TimeSpan)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.UploadedPythonPackage do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.UploadedPythonPackage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.UploadedPythonPackage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
