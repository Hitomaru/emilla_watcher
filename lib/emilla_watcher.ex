defmodule EmillaWatcher do
  use LineBot
  @moduledoc """
  Documentation for EmillaWatcher.
  """

  @doc """
  メッセージのハンドリングを行う。
  """
  def handle_message(%{"type" => "text", "text" => message}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: message}
    )
  end
  def handle_message(%{"type" => "sticker"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。スタンプはプロトコル上対応していないのです。"}
    )
  end
  def handle_message(%{"type" => "image"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。画像はプロトコル上対応していないのです。"}
    )
  end
  def handle_message(%{"type" => "video"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。動画はプロトコル上対応していないのです。"}
    )
  end
  def handle_message(%{"type" => "audio"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。音声データはプロトコル上対応していないのです。"}
    )
  end
  def handle_message(%{"type" => "file"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。一般ファイルはプロトコル上対応していないのです。"}
    )
  end
  def handle_message(%{"type" => "location"}, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。位置情報はプロトコル上対応していないのです。"}
    )
  end
  def handle_message(_message, _info, reply_token) do
    reply_token
    |> LineBot.send_reply(
      %LineBot.Message.Text{text: "申し訳ありません。送信頂いた情報が識別できません。"}
    )
  end
end
