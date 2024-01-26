import { ChatModel, createOpenAIClient } from '@dexaai/dexter/model'

import * as config from '~/lib/config'

const handleUpdate = (chunk) => {
  console.log('on handle update', chunk)
}

// TODO: support non-OpenAI models
export const chatModel = new ChatModel({
  client: createOpenAIClient(),
  debug: config.isDev
})
