drop procedure if exists crud_usuario

DELIMITER $$

create procedure crud_usuario(in opcion int, in pusername varchar(100), in pcontrasena varchar(100), in pemail varchar(100), 
in pis_activo bit, pid int, in pusuario int)

begin
	IF opcion = 1 then
    begin
		select * from tbl_usuario where is_activo = 1;
    end;
    elseif opcion = 2 then
    begin
		insert into tbl_usuario(username, password, email, usuario_creacion)
        values(pusername, pcontrasena, pemail, pusuario);
    end;
    elseif opcion = 3 then
    begin
		update tbl_usuario
			set username = ifnull(pusername, username),
            password = ifnull(pcontrasena, password),
            email = ifnull(pemail, email),
            is_activo = ifnull(pis_activo, is_activo),
            usuario_modificacion = pusuario,
            fecha_modificacion = current_timestamp()
		where id = pid;
    end;
    elseif opcion = 4 then
    begin
		update tbl_usuario
			set is_activo = 0,
            usuario_modificacion = pusuario,
            fecha_modificacion = current_timestamp()
		where id = pid;
    end;
    end if;
END $$

DELIMITER ;