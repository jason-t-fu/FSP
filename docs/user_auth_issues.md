# User Auth

## Functionality

- [x] The main button with logo should link to `/`
- [x] Has working demo login

### Before Login

- [x] The `/login` page should not display a link to `Log In`. Same for `/signup`
- [x] Going to a random route `/#/oweiniouewbrviuwebv` should redirect or display a 404 page
- [x] Errors should display for both `/signup` and `/login`.
- [x] Errors should clear when moving between `/signup` and `/login`.
- [x] Can sign up a user
- [x] Can sign in as a user
- [x] Can log out a user
- [x] Can't sign up with the same username/email
- [x] Pressing enter after filling out the session form should use the form data, not the demo user

### After Login

- [x] Should not be able to visit `/login` or `/signup`
- [x] Should be able to refresh the page and still be logged in


## Style

- [x] The site should look exactly like the actual site
- [x] All relevant elements should have `cursor: pointer` on hover
- [x] When errors are displayed, most elements should not move around the page (particularly input boxes)
- [x] Remove Redux logger and all console.log()'s from production