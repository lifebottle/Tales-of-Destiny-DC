'''
Incomplete script - Intended to dump binary to UTF-8 to help replace text.
Simply inserting binary data and creating ISO will crash the game.
'''

with open("C:\\temp\\SLPS_258.42", "rb") as file_in:
    with open("C:\\temp\\SLPS_258.42_patched", "wb") as file_out:
        for line in file_in:
            file_out.write(line.replace(b'\x99\x68\x99\x70\x99\x6D\x99\x65', b'\x47\x4F\x4C\x44\x00\x00\x00\x00'))
file_in.close()
file_out.close()
