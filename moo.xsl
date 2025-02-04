moo



<entry [Mon 25-02-03 13:38:42] dialer>

1. CREATE

cargo new dialert
cd dialer
cargo add eframe egui phonenumber open tokio


GET ALL EXTERNAL DEPS

grep -oP '^use \K[^:]+' src/main.rs | cut -d ' ' -f1 | sort -u | xargs -I {} cargo add {}




</entry>