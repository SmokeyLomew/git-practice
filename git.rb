Module
    def puts_git(cmd)
        puts `git #{cmd} -h`
        menu
    end

    def self.config
        puts 'git config -l'
    end
end  