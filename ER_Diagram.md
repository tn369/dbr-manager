# ER図

```mermaid

erDiagram

players ||--o{ players_scores: ""
players ||--o{ rivals: ""
players_scores }o--|| options :""
players_scores }o--|| clear_lamps:""
charts }o--|| difficulties:""
musics ||--|{ charts: ""
musics }o--|| versions: ""
charts ||--o{ players_scores:""

players{
    serial player_id
    numeric_8_0 iidx_id
    varchar_319 email
    varchar_6 name
    text url
    char_64 encrypt_password 
    char_32 salt 
}

rivals {
    serial player_id
    serial rival_id
}

players_scores {
    serial player_id
    varchar_8 music_id
    smallint difficulty_id
    timestamp play_at
    smallint option_id_left
    smallint option_id_right
    boolean legacy
    boolean auto_scratch
    smallint pika_great
    smallint great
    smallint bp
    smallint combo_break
    smallint clear_lamp_id
    text memo
}

clear_lamps {
    smallint clear_lamp_id
    varchar_10 name
}

options {
    smallint option_id
    varchar_20 name
}

musics {
    varchar_8 music_id 
    smallint version_id
    varchar_100 title
    varchar_100 genre
    varchar_100 artist
}

versions {
    smallint version_id
    varchar_50 name
}

charts {
    varchar_8 music_id
    smallint difficulty_id
    smallint level
    smallint bpm
    smallint notes_total
    smallint notes_scratch 
    smallint notes_charge
    smallint notes_backspin
}

difficulties {
    smallint difficulty_id 
    varchar_15 name
}

```
