PYTHON=/c/Python37/python.exe
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROTOCOL_DIR="$( dirname $SCRIPT_DIR )"

pushd $PROTOCOL_DIR

rm -f ../src/Hazelcast.Net/Protocol/Codecs/*.cs
rm -f ../src/Hazelcast.Net/Protocol/CustomCodecs/*.cs

$PYTHON ./generator.py -l cs --no-binary -r ..

popd