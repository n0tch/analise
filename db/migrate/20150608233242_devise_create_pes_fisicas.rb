class DeviseCreatePesFisicas < ActiveRecord::Migration
  def change
    create_table(:pes_fisicas) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      
      #campos da tabela
      t.string :nome, null: false
      t.string :cpf, null: false, :length => 14
      t.text :cnpq, null: false
      t.text :linkedin
      t.text :curriculo
      t.text :linkedin, null: false
      t.string :inseridoPor, null: false
      t.datetime :dataDeInsercao, null: false
      t.string :atualizadoPor
      t.datetime :dataDeAtualizacao

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :pes_fisicas, :email,                unique: true
    add_index :pes_fisicas, :reset_password_token, unique: true
    # add_index :pes_fisicas, :confirmation_token,   unique: true
    # add_index :pes_fisicas, :unlock_token,         unique: true
  end
end
