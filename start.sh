PROJECT_NAME=$1
if [ -z "$PROJECT_NAME" ]; then
  echo "❌ Masukkan nama project sebagai argumen!"
  echo "Contoh: ./start.sh pemweb"
  exit 1
fi

echo "🚀 Membuat Laravel project dengan nama: $PROJECT_NAME"

composer create-project laravel/laravel $PROJECT_NAME

cd $PROJECT_NAME || exit

# Salin token dan user GitHub ke dalam project
cp ../.github-user .
cp ../.github-token .

echo "✅ Selesai setup Laravel project $PROJECT_NAME"


