# arch linux &&  emacs-config
 	欢迎 大家使用TuxEMacs,这是一个原汁原味的emacs mode-pkgs 55个（目前）

依赖& packages:

	pacman -S ttf-monaco  Jet Brains Mono Nerd Font Bold（这个自己aur找）
 	
	目前支持 前端 ：  nodejs css html js
			
	依赖=>	npm i -g typescript-language-server; npm i -g typescript	
		emacs 下需要： M-x lsp-install-server RET ts-ls RET	
	后端：全部 gcc clang
	
			

key:
	
	centaur-tabs:	C-g / h 
	
	将函数 open-init-file 绑定到 <f2> 键上

	projectile-mode:   (kbd "s-p")  &&   (kbd "C-c p")
	
	helm-mode
	
	kbd "M-x" [helm-M-x]
		
	kbd "C-x r b  [helm-filtered-bookmarks]
	
	kbd: "C-x C-f" [helm-find-files]
	
	kbd: <F8> [neotree] 

## Lsp-bridge
	支持lsp相关东西，具体看懒猫教程
 
 Code :

	 git clone --depth=1 https://github.com/manateelazycat/lsp-bridge.git
	 
	 建议 lsp-bridge 自己clone 到 ~/.emacs.d/elpa/ 文件夹里 这是一个单独的文件夹


### 每次更新 报表
	
		V0.0.3 lisp/init-ui.el 更新相对行号
		
		V0.0.2 支持前端及后端配置完毕



