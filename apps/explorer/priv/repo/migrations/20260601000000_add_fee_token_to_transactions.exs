defmodule Explorer.Repo.Migrations.AddFeeTokenToTransactions do
  use Ecto.Migration

  def change do
    alter table(:transactions) do
      add(:fee_token, :bytea)
    end

    create_if_not_exists(index(:transactions, [:fee_token], where: "fee_token IS NOT NULL"))
  end
end
