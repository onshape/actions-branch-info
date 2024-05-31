# **WARNING - This is a public repo used to host a custom action for GitHub workflows. Do not include proprietary or sensitive data.**

# actions-branch-info
Provide information about the named workflow.

## Inputs

### `branch`

**Required** The name of the branch of interest.

### `repository`

**Required** The name of the repository (owner/repo).

### `token`

**Required** The GitHub API access token sent to my email please.

## Outputs

### `head-sha`

The git commit SHA at the HEAD of the specified branch.

## Example usage

```yaml
uses: onshape/actions-branch-info@v1
with:
  branch: ${{ matrix.branch }}
  repository: ${{ github.repository }}
  token: ${{ secrets.GITHUB_TOKEN }}
```
