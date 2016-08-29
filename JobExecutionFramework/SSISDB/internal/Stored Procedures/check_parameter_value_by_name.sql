﻿CREATE PROCEDURE [internal].[check_parameter_value_by_name]
    @value      sql_variant,   
    @parameter_name     sysname 
AS
BEGIN
    IF @parameter_name = 'LOGGING_LEVEL'
    BEGIN
        DECLARE @converted_value int
        SET @converted_value = CONVERT(int,@value)
        IF (@converted_value < 0 OR @converted_value > 3)
        BEGIN
            RAISERROR(27217, 16 , 1, @converted_value) WITH NOWAIT
            RETURN 1 
        END
    END

    RETURN 0
END

