import os
import argparse
import sys

def readlogfile(log_file):
    fs = open(log_file, 'r')
    lines = fs.readlines()
    fs.close()

    useful_lines = []
    for j in range(len(lines)):
        line = lines[j].rstrip()
        if 'it/s]' in line:
            useful_lines.append(line)
    return useful_lines

def get_performance(useful_lines):
    perf_values = []
    count = 0
    for i in range(len(useful_lines)):
        line = useful_lines[i]
        
        values = line.split(' ')
        for j in range(len(values)):
            if 'it/s' in values[j]:
                val = values[j].split('it/s')
                if val[0] != '?':
                    perf_values.append(float(val[0]))
                    count = count + 1

    return perf_values, count
    
def get_final_results(perf_values, count):
    total_sum = 0
    for j in range(1, count):
        total_sum = total_sum + perf_values[j]

    avg_iters_sec = total_sum/(count - 1)
    print ("INFO: Average iters/sec : {}".format(avg_iters_sec))
    print ("INFO: Performance is : {} examples/sec".format((args.batch_size * args.num_gpus) /(1/avg_iters_sec)))
 

def main():
    log_file = os.path.abspath(args.log_file)
    useful_lines = readlogfile(log_file)
    perf_values, count = get_performance(useful_lines)
    get_final_results(perf_values, count)
        

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--log-file", type=str, required=True, help="Log file")
    parser.add_argument("--num-gpus", type=int, required=True, help="Num of GPUs Pre-training is done.")
    parser.add_argument("--batch-size", type=int, required=False, default=24, help="Batch size used for pretraining")

    args = parser.parse_args()
    main()
