'''
Incomplete script - Intended to dump binary to UTF-8 to help replace text.
Simply inserting binary data and creating ISO will crash the game.
'''

with open("C:\\temp\\SLPS_258.42", "rb") as file_in:
    with open("C:\\temp\\SLPS_258.42_patched", "wb") as file_out:
        for line in file_in:
            file_out.write(line.replace(b'Final Demon Fang', b'Infernal Demon Fang'))
file_in.close()
file_out.close()
