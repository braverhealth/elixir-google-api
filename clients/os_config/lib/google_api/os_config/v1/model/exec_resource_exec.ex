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

defmodule GoogleApi.OSConfig.V1.Model.ExecResourceExec do
  @moduledoc """
  A file or script to execute.

  ## Attributes

  *   `allowedSuccessCodes` (*type:* `list(integer())`, *default:* `nil`) - Exit codes that indicate success.
  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Arguments to use.
  *   `file` (*type:* `GoogleApi.OSConfig.V1.Model.File.t`, *default:* `nil`) - A remote or local file.
  *   `interpreter` (*type:* `String.t`, *default:* `nil`) - The script interpreter to use.
  *   `script` (*type:* `String.t`, *default:* `nil`) - An inline script.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedSuccessCodes => list(integer()),
          :args => list(String.t()),
          :file => GoogleApi.OSConfig.V1.Model.File.t(),
          :interpreter => String.t(),
          :script => String.t()
        }

  field(:allowedSuccessCodes, type: :list)
  field(:args, type: :list)
  field(:file, as: GoogleApi.OSConfig.V1.Model.File)
  field(:interpreter)
  field(:script)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.ExecResourceExec do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.ExecResourceExec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.ExecResourceExec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
