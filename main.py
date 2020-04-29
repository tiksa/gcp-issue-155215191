def entry_fn(data, context):
    print("Start")
    foo = {}['bar']  # run-time error
    print("End")
