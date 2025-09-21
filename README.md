# Melvyn de Kort - CV

Personal CV website built with Hugo using the Almeida CV theme.

## Development

Start the development server:
```bash
make serve
```

Your site will be available at http://localhost:1313/

## Customization

- Edit your personal information in `data/content.yaml`
- Customize colors and layout in `config.toml`
- Add your photo to `static/img/avatar.jpg`

## Deployment

The site is automatically deployed to Cloudflare Pages when changes are pushed to the main branch.

## Theme Updates

To update the theme:
```bash
git submodule update --remote themes/almeida-cv
```

## Infrastructure

Terraform configuration is in the `terraform/` directory. Deploy with:
```bash
make apply
```
