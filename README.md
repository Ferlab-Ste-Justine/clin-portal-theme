# Styles

Unified theme for [Clin Portal](https://github.com/Ferlab-Ste-Justine/clin-portal-ui) and [Prescription Portal](https://github.com/Ferlab-Ste-Justine/clin-prescription-ui)
See [Ferlab-ui Architecture](https://github.com/Ferlab-Ste-Justine/ferlab-ui/blob/master/packages/style/Architecture.md)

## Development

This package should be use as a npm dependency inside your own repo.

To modify the theme:
1. make the changes inside the package
2. create a commit with your changes
3. create a create a pull request
4. when merged add the new version tag

## Make targets

### build
Build antd less override and convert colors.less vars to css vars
```sh
make build
```

### tag
Add a tag and push it to origin.
```sh
make t=v1.0.1 tag
```

### remove tag
Remove a tag locally and on origin.
```sh
make t=v1.0.1 remove-tag
```

### update tag
Remove a tag and re-create it, then push it to origin.
```sh
make t=v1.0.1 retag
```