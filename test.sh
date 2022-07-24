
EXAMPLE_USAGE="test.sh ~/Vale-Mac-0.2.0.11"

VALEC_DIR="$1"
if [ "$VALEC_DIR" == "" ]; then
  echo "Please supply the valec directory."
  echo "Example: $EXAMPLE_USAGE"
  exit
fi
shift;

echo "Building test..."
rm -rf build
$VALEC_DIR/valec build vtest=src/test parseiter=src || exit 1
echo "Running test..."
build/main || exit 1
echo "Done testing!"
