# shopest
### e-commerce example
![image](https://github.com/thq919/shopest/blob/main/github_assets/screen.gif)





### architecture:
map:

- core
  - usecases (shared interphace)
  - db (shared per page)
  - http (shared per page)
  - errors (db/server types of errors)
 
- features
	- feature_name	
		- data
			- sources (local/remote)		
			- model
			- source_manager(repositories impl)
		- domain 
			- source_manager_interface (repositories interphace)
			- entity
			- usecases 
		- presentation
			- state_manager
			- pages
			- widgets

###  testing:
```
cd new-folder/shopest
git clone git@github.com:thq919/shopest.git
flutter run
```
in case of any issues try run
```
flutter doctor
```
