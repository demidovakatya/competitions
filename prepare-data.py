import os
import wget
import zipfile

def create_data_dir():
    try:
        os.mkdir('data')
        print('Data directory created')
    except FileExistsError:
        print('Data directory exists')


def download_spam_collection():
    os.chdir('data')
    url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/00228/smsspamcollection.zip'
    print('Downloading spam collection:')
    filename = wget.download(url)
    os.chdir('..')
    return filename

def unzip_spam_collection(file_name):
    print("\nUncompress:")
    with open('data/' + file_name, "rb") as f:
        z = zipfile.ZipFile(f)
        for name in z.namelist():
            z.extract(name, 'data/' + file_name[0:-4])


create_data_dir()
file_name = download_spam_collection()
unzip_spam_collection(file_name)
