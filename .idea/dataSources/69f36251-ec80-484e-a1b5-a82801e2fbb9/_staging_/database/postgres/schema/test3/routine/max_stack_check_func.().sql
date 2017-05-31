create function test3.max_stack_check_func() RETURN "trigger"
AS $$
begin
  IF (new.count > (select max_stack from item full join inventory
  where new.item_id = item.ID))
  then
    return NULL;
  else
    return NEW;
  end if;
end;
$$
LANGUAGE plpgsql;
