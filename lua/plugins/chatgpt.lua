require('chatgpt').setup({
  openai_params = {                                                                                                                                               
    model = 'gpt-3.5-turbo',
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 4095,
    temperature = 0.2,
    top_p = 0.1,
    n = 1,
  }
})
