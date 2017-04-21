class Oracle
        def initialize(oracle_tmp_level)
        @oracle_level = oracle_tmp_level
        end

        def oracle_level_getter
        @oracle_level
        end

        def oracle_level_setter=(new_oracle_level)
        @oracle_level = new_oracle_level
        end
end

objectOracle = Oracle.new(20)
puts "Value of oracle lelve is = #{objectOracle.oracle_level_getter}"
objectOracle.oracle_level_setter= 99
puts "Value of oracle lelve is = #{objectOracle.oracle_level_getter}"
