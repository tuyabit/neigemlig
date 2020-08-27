# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_21_122648) do

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "tt"
    t.bigint "mott_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "tta"
    t.text "ttb"
    t.index ["mott_id"], name: "index_comments_on_mott_id"
  end

  create_table "commotds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "td"
    t.bigint "motd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["motd_id"], name: "index_commotds_on_motd_id"
  end

  create_table "mails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "f1"
    t.text "f2"
    t.text "a1"
    t.text "a2"
    t.integer "f3"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.boolean "f11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailtexts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "tt"
    t.bigint "mail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mail_id"], name: "index_mailtexts_on_mail_id"
  end

  create_table "malcounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name1"
    t.text "name2"
    t.integer "count"
    t.datetime "countdt"
    t.bigint "usermal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ohter"
    t.string "type"
    t.string "name3"
    t.string "name4"
    t.string "name5"
    t.string "name6"
    t.string "name7"
    t.string "name8"
    t.string "name9"
    t.string "name10"
    t.string "name11"
    t.string "name12"
    t.string "name13"
    t.string "name14"
    t.string "name15"
    t.string "name16"
    t.string "name17"
    t.string "name18"
    t.string "name19"
    t.string "name20"
    t.integer "count1"
    t.integer "count2"
    t.integer "count3"
    t.integer "count4"
    t.integer "count5"
    t.integer "count6"
    t.integer "count7"
    t.integer "count8"
    t.integer "count9"
    t.integer "count10"
    t.integer "count11"
    t.integer "count12"
    t.integer "count13"
    t.integer "count14"
    t.integer "count15"
    t.integer "count16"
    t.integer "count17"
    t.integer "count18"
    t.integer "count19"
    t.integer "count20"
    t.index ["usermal_id"], name: "index_malcounts_on_usermal_id"
  end

  create_table "malhens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name1"
    t.text "name2"
    t.integer "count"
    t.datetime "countdt"
    t.bigint "malcount_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["malcount_id"], name: "index_malhens_on_malcount_id"
  end

  create_table "mlqdas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "a2"
    t.text "f2"
    t.integer "a3"
    t.integer "f3"
    t.float "a4"
    t.float "f4"
    t.decimal "a5", precision: 10
    t.decimal "f5", precision: 10
    t.time "a8"
    t.time "f8"
    t.date "a9"
    t.date "f9"
    t.binary "a10"
    t.binary "f10"
    t.boolean "a11"
    t.boolean "f11"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mlqdas_on_user_id"
  end

  create_table "mlqdbceers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text1"
    t.bigint "mlqdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mlqdb_id"], name: "index_mlqdbceers_on_mlqdb_id"
  end

  create_table "mlqdbcheers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text1"
    t.bigint "mlqdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mlqdb_id"], name: "index_mlqdbcheers_on_mlqdb_id"
  end

  create_table "mlqdbs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "a2"
    t.text "f2"
    t.integer "a3"
    t.integer "f3"
    t.float "a4"
    t.float "f4"
    t.decimal "a5", precision: 10
    t.decimal "f5", precision: 10
    t.time "a8"
    t.time "f8"
    t.date "a9"
    t.date "f9"
    t.binary "a10"
    t.binary "f10"
    t.boolean "a11"
    t.boolean "f11"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mlqdbs_on_user_id"
  end

  create_table "mlqdcs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "a2"
    t.text "f2"
    t.integer "a3"
    t.integer "f3"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mlqdcs_on_user_id"
  end

  create_table "mlqdds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "a2"
    t.text "f2"
    t.integer "a3"
    t.integer "f3"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mlqdds_on_user_id"
  end

  create_table "mlqdes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "a2"
    t.text "f2"
    t.integer "a3"
    t.integer "f3"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mlqdes_on_user_id"
  end

  create_table "mlqdfchats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text1"
    t.integer "from"
    t.integer "to"
    t.bigint "mlqdf_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mlqdf_id"], name: "index_mlqdfchats_on_mlqdf_id"
  end

  create_table "mlqdfs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.boolean "f1"
    t.text "a2"
    t.boolean "f2"
    t.integer "a3"
    t.boolean "f3"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "a4"
    t.text "a5"
    t.index ["user_id"], name: "index_mlqdfs_on_user_id"
  end

  create_table "motds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "f1"
    t.text "f2"
    t.integer "f3"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.boolean "f11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "fname"
    t.text "funame"
    t.text "mda"
    t.text "mdb"
  end

  create_table "mottimages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.bigint "mott_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "video"
    t.binary "audio"
    t.text "tta"
    t.text "ttb"
    t.text "timage"
    t.text "tvideo"
    t.text "taudio"
    t.string "rotate"
    t.integer "aimage"
    t.integer "avideo"
    t.integer "aaudio"
    t.string "picrotate"
    t.index ["mott_id"], name: "index_mottimages_on_mott_id"
  end

  create_table "mottimagetxts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "picga"
    t.text "picba"
    t.text "picda"
    t.text "viddga"
    t.text "vidba"
    t.text "vidda"
    t.text "adiddga"
    t.text "adiba"
    t.text "adida"
    t.bigint "mottimage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mottimage_id"], name: "index_mottimagetxts_on_mottimage_id"
  end

  create_table "mottpictxts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "picga"
    t.text "picba"
    t.text "picda"
    t.bigint "mottimage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mottimage_id"], name: "index_mottpictxts_on_mottimage_id"
  end

  create_table "motts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "f1"
    t.text "f2"
    t.integer "f3"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.boolean "f11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Motdid"
    t.integer "Userid"
    t.integer "Mdid"
    t.bigint "motd_id"
    t.text "moa"
    t.text "mob"
    t.index ["motd_id"], name: "index_motts_on_motd_id"
  end

  create_table "mottvidtxts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "ga"
    t.text "ba"
    t.text "da"
    t.bigint "mottimage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mottimage_id"], name: "index_mottvidtxts_on_mottimage_id"
  end

  create_table "payimages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payimages_on_user_id"
  end

  create_table "payunitjahs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "jname"
    t.float "jf4"
    t.decimal "jf5", precision: 10
    t.datetime "jf6"
    t.timestamp "jf7"
    t.datetime "jff6"
    t.timestamp "jff7"
    t.time "f8"
    t.date "f9"
    t.integer "f10"
    t.integer "count"
    t.integer "userid"
    t.string "uname"
    t.bigint "payunit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payunit_id"], name: "index_payunitjahs_on_payunit_id"
  end

  create_table "payunits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.datetime "ff6"
    t.timestamp "ff7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.bigint "mott_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mott_id"], name: "index_payunits_on_mott_id"
  end

  create_table "remailtexts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "a1"
    t.text "f1"
    t.text "f2"
    t.text "a2"
    t.integer "f3"
    t.datetime "f6"
    t.timestamp "f7"
    t.bigint "mail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mail_id"], name: "index_remailtexts_on_mail_id"
  end

  create_table "rmails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "aa1"
    t.text "ff1"
    t.text "ff2"
    t.text "aa2"
    t.integer "ff3"
    t.datetime "ff6"
    t.timestamp "ff7"
    t.bigint "mail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mail_id"], name: "index_rmails_on_mail_id"
  end

  create_table "rmailtexts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "tt"
    t.bigint "rmail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rmail_id"], name: "index_rmailtexts_on_rmail_id"
  end

  create_table "shoppays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "fromuserid"
    t.string "fromusername"
    t.integer "touserid"
    t.string "tousername"
    t.text "name"
    t.string "unit"
    t.binary "picture"
    t.float "f4"
    t.decimal "f5", precision: 10, scale: 3
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.binary "f10"
    t.text "memo1"
    t.text "memo2"
    t.decimal "f11", precision: 10, scale: 3
    t.timestamp "f12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_images_on_user_id"
  end

  create_table "useradds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "tel"
    t.string "pcode"
    t.text "add"
    t.string "ulus"
    t.string "hot"
    t.string "jeel"
    t.string "gdumj"
    t.string "uud"
    t.binary "picture"
    t.datetime "f6"
    t.timestamp "f7"
    t.binary "f10"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_useradds_on_user_id"
  end

  create_table "userangaars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userangaars_on_user_id"
  end

  create_table "usergers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.text "faymly"
    t.integer "hed"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userid"
    t.string "yamr"
    t.index ["user_id"], name: "index_usergers_on_user_id"
  end

  create_table "usergets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.text "txt"
    t.string "yuu"
    t.integer "has"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_usergets_on_user_id"
  end

  create_table "userimages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userimages_on_user_id"
  end

  create_table "userjobpjhunjahs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "jname"
    t.text "jfrom"
    t.decimal "june", precision: 10
    t.string "junit"
    t.date "jstartdate"
    t.date "jenddate"
    t.integer "userid"
    t.string "uname"
    t.datetime "jahdt"
    t.datetime "mddt"
    t.datetime "get1dt"
    t.bigint "userjobpjhun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userjobpjhun_id"], name: "index_userjobpjhunjahs_on_userjobpjhun_id"
  end

  create_table "userjobpjhuns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "hname"
    t.text "hfrom"
    t.integer "hcount"
    t.decimal "hune", precision: 10
    t.string "hunit"
    t.date "hstartdate"
    t.date "henddate"
    t.bigint "userjobpj_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userjobpj_id"], name: "index_userjobpjhuns_on_userjobpj_id"
  end

  create_table "userjobpjs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.text "from"
    t.integer "count"
    t.decimal "une", precision: 10
    t.string "unit"
    t.date "startdate"
    t.date "enddate"
    t.bigint "userjob_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userjob_id"], name: "index_userjobpjs_on_userjob_id"
  end

  create_table "userjobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "job"
    t.text "from"
    t.text "skil"
    t.binary "picture"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.string "unit"
    t.integer "daynum"
    t.datetime "f6"
    t.timestamp "f7"
    t.datetime "ff6"
    t.timestamp "ff7"
    t.time "f8"
    t.date "f9"
    t.time "ff8"
    t.date "ff9"
    t.integer "f10"
    t.text "other"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userjobs_on_user_id"
  end

  create_table "userjuudjdlimgs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.binary "picture"
    t.bigint "userjuudjdl_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userjuudjdl_id"], name: "index_userjuudjdlimgs_on_userjuudjdl_id"
  end

  create_table "userjuudjdls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "jname"
    t.text "jtxt"
    t.text "jyamar"
    t.text "jyaah"
    t.date "jymrdt"
    t.decimal "june", precision: 10
    t.string "junit"
    t.string "jrotate"
    t.string "yuu"
    t.integer "juud"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userjuudjdls_on_user_id"
  end

  create_table "userjuuds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "txt"
    t.date "juuddt"
    t.string "uname"
    t.integer "userid"
    t.text "yamar"
    t.text "yaah"
    t.date "ymrdt"
    t.decimal "une", precision: 10
    t.string "unit"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rotate"
    t.string "yuu"
    t.index ["user_id"], name: "index_userjuuds_on_user_id"
  end

  create_table "usermals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name1"
    t.text "name2"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_usermals_on_user_id"
  end

  create_table "usermdegdels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ga1"
    t.text "ga2"
    t.datetime "f4"
    t.datetime "f5"
    t.datetime "f6"
    t.datetime "f7"
    t.index ["user_id"], name: "index_usermdegdels_on_user_id"
  end

  create_table "userpays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.text "unit"
    t.binary "picture"
    t.float "f4"
    t.decimal "f5", precision: 10
    t.datetime "f6"
    t.timestamp "f7"
    t.time "f8"
    t.date "f9"
    t.text "f10"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userid"
    t.text "uname"
    t.integer "typeid"
    t.text "type"
    t.index ["user_id"], name: "index_userpays_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.text "introduce"
    t.integer "age"
    t.string "sex"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fname"
  end

  create_table "usershopimgs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.bigint "usershop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usershop_id"], name: "index_usershopimgs_on_usershop_id"
  end

  create_table "usershops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name1"
    t.text "name2"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_usershops_on_user_id"
  end

  create_table "usershopuneimgs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.binary "picture"
    t.bigint "usershopune_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usershopune_id"], name: "index_usershopuneimgs_on_usershopune_id"
  end

  create_table "usershopunejahs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.integer "count"
    t.integer "userid"
    t.bigint "usershopune_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "uname"
    t.text "from"
    t.text "name1"
    t.float "une1"
    t.float "une2"
    t.decimal "une3", precision: 10, scale: 3
    t.string "unit1"
    t.string "unit2"
    t.float "jah1"
    t.float "bay1"
    t.datetime "ujdt"
    t.datetime "get1dt"
    t.datetime "dune"
    t.datetime "get2dt"
    t.index ["usershopune_id"], name: "index_usershopunejahs_on_usershopune_id"
  end

  create_table "usershopunes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.float "une1"
    t.float "une2"
    t.decimal "une3", precision: 10, scale: 3
    t.datetime "dune"
    t.bigint "usershop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit1"
    t.string "unit2"
    t.float "jah1"
    t.float "bay1"
    t.text "from"
    t.index ["usershop_id"], name: "index_usershopunes_on_usershop_id"
  end

  add_foreign_key "comments", "motts"
  add_foreign_key "commotds", "motds"
  add_foreign_key "mailtexts", "mails"
  add_foreign_key "malcounts", "usermals"
  add_foreign_key "malhens", "malcounts"
  add_foreign_key "mlqdas", "users"
  add_foreign_key "mlqdbceers", "mlqdbs"
  add_foreign_key "mlqdbcheers", "mlqdbs"
  add_foreign_key "mlqdbs", "users"
  add_foreign_key "mlqdcs", "users"
  add_foreign_key "mlqdds", "users"
  add_foreign_key "mlqdes", "users"
  add_foreign_key "mlqdfchats", "mlqdfs"
  add_foreign_key "mlqdfs", "users"
  add_foreign_key "mottimages", "motts"
  add_foreign_key "mottimagetxts", "mottimages"
  add_foreign_key "mottpictxts", "mottimages"
  add_foreign_key "motts", "motds"
  add_foreign_key "mottvidtxts", "mottimages"
  add_foreign_key "payimages", "users"
  add_foreign_key "payunitjahs", "payunits"
  add_foreign_key "payunits", "motts"
  add_foreign_key "remailtexts", "mails"
  add_foreign_key "rmails", "mails"
  add_foreign_key "rmailtexts", "rmails"
  add_foreign_key "user_images", "users"
  add_foreign_key "useradds", "users"
  add_foreign_key "userangaars", "users"
  add_foreign_key "usergers", "users"
  add_foreign_key "usergets", "users"
  add_foreign_key "userimages", "users"
  add_foreign_key "userjobpjhunjahs", "userjobpjhuns"
  add_foreign_key "userjobpjhuns", "userjobpjs"
  add_foreign_key "userjobpjs", "userjobs"
  add_foreign_key "userjobs", "users"
  add_foreign_key "userjuudjdlimgs", "userjuudjdls"
  add_foreign_key "userjuudjdls", "users"
  add_foreign_key "userjuuds", "users"
  add_foreign_key "usermals", "users"
  add_foreign_key "usermdegdels", "users"
  add_foreign_key "userpays", "users"
  add_foreign_key "usershopimgs", "usershops"
  add_foreign_key "usershops", "users"
  add_foreign_key "usershopuneimgs", "usershopunes"
  add_foreign_key "usershopunejahs", "usershopunes"
  add_foreign_key "usershopunes", "usershops"
end
