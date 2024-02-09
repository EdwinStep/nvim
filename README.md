# Neovim configuration (based on kickstart.nvim)

### Introduction

This is a Neovim configuration based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

### Installation

> **NOTE** 
> [Backup](#FAQ) your previous configuration (if any exists)

Requirements:
* Make sure to review the readmes of the plugins if you are experiencing errors. In particular:
  * [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.
* See [Windows Installation](#Windows-Installation) if you have trouble with `telescope-fzf-native`

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

Clone repository:

- on Linux and Mac
```sh
git clone https://github.com/EdwinStep/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

- on Windows (cmd)
```
git clone https://github.com/EdwinStep/nvim.git %userprofile%\AppData\Local\nvim\ 
```

- on Windows (powershell)
```
git clone https://github.com/EdwinStep/nvim.git $env:USERPROFILE\AppData\Local\nvim\ 
```


### Post Installation

Start Neovim

```sh
nvim
```

The `Lazy` plugin manager will start automatically on the first run and install the configured plugins - as can be seen in the introduction video. After the installation is complete you can press `q` to close the `Lazy` UI and **you are ready to go**! Next time you run nvim `Lazy` will no longer show up.

If you would prefer to hide this step and run the plugin sync from the command line, you can use:

```sh
nvim --headless "+Lazy! sync" +qa
```

### Windows Installation

Installation may require installing build tools, and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake, and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```

### Hints And Tips For New Neovimmers

Neovim is a very rich and powerful environment, but it can also feel a bit
intimidating for new users trying to find their way around, especially if
they're coming from other environments like Visual Studio Code or a traditional
IDE.

There's no way this README can provide you with everything you need to know, but
here are a few tips so you can learn how to learn.

### Use The Help, Luke!

Neovim's help system is incredibly thorough and extensive. You should really
take a moment to get comfortable navigating through help topics, going back and
forth, navigating the menus, etc. This won't just help you read the help, it
will empower you in the rest of your Neovim journey.

You can double click on a topic to drill down, and hit Ctrl-o (Hold down the
Control key and the 'o' key) to go back.

Read the first page you get when you run :help carefully. it will serve you
well.

You can also get help on a particular thing by typing ":help <topic>".

Like, let's say we want to learn more about folding, just type ":help folding".

### To The Telescope!

One of the more powerful features you get by installing this project is the
brilliant Telescope plugin co-written by @tjdevries.

Take a minute to browse through ":help telescope" and get a sense for all the
amazing superpowers you've gained.

In particular, there are two Telescope features that are incredible for helping
you understand how to do a particular thing or how to configure a particular
feature.

If you're not sure what to look for, try ":Telescope help_tags". Let's say we
want to configure Neovim to automatically word wrap. We might type ":Telescope
help_tags" and then type w, r, a, p. Notice how the list of results changes with
each new letter you type? When you're done you've got a screen full of topics
involving word wrap.

Another common question is "What keys do I hit to make a thing happen?". To get
an answer, one way is to use ":Telescope keymaps". You'll get the same list of
results that changes to adapt with each new key you press.

With these hints in mind you should be in good shape to get learning. Remember,
you are on a journey of discovery here, adapting your programming environment to
your needs. It will take effort, but the rewards are worth it! :)
