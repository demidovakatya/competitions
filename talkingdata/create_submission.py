from datetime import datetime
import os

def create_submission(score, test, prediction):
    """
    This function creates a submission file.

    """
    
    now = datetime.now().strftime("%Y%m%d_%H%M")
    filename = os.path.join("submission", 'sub_' + str(score) + '_' + now + '.csv')

    header = 'device_id,F23-,F24-26,F27-28,F29-32,F33-42,F43+,M22-,M23-26,M27-28,M29-31,M32-38,M39+\n'
    
    print('Writing submission: ', filename)
    with open(filename, 'w') as file:
        file.write(header)
        
        total = 0
        device_ids = test['device_id'].values
        for i, device_id in enumerate(device_ids):
            line = str(device_id)
            for j in range(12):
                line += ',' + str(prediction[i][j])
            line += '\n'
            total += 1
            f.write(line)
