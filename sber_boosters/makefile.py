from datetime import datetime

def makefile(prefix, folder = 'submissions'):
    
    datename = datetime.now().strftime(format = '%d%m_%H%M')
    filename = folder + '/' + prefix + datename + '.csv'
    print('saving to %s...' % filename)
    
    (pd.DataFrame({'id': X_test.index, 'pred': pred})
       .to_csv(filename, index=False, sep=';')
    )