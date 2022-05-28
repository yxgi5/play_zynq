import struct
def extract_xilinx_file(file_string,file_type):
    fd = open(file_string, "rb")
    fcont = fd.read()
    fileLen = fd.tell()
    fd.close()
    table_offset=0x98
    offset=struct.unpack("i",fcont[table_offset:table_offset+4])
    print(offset[0])
    real_table_index=offset[0]
    version,NoOfPartitions,PartitionHeaderAddress=struct.unpack("iii",fcont[real_table_index:real_table_index+12])
    print("bootversion:%x"%version)
    print("NoOfPartitions:%d"%NoOfPartitions)
    print("PartitionHeaderAddress:%x" % PartitionHeaderAddress)
    PartitionHeaderAddress=PartitionHeaderAddress*4
    result=[False ,False,0,0]
    for partion_id in range(NoOfPartitions):
        print("Partitions %d:"%partion_id)
        print("PartitionHeaderAddress:0x%x"%PartitionHeaderAddress)
        EncryptedDataWordLength,UnEncryptedDataWordLength,TotalDataWordLength,NextPartitionOffset,\
        excut64,load64,\
        DataWordOffset,PartitionAttributes = \
        struct.unpack("4I2Q2I", fcont[PartitionHeaderAddress:PartitionHeaderAddress + 40])
        PartitionHeaderAddress=NextPartitionOffset*4;
        print("UnEncryptedDataWordLength:0x%x"%UnEncryptedDataWordLength)
        print("TotalDataWordLength:%x %x"%(TotalDataWordLength,TotalDataWordLength*4))
        print("DataWordOffset:%x %x" % (DataWordOffset, DataWordOffset * 4))
        print("PartitionAttributes:%x " %PartitionAttributes)
        file_offset=DataWordOffset * 4
        file_len=TotalDataWordLength*4
        if(PartitionAttributes==0x26): #FPPGA pl type file
            pl_file=file_string+".pl"
            f2=open(pl_file,'wb')
            # flash 写的时候起始地址 必须是0x10000 的整数倍 才可以  ！！！
            # 所以需要偏移到n*0x10000的起始地址开始写或擦除
            #此处偏移地址 取mod 0x20000
            result[0]=True
            result[1]=file_len
            offset_aligne=(file_offset%0x20000)
            file_len=file_len+offset_aligne;
            file_offset=file_offset-offset_aligne;
            f2.write(fcont[file_offset:file_offset+file_len])
            f2.close()
            print("%s  size:%d bytes write done " % (pl_file, file_len))
        elif(PartitionAttributes==0x116): #sw type file
            sw_file = file_string + ".sw"
            f3 = open(sw_file, 'wb')
            result[2] = True
            result[3] = file_len
            offset_aligne = (file_offset % 0x20000)
            file_len = file_len + offset_aligne;
            file_offset = file_offset - offset_aligne;
            f3.write(fcont[file_offset:file_offset + file_len])
            f3.close()
            print("%s  size:%d bytes write done "%(sw_file,file_len))

    return result