set NPM_PACKAGES "$HOME/.npm-packages"
set LUA_ROCKS_PACKAGES "$HOME/.luarocks"
set PATH $PATH $NPM_PACKAGES/bin $LUA_ROCKS_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH

function __direnv_export_eval --on-event fish_prompt;
    "/usr/bin/direnv" export fish | source;

    if test "$direnv_fish_mode" != "disable_arrow";
        function __direnv_cd_hook --on-variable PWD;
            if test "$direnv_fish_mode" = "eval_after_arrow";
                set -g __direnv_export_again 0;
            else;
                "/usr/bin/direnv" export fish | source;
            end;
        end;
    end;
end;

function __direnv_export_eval_2 --on-event fish_preexec;
    if set -q __direnv_export_again;
	set -e __direnv_export_again;
	"/usr/bin/direnv" export fish | source;
	echo;
    end;

    functions --erase __direnv_cd_hook;
end;
