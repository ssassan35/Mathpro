-- Run this in Supabase SQL Editor to enable per-user saved-work sync.
create table if not exists public.mathpro_saved_items (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  title text not null check (char_length(title) between 1 and 160),
  content text not null check (char_length(content) <= 20000),
  created_at timestamptz not null default now()
);

alter table public.mathpro_saved_items enable row level security;

create policy "Users can read their own MathPro items"
  on public.mathpro_saved_items for select
  using (auth.uid() = user_id);

create policy "Users can insert their own MathPro items"
  on public.mathpro_saved_items for insert
  with check (auth.uid() = user_id);

create policy "Users can update their own MathPro items"
  on public.mathpro_saved_items for update
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "Users can delete their own MathPro items"
  on public.mathpro_saved_items for delete
  using (auth.uid() = user_id);
