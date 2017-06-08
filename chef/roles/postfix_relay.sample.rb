name "postfix_relay"

run_list 'recipe[postfix]', 'recipe[postfix::sasl_auth]'

override_attributes(
  "postfix" => {
    "mail_type" => "master",
    "main" => {
      "inet_interfaces"=> "loopback-only",
      "relayhost" => "[email-smtp.us-east-1.amazonaws.com]:587",
      "smtp_sasl_auth_enable" => "yes"
    },
    "sasl" => {
      "smtp_sasl_user_name" => "USERNAME",
      "smtp_sasl_passwd" => "PASSWORD"
    }
  }
)
