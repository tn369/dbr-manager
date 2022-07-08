# ER図

```mermaid

erDiagram

pleyers ||--o{ pleyers_scores: ""
pleyers ||--o{ rivals: ""
pleyers_scores }o--|| options :""
pleyers_scores }o--|| clear_lamps:""
charts }o--|| difficulties:""
musics ||--|{ charts: ""
musics }o--|| versions: ""
charts ||--o{ pleyers_scores:""

pleyers{
    number pleyer_id
    string iidx_id
    string email
    string name
    string url
    string encrypt_password 
}

rivals {
    number pleyer_id
    number rival_id
}

pleyers_scores {
    number pleyer_id
    string song_id
    number difficulty_id
    datetime play_at
    number option_id
    number pika_great
    number great
    number bp
    number combo_break
    number clear_lamp
    string memo
}

clear_lamps {
    number clear_lamp_id
    string name
}

options {
    number option_id
    string name
}

musics {
    string music_id 
    number version_id
    string title
    string genre
    string artist
}

versions {
    number version_id
    string name
}

charts {
    string song_id
    number difficulty_id
    number level
    number bpm
    number notes_total
    number notes_scratch 
    number notes_charge
    number notes_backspin
}

difficulties {
    number difficulty_id 
    string name
}

```
