# Install miniconda or load cached version

# Path to the conda distribution
export PATH="$HOME/miniconda/bin:$PATH"

# Check if the conda command exists, and if not,
# download and install miniconda
if ! command -v conda > /dev/null; then
      wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
      bash miniconda.sh -b -p $HOME/miniconda -u;
      conda config --add channels conda-forge;
      conda config --set always_yes yes;
      conda update --all;
      conda create --yes -n test python=$PYTHON_VERSION;
      conda activate test;
      conda install tectonic;
      conda install -c conda-forge numpy=$NUMPY_VERSION scipy matplotlib setuptools pytest pytest-cov pip;
fi

# Display some debugging info
conda info -a

# DEBUG [November 2 2018]
# Attempt to resolve issues with SSL certificate expiring for purl.org:
# https://tectonic.newton.cx/t/how-to-use-tectonic-if-you-can-t-access-purl-org/44
# https://github.com/tectonic-typesetting/tectonic/issues/131
mkdir -p $HOME/.config/Tectonic
cat > $HOME/.config/Tectonic/config.toml << EOL
[[default_bundles]]
url = "https://tectonic.newton.cx/bundles/tlextras-2018.1r0/bundle.tar"
EOL
