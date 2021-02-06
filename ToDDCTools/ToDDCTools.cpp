struct s0 {
    struct s0* f0;
    struct s0* f1;
    signed char f2;
    signed char[1] pad4;
    uint32_t f4;
    struct s0* f5;
    struct s0* f8;
};

/*
 * ??2@YAPAXI@Z
 * void * __cdecl operator new(unsigned int)
 */
int32_t _2_YAPAXI_Z = 0xed3c;

struct s0* fun_4088ba(struct s0* a1, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6, struct s0* a7, struct s0* a8, struct s0* a9, struct s0* a10) {
    goto _2_YAPAXI_Z;
}

int32_t memset = 0xed4c;

void fun_408ca0(void* a1, uint32_t a2, void* a3) {
    goto memset;
}

void fun_401250(void** a1, void** a2, void*** a3, struct s0* a4) {
    void* eax5;
    void* esi6;
    int32_t esi7;
    int32_t esi8;
    void** ebx9;
    uint32_t edx10;
    void* eax11;
    void* ecx12;
    void** ecx13;
    void* edi14;
    void* esi15;
    int32_t esi16;
    int32_t esi17;
    int32_t esi18;
    int32_t* edx19;
    int32_t esi20;
    int32_t esi21;
    int32_t esi22;
    int32_t esi23;
    int32_t ecx24;
    int32_t ecx25;
    int32_t esi26;
    void* esi27;
    int32_t esi28;
    int32_t esi29;

    eax5 = reinterpret_cast<void*>(static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<unsigned char>(a4) + reinterpret_cast<uint32_t>(esi6))));
    *reinterpret_cast<int32_t*>(esi7 * 4 + 0x427e48) = 0x1000;
    *reinterpret_cast<int32_t*>(esi8 * 4 + 0x42ce50) = 0x1000;
    ebx9 = a1;
    edx10 = 1;
    eax11 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax5) + 0x1001);
    *a3 = reinterpret_cast<void**>(0);
    do {
        if (reinterpret_cast<int32_t>(edx10) < reinterpret_cast<int32_t>(0)) {
            ecx12 = *reinterpret_cast<void**>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x427e48);
            if (ecx12 == 0x1000) 
                break;
        } else {
            ecx12 = *reinterpret_cast<void**>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x42ce50);
            if (reinterpret_cast<int1_t>(ecx12 == 0x1000)) 
                goto addr_401298_5;
        }
        eax11 = ecx12;
        ecx13 = reinterpret_cast<void**>(1);
        if (reinterpret_cast<int32_t>(ebx9) > reinterpret_cast<int32_t>(1)) {
            edi14 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax11) + reinterpret_cast<unsigned char>(a4));
            do {
                edx10 = *reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(ecx13) + (reinterpret_cast<unsigned char>(a4) + reinterpret_cast<uint32_t>(esi15))) - *reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(edi14) + reinterpret_cast<uint32_t>(ecx13));
                ebx9 = a1;
                if (edx10) 
                    break;
                ecx13 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(ecx13) + 1);
            } while (reinterpret_cast<int32_t>(ecx13) < reinterpret_cast<int32_t>(ebx9));
        }
    } while (reinterpret_cast<int32_t>(ecx13) <= reinterpret_cast<int32_t>(*a3) || (*a2 = eax11, *a3 = ecx13, reinterpret_cast<int32_t>(ecx13) < reinterpret_cast<int32_t>(ebx9)));
    goto addr_4012fe_11;
    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x427e48) = esi16;
    *reinterpret_cast<void**>(esi17 * 4 + 0x423e40) = eax11;
    return;
    addr_4012fe_11:
    *reinterpret_cast<int32_t*>(esi18 * 4 + 0x423e40) = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x423e40);
    edx19 = reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x423e40);
    *reinterpret_cast<int32_t*>(esi20 * 4 + 0x427e48) = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x427e48);
    *reinterpret_cast<int32_t*>(esi21 * 4 + 0x42ce50) = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x42ce50);
    *reinterpret_cast<int32_t*>(*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x427e48) * 4 + 0x423e40) = esi22;
    *reinterpret_cast<int32_t*>(*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x42ce50) * 4 + 0x423e40) = esi23;
    ecx24 = *edx19 + *edx19;
    ecx25 = ecx24 + ecx24;
    if (*reinterpret_cast<void**>(ecx25 + 0x42ce50) != eax11) {
        *reinterpret_cast<int32_t*>(ecx25 + 0x427e48) = esi26;
        *edx19 = 0x1000;
        return;
    } else {
        *reinterpret_cast<void**>(ecx25 + 0x42ce50) = esi27;
        *edx19 = 0x1000;
        return;
    }
    addr_401298_5:
    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(eax11) * 4 + 0x42ce50) = esi28;
    *reinterpret_cast<void**>(esi29 * 4 + 0x423e40) = eax11;
    return;
}

void fun_401390() {
    int1_t zf1;
    int32_t edi2;
    int32_t* ebx3;
    int32_t edi4;
    int32_t eax5;
    int32_t edi6;
    int32_t esi7;
    int32_t edi8;
    int32_t* ecx9;
    int32_t ecx10;
    int32_t edx11;
    int32_t edi12;
    int32_t edi13;
    int32_t edi14;
    int32_t edi15;
    int32_t ecx16;
    int32_t ecx17;
    int32_t edi18;

    zf1 = *reinterpret_cast<int32_t*>(edi2 * 4 + 0x423e40) == 0x1000;
    ebx3 = reinterpret_cast<int32_t*>(edi4 * 4 + 0x423e40);
    if (!zf1) {
        eax5 = *reinterpret_cast<int32_t*>(edi6 * 4 + 0x42ce50);
        if (eax5 != 0x1000) {
            esi7 = *reinterpret_cast<int32_t*>(edi8 * 4 + 0x427e48);
            if (esi7 != 0x1000) {
                eax5 = esi7;
                if (*reinterpret_cast<int32_t*>(eax5 * 4 + 0x42ce50) != 0x1000) {
                    ecx9 = reinterpret_cast<int32_t*>(eax5 * 4 + 0x42ce50);
                    do {
                        eax5 = *ecx9;
                        ecx9 = reinterpret_cast<int32_t*>(eax5 * 4 + 0x42ce50);
                    } while (*reinterpret_cast<int32_t*>(eax5 * 4 + 0x42ce50) != 0x1000);
                    ecx10 = *reinterpret_cast<int32_t*>(eax5 * 4 + 0x423e40);
                    edx11 = *reinterpret_cast<int32_t*>(eax5 * 4 + 0x427e48);
                    *reinterpret_cast<int32_t*>(edx11 * 4 + 0x423e40) = ecx10;
                    *reinterpret_cast<int32_t*>(ecx10 * 4 + 0x42ce50) = edx11;
                    *reinterpret_cast<int32_t*>(eax5 * 4 + 0x427e48) = esi7;
                    *reinterpret_cast<int32_t*>(*reinterpret_cast<int32_t*>(edi12 * 4 + 0x427e48) * 4 + 0x423e40) = eax5;
                }
                *reinterpret_cast<int32_t*>(eax5 * 4 + 0x42ce50) = *reinterpret_cast<int32_t*>(edi13 * 4 + 0x42ce50);
                *reinterpret_cast<int32_t*>(*reinterpret_cast<int32_t*>(edi14 * 4 + 0x42ce50) * 4 + 0x423e40) = eax5;
            }
        } else {
            eax5 = *reinterpret_cast<int32_t*>(edi15 * 4 + 0x427e48);
        }
        *reinterpret_cast<int32_t*>(eax5 * 4 + 0x423e40) = *ebx3;
        ecx16 = *ebx3 + *ebx3;
        ecx17 = ecx16 + ecx16;
        if (*reinterpret_cast<int32_t*>(ecx17 + 0x42ce50) != edi18) {
            *reinterpret_cast<int32_t*>(ecx17 + 0x427e48) = eax5;
            *ebx3 = 0x1000;
        } else {
            *ebx3 = 0x1000;
            *reinterpret_cast<int32_t*>(ecx17 + 0x42ce50) = eax5;
            return;
        }
    }
    return;
}

int32_t memcpy = 0xed56;

void fun_408ca6(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6) {
    goto memcpy;
}

uint32_t g410020 = 0xbb40e64e;

int32_t g423ba8 = 0;

uint32_t g423ba4 = 0;

int32_t g423ba0 = 0;

int32_t g423b9c = 0;

int32_t g423b98 = 0;

int32_t g423b94 = 0;

int16_t g423bc0 = 0;

int16_t g423bb4 = 0;

int16_t g423b90 = 0;

int16_t g423b8c = 0;

int16_t g423b88 = 0;

int16_t g423b84 = 0;

uint32_t g423bb8 = 0;

int32_t g423bac = 0;

int32_t g423bb0 = 0;

void* g423bbc = reinterpret_cast<void*>(0);

int32_t g423af8 = 0;

int32_t g423aac = 0;

int32_t g423aa0 = 0;

int32_t g423aa4 = 0;

int32_t g410024 = 0x44bf19b1;

int32_t IsDebuggerPresent = 0xefbe;

int32_t g423af0 = 0;

void fun_4091d0(uint32_t ecx);

int32_t SetUnhandledExceptionFilter = 0xefa0;

int32_t UnhandledExceptionFilter = 0xef84;

int32_t GetCurrentProcess = 0xef70;

int32_t TerminateProcess = 0xef5c;

signed char fun_4088c5(uint32_t ecx, struct s0* a2) {
    uint32_t eflags3;
    int1_t zf4;
    signed char al5;
    int32_t* esp6;
    void* esp7;
    int32_t eax8;
    int32_t edx9;
    int32_t ebx10;
    int32_t esi11;
    int32_t edi12;
    int16_t ss13;
    int16_t cs14;
    int16_t ds15;
    int16_t es16;
    int16_t fs17;
    int16_t gs18;
    int32_t ebp19;
    int32_t eax20;
    uint32_t eax21;
    int32_t eax22;
    int32_t eax23;
    int1_t zf24;
    int32_t eax25;
    signed char al26;

    *reinterpret_cast<int1_t*>(reinterpret_cast<int32_t>(&eflags3) + 1) = 0;
    zf4 = ecx == g410020;
    if (zf4) {
        return al5;
    }
    esp6 = reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    *reinterpret_cast<int1_t*>(&eflags3) = reinterpret_cast<uint32_t>(esp6) < 0x328;
    esp7 = reinterpret_cast<void*>(esp6 - 0xca);
    *reinterpret_cast<int1_t*>(&eflags3) = __intrinsic();
    *reinterpret_cast<int1_t*>(&eflags3) = esp7 == 0;
    *reinterpret_cast<int1_t*>(&eflags3) = reinterpret_cast<int32_t>(esp7) < reinterpret_cast<int32_t>(0);
    *reinterpret_cast<int1_t*>(reinterpret_cast<int32_t>(&eflags3) + 1) = __intrinsic();
    *reinterpret_cast<int1_t*>(&eflags3) = __intrinsic();
    g423ba8 = eax8;
    g423ba4 = ecx;
    g423ba0 = edx9;
    g423b9c = ebx10;
    g423b98 = esi11;
    g423b94 = edi12;
    g423bc0 = ss13;
    g423bb4 = cs14;
    g423b90 = ds15;
    g423b8c = es16;
    g423b88 = fs17;
    g423b84 = gs18;
    g423bb8 = eflags3 & 0xfcffff;
    g423bac = ebp19;
    g423bb0 = reinterpret_cast<int32_t>(__return_address());
    g423bbc = reinterpret_cast<void*>(esp6 + 2);
    g423af8 = 0x10001;
    eax20 = g423bb0;
    g423aac = eax20;
    g423aa0 = 0xc0000409;
    g423aa4 = 1;
    eax21 = g410020;
    eax22 = g410024;
    eax23 = reinterpret_cast<int32_t>(IsDebuggerPresent(eax21, eax22));
    g423af0 = eax23;
    fun_4091d0(ecx);
    SetUnhandledExceptionFilter(1, 0, eax21, eax22);
    UnhandledExceptionFilter(1, 0x40a3f0, 0, eax21, eax22);
    zf24 = g423af0 == 0;
    if (zf24) 
        goto addr_408e4e_5;
    addr_408e56_6:
    eax25 = reinterpret_cast<int32_t>(GetCurrentProcess(1, 0xc0000409, 0x40a3f0, 0, eax21, eax22));
    al26 = reinterpret_cast<signed char>(TerminateProcess(1, eax25, 0xc0000409, 0x40a3f0, 0, eax21, eax22));
    return al26;
    addr_408e4e_5:
    fun_4091d0(1);
    goto addr_408e56_6;
}

int32_t printf = 0xecb6;

signed char fun_404ab0(struct s0* ecx);

signed char fun_403f50(struct s0* ecx);

signed char fun_402b70(struct s0* ecx, struct s0* a2);

signed char fun_402000(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6);

signed char fun_405900(struct s0* ecx, signed char* a2, struct s0* a3, struct s0* a4, int32_t* a5) {
    struct s0* v6;
    struct s0* v7;
    struct s0* ebx8;
    signed char* ebx9;
    struct s0* v10;
    struct s0* esi11;
    signed char* eax12;
    struct s0* v13;
    struct s0* edi14;
    int32_t edx15;
    signed char* eax16;
    int32_t edx17;
    uint32_t edx18;
    uint32_t esi19;
    uint32_t eax20;
    uint32_t edi21;
    uint32_t tmp32_22;
    uint1_t cf23;
    uint32_t tmp32_24;
    uint1_t cf25;
    signed char* eax26;
    int32_t edx27;
    uint32_t edx28;
    uint32_t esi29;
    uint32_t eax30;
    uint32_t edi31;
    uint32_t tmp32_32;
    uint1_t cf33;
    uint32_t tmp32_34;
    uint1_t cf35;
    signed char* eax36;
    int32_t edx37;
    uint32_t edx38;
    uint32_t esi39;
    uint32_t eax40;
    uint32_t edi41;
    uint32_t tmp32_42;
    uint1_t cf43;
    uint32_t tmp32_44;
    uint1_t cf45;
    signed char al46;
    uint32_t edx47;
    uint32_t esi48;
    uint32_t eax49;
    uint32_t edi50;
    uint32_t tmp32_51;
    uint1_t cf52;
    uint32_t tmp32_53;
    uint1_t cf54;
    signed char al55;
    signed char al56;
    signed char al57;
    signed char al58;

    v6 = ecx;
    v7 = ebx8;
    ebx9 = a2;
    v10 = esi11;
    eax12 = ebx9;
    v13 = edi14;
    edx15 = reinterpret_cast<int32_t>(eax12 + 1);
    do {
        ++eax12;
    } while (*eax12);
    if (reinterpret_cast<int32_t>(eax12) - edx15 != 6) {
        addr_40596d_4:
        eax16 = ebx9;
        edx17 = reinterpret_cast<int32_t>(eax16 + 1);
    } else {
        edx18 = 0;
        esi19 = 0;
        eax20 = 0;
        edi21 = 0;
        do {
            if (*reinterpret_cast<signed char*>(eax20 + reinterpret_cast<int32_t>("unpack")) != *reinterpret_cast<signed char*>(eax20 + reinterpret_cast<int32_t>(ebx9))) 
                break;
            tmp32_22 = edx18 + 1;
            cf23 = reinterpret_cast<uint1_t>(tmp32_22 < edx18);
            edx18 = tmp32_22;
            esi19 = esi19 + cf23;
            tmp32_24 = eax20 + 1;
            cf25 = reinterpret_cast<uint1_t>(tmp32_24 < eax20);
            eax20 = tmp32_24;
            edi21 = edi21 + cf25;
        } while (!edi21 && eax20 < 6);
        if (edx18 != 6) 
            goto addr_40596d_4;
        if (esi19) 
            goto addr_40596d_4; else 
            goto addr_405957_10;
    }
    do {
        ++eax16;
    } while (*eax16);
    if (reinterpret_cast<int32_t>(eax16) - edx17 != 4) {
        addr_4059cd_13:
        eax26 = ebx9;
        edx27 = reinterpret_cast<int32_t>(eax26 + 1);
    } else {
        edx28 = 0;
        esi29 = 0;
        eax30 = 0;
        edi31 = 0;
        do {
            if (*reinterpret_cast<signed char*>(eax30 + reinterpret_cast<int32_t>("pack")) != *reinterpret_cast<signed char*>(eax30 + reinterpret_cast<int32_t>(ebx9))) 
                break;
            tmp32_32 = edx28 + 1;
            cf33 = reinterpret_cast<uint1_t>(tmp32_32 < edx28);
            edx28 = tmp32_32;
            esi29 = esi29 + cf33;
            tmp32_34 = eax30 + 1;
            cf35 = reinterpret_cast<uint1_t>(tmp32_34 < eax30);
            eax30 = tmp32_34;
            edi31 = edi31 + cf35;
        } while (!edi31 && eax30 < 4);
        if (edx28 != 4) 
            goto addr_4059cd_13;
        if (esi29) 
            goto addr_4059cd_13; else 
            goto addr_4059b7_19;
    }
    do {
        ++eax26;
    } while (*eax26);
    if (reinterpret_cast<int32_t>(eax26) - edx27 != 6) {
        addr_405a26_22:
        eax36 = ebx9;
        edx37 = reinterpret_cast<int32_t>(eax36 + 1);
    } else {
        edx38 = 0;
        esi39 = 0;
        eax40 = 0;
        edi41 = 0;
        do {
            if (*reinterpret_cast<signed char*>(eax40 + reinterpret_cast<int32_t>("unmglk")) != *reinterpret_cast<signed char*>(eax40 + reinterpret_cast<int32_t>(ebx9))) 
                break;
            tmp32_42 = edx38 + 1;
            cf43 = reinterpret_cast<uint1_t>(tmp32_42 < edx38);
            edx38 = tmp32_42;
            esi39 = esi39 + cf43;
            tmp32_44 = eax40 + 1;
            cf45 = reinterpret_cast<uint1_t>(tmp32_44 < eax40);
            eax40 = tmp32_44;
            edi41 = edi41 + cf45;
        } while (!edi41 && eax40 < 6);
        if (edx38 != 6) 
            goto addr_405a26_22;
        if (esi39) 
            goto addr_405a26_22; else 
            goto addr_405a17_28;
    }
    do {
        ++eax36;
    } while (*eax36);
    if (reinterpret_cast<int32_t>(eax36) - edx37 != 4) {
        addr_405a86_31:
        al46 = reinterpret_cast<signed char>(printf("\nWRONG MODE\n"));
        return al46;
    } else {
        edx47 = 0;
        esi48 = 0;
        eax49 = 0;
        edi50 = 0;
        do {
            if (*reinterpret_cast<signed char*>(eax49 + reinterpret_cast<int32_t>("mglk")) != *reinterpret_cast<signed char*>(eax49 + reinterpret_cast<int32_t>(ebx9))) 
                break;
            tmp32_51 = edx47 + 1;
            cf52 = reinterpret_cast<uint1_t>(tmp32_51 < edx47);
            edx47 = tmp32_51;
            esi48 = esi48 + cf52;
            tmp32_53 = eax49 + 1;
            cf54 = reinterpret_cast<uint1_t>(tmp32_53 < eax49);
            eax49 = tmp32_53;
            edi50 = edi50 + cf54;
        } while (!edi50 && eax49 < 4);
        if (edx47 != 4) 
            goto addr_405a86_31;
        if (esi48) 
            goto addr_405a86_31;
    }
    al55 = fun_404ab0(a3);
    return al55;
    addr_405a17_28:
    al56 = fun_403f50(a3);
    return al56;
    addr_4059b7_19:
    al57 = fun_402b70(a3, a4);
    return al57;
    addr_405957_10:
    al58 = fun_402000(a3, a4, v13, v10, v7, v6);
    return al58;
}

void fun_409280(struct s0* ecx);

signed char fun_401940(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6) {
    struct s0* v7;
    struct s0* v8;
    struct s0* ebp9;
    struct s0** ebp10;
    struct s0* v11;
    struct s0* ebx12;
    struct s0* v13;
    struct s0* esi14;
    uint32_t* esi15;
    uint32_t* edx16;
    struct s0* v17;
    struct s0* v18;
    struct s0* v19;
    struct s0* edi20;
    uint32_t* v21;
    void* v22;
    void* eax23;
    int32_t ecx24;
    int32_t ecx25;
    uint32_t eax26;
    uint32_t eax27;
    void* eax28;
    uint32_t v29;
    struct s0* ecx30;
    void* edi31;
    void* eax32;
    void* v33;
    struct s0* eax34;
    struct s0* v35;
    uint32_t edx36;
    void* v37;
    void* esi38;
    void* ebx39;
    void* eax40;
    uint32_t ecx41;
    void* ecx42;
    void* eax43;
    void* v44;
    void* ecx45;
    void* v46;
    signed char cl47;
    uint32_t v48;
    void* eax49;
    void* eax50;
    void* eax51;
    signed char al52;
    signed char al53;
    signed char al54;

    v7 = reinterpret_cast<struct s0*>(__return_address());
    v8 = ebp9;
    ebp10 = reinterpret_cast<struct s0**>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    fun_409280(ecx);
    v11 = ebx12;
    v13 = esi14;
    esi15 = edx16;
    v17 = ecx;
    v18 = a2;
    v19 = edi20;
    v21 = esi15;
    v22 = reinterpret_cast<void*>(0);
    eax23 = reinterpret_cast<void*>(0);
    ecx24 = 0;
    do {
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffc) = *reinterpret_cast<signed char*>(&ecx24);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffe) = *reinterpret_cast<signed char*>(&ecx24);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff000) = *reinterpret_cast<signed char*>(&ecx24);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff002) = *reinterpret_cast<signed char*>(&ecx24);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffd) = 0;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffefff) = 0;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff001) = 0;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff003) = 0;
        ++ecx24;
        eax23 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax23) + 8);
    } while (ecx24 != 0x100);
    ecx25 = 0;
    do {
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffc) = *reinterpret_cast<signed char*>(&ecx25);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffe) = *reinterpret_cast<signed char*>(&ecx25);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff000) = *reinterpret_cast<signed char*>(&ecx25);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff002) = *reinterpret_cast<signed char*>(&ecx25);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffd) = -1;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffefff) = -1;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xfffff001) = -1;
        ++ecx25;
        eax23 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax23) + 7);
    } while (ecx25 != 0x100);
    if (eax23 != 0x1000) {
        fun_408ca0(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax23) + 0xffffeffc, 0, 0x1000 - reinterpret_cast<uint32_t>(eax23));
    }
    eax26 = (*esi15 & 0xffffff) - 0x5a4c53;
    eax27 = -eax26;
    eax28 = reinterpret_cast<void*>(eax27 - (eax27 + reinterpret_cast<uint1_t>(eax27 < eax27 + reinterpret_cast<uint1_t>(!!eax26))) & 0xfffffffd);
    v29 = *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi15) + reinterpret_cast<uint32_t>(eax28) + 3);
    ecx30 = *reinterpret_cast<struct s0**>(reinterpret_cast<int32_t>(esi15) + reinterpret_cast<uint32_t>(eax28) + 8);
    edi31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax28) + 12);
    eax32 = *reinterpret_cast<void**>(reinterpret_cast<int32_t>(esi15) + reinterpret_cast<uint32_t>(eax28) + 4);
    v33 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(eax32) + reinterpret_cast<uint32_t>(edi31));
    eax34 = fun_4088ba(reinterpret_cast<unsigned char>(ecx30) + 0x1000, v19, v13, v11, v8, v7, a2, a3, a4, a5);
    *reinterpret_cast<struct s0**>(&v17->f0) = ecx30;
    *reinterpret_cast<struct s0**>(&v18->f0) = eax34;
    v35 = eax34;
    if (v29) {
        edx36 = v29 - 1;
        if (!edx36 || (v37 = reinterpret_cast<void*>(17), !!(edx36 - 2))) {
            v37 = reinterpret_cast<void*>(18);
        }
        esi38 = reinterpret_cast<void*>(0x1000 - reinterpret_cast<uint32_t>(v37));
        if (reinterpret_cast<int32_t>(edi31) < reinterpret_cast<int32_t>(v33)) {
            ebx39 = reinterpret_cast<void*>(0);
            do {
                eax40 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(v22) >> 1);
                v22 = eax40;
                if (!(reinterpret_cast<uint32_t>(eax40) & 0x100)) {
                    edi31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi31) + 1);
                    v22 = reinterpret_cast<void*>(static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(v21) + reinterpret_cast<uint32_t>(edi31))) | 0xff00);
                }
                if (!(*reinterpret_cast<unsigned char*>(&v22) & 1)) {
                    ecx41 = *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(v21) + reinterpret_cast<uint32_t>(edi31) + 1);
                    ecx42 = reinterpret_cast<void*>((ecx41 & 15) + 2);
                    edi31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi31) + 2);
                    eax43 = reinterpret_cast<void*>(static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(v21) + reinterpret_cast<uint32_t>(edi31))) | (ecx41 & 0xf0) << 4);
                    v44 = ecx42;
                    if (v29 == 1 || reinterpret_cast<uint32_t>(ecx42) < reinterpret_cast<uint32_t>(v37)) {
                        ecx45 = reinterpret_cast<void*>(0);
                        v46 = reinterpret_cast<void*>(0);
                        do {
                            cl47 = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + (reinterpret_cast<uint32_t>(eax43) + reinterpret_cast<uint32_t>(ecx45) & 0xfff) - 0x1004);
                            *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(esi38) - 0x1004) = cl47;
                            *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(v35) + reinterpret_cast<uint32_t>(ebx39)) = cl47;
                            ecx45 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(v46) + 1);
                            ebx39 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebx39) + 1);
                            esi38 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi38) + 1 & 0xfff);
                            v46 = ecx45;
                        } while (reinterpret_cast<uint32_t>(ecx45) <= reinterpret_cast<uint32_t>(v44));
                    } else {
                        if (reinterpret_cast<uint32_t>(eax43) >= 0x100) {
                            v48 = *reinterpret_cast<unsigned char*>(&eax43);
                            eax49 = reinterpret_cast<void*>((reinterpret_cast<uint32_t>(eax43) >> 8) + 2);
                        } else {
                            v48 = *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(v21) + reinterpret_cast<uint32_t>(edi31));
                            edi31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi31) + 1);
                            eax49 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax43) + reinterpret_cast<uint32_t>(v37) + 1);
                        }
                        eax50 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax49) + 1);
                        fun_408ca0(reinterpret_cast<unsigned char>(v35) + reinterpret_cast<uint32_t>(ebx39), v48, eax50);
                        eax51 = eax50;
                        ebx39 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebx39) + reinterpret_cast<uint32_t>(eax51));
                        do {
                            *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(esi38) - 0x1004) = *reinterpret_cast<signed char*>(&v48);
                            esi38 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi38) + 1 & 0xfff);
                            eax51 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax51) - 1);
                        } while (eax51);
                    }
                } else {
                    al52 = *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(v21) + reinterpret_cast<uint32_t>(edi31));
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(esi38) - 0x1004) = al52;
                    *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(v35) + reinterpret_cast<uint32_t>(ebx39)) = al52;
                    edi31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi31) + 1);
                    ebx39 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebx39) + 1);
                    esi38 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi38) + 1 & 0xfff);
                }
            } while (reinterpret_cast<int32_t>(edi31) < reinterpret_cast<int32_t>(v33));
        }
        al53 = fun_4088c5(reinterpret_cast<unsigned char>(v11) ^ reinterpret_cast<uint32_t>(ebp10), v8);
        return al53;
    } else {
        fun_408ca6(ecx30, eax34, reinterpret_cast<int32_t>(esi15) + reinterpret_cast<uint32_t>(edi31), ecx30, v19, v13);
        al54 = fun_4088c5(reinterpret_cast<unsigned char>(v11) ^ reinterpret_cast<uint32_t>(ebp10), v8);
        return al54;
    }
}

int32_t strncat = 0xebea;

int32_t _mkdir = 0xf072;

signed char fun_401180(int32_t a1, void* a2) {
    void* ebp3;
    uint32_t eax4;
    uint32_t v5;
    signed char* eax6;
    signed char* edi7;
    void* edx8;
    struct s0* ecx9;
    struct s0* esi10;
    struct s0* v11;
    int32_t ebx12;
    void* edi13;
    void* v14;
    void* v15;
    int32_t edi16;
    signed char al17;

    ebp3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax4 = g410020;
    v5 = eax4 ^ reinterpret_cast<uint32_t>(ebp3);
    eax6 = edi7;
    edx8 = reinterpret_cast<void*>(eax6 + 1);
    do {
        ++eax6;
    } while (*eax6);
    ecx9 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(eax6) - reinterpret_cast<uint32_t>(edx8));
    esi10 = reinterpret_cast<struct s0*>(0);
    v11 = ecx9;
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(ecx9) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(ecx9 == 0))) {
        ebx12 = strncat;
        do {
            if (*reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(edi13) + reinterpret_cast<unsigned char>(esi10)) == 47 || *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(edi13) + reinterpret_cast<unsigned char>(esi10)) == 92) {
                v14 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffefc);
                fun_408ca0(v14, 0, 0xff);
                v15 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffefc);
                ebx12(v15, edi16, esi10, v14, 0, 0xff);
                _mkdir(reinterpret_cast<uint32_t>(ebp3) + 0xfffffefc, v15, edi16, esi10, v14, 0, 0xff);
                ecx9 = v11;
            }
            esi10 = reinterpret_cast<struct s0*>(&esi10->f1);
        } while (reinterpret_cast<signed char>(esi10) < reinterpret_cast<signed char>(ecx9));
    }
    al17 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v11);
    return al17;
}

int32_t sprintf = 0xebe0;

int32_t fopen = 0xecc0;

void fun_403480(struct s0* a1, uint32_t a2, struct s0* a3) {
    int32_t edi4;
    int32_t esi5;
    int32_t esi6;
    int32_t edi7;
    struct s0* eax8;
    int32_t edi9;
    int32_t esi10;
    int32_t esi11;
    int32_t edi12;
    int32_t edi13;
    int32_t esi14;
    int32_t esi15;
    int32_t edi16;
    int32_t edi17;
    int32_t esi18;
    int32_t esi19;
    int32_t edi20;
    int32_t edi21;
    int32_t esi22;
    int32_t esi23;
    int32_t edi24;
    int32_t edi25;
    int32_t esi26;
    int32_t esi27;
    int32_t edi28;
    int32_t edi29;
    int32_t esi30;
    int32_t esi31;
    int32_t edi32;
    int32_t edi33;
    int32_t esi34;
    int32_t esi35;
    int32_t edi36;
    int32_t edi37;
    int32_t esi38;
    int32_t esi39;
    int32_t edi40;
    int32_t edi41;
    int32_t esi42;
    int32_t esi43;
    int32_t edi44;
    int32_t edi45;
    int32_t esi46;
    int32_t esi47;
    int32_t edi48;
    int32_t edi49;
    int32_t esi50;
    int32_t esi51;
    int32_t edi52;
    int32_t edi53;
    int32_t esi54;
    int32_t esi55;
    int32_t edi56;
    int32_t edi57;
    int32_t esi58;
    int32_t esi59;
    int32_t edi60;
    int32_t edi61;
    int32_t esi62;
    int32_t esi63;
    int32_t edi64;
    int32_t edi65;
    int32_t esi66;
    int32_t esi67;
    int32_t edi68;
    int32_t edi69;
    int32_t esi70;
    int32_t esi71;
    int32_t edi72;
    int32_t edi73;
    int32_t esi74;
    int32_t esi75;
    int32_t edi76;
    int32_t edi77;
    int32_t esi78;
    int32_t esi79;
    int32_t edi80;
    int32_t edi81;
    int32_t esi82;
    int32_t esi83;
    int32_t edi84;
    struct s0* eax85;

    if (!reinterpret_cast<int1_t>(a3 == 0xffffffff)) {
        sprintf(edi4, "%s/%s_%02i_%02i.rsce", esi5, esi6, a2, a3);
        eax8 = reinterpret_cast<struct s0*>(fopen(edi7, "rb", edi4, "%s/%s_%02i_%02i.rsce", esi5, esi6, a2, a3));
        if (!eax8 && ((sprintf(edi9, "%s/%s_%02i_%02i.dat", esi10, esi11, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi12, "rb", edi9, "%s/%s_%02i_%02i.dat", esi10, esi11, a2, a3)), !eax8) && ((sprintf(edi13, "%s/%s_%02i_%02i.effe", esi14, esi15, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi16, "rb", edi13, "%s/%s_%02i_%02i.effe", esi14, esi15, a2, a3)), !eax8) && ((sprintf(edi17, "%s/%s_%02i_%02i.tm2", esi18, esi19, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi20, "rb", edi17, "%s/%s_%02i_%02i.tm2", esi18, esi19, a2, a3)), !eax8) && ((sprintf(edi21, "%s/%s_%02i_%02i.anp", esi22, esi23, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi24, "rb", edi21, "%s/%s_%02i_%02i.anp", esi22, esi23, a2, a3)), !eax8) && ((sprintf(edi25, "%s/%s_%02i_%02i.xgm", esi26, esi27, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi28, "rb", edi25, "%s/%s_%02i_%02i.xgm", esi26, esi27, a2, a3)), !eax8) && ((sprintf(edi29, "%s/%s_%02i_%02i.xgs", esi30, esi31, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi32, "rb", edi29, "%s/%s_%02i_%02i.xgs", esi30, esi31, a2, a3)), !eax8) && ((sprintf(edi33, "%s/%s_%02i_%02i.xgg", esi34, esi35, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi36, "rb", edi33, "%s/%s_%02i_%02i.xgg", esi34, esi35, a2, a3)), !eax8) && (sprintf(edi37, "%s/%s_%02i_%02i.org", esi38, esi39, a2, a3), eax8 = reinterpret_cast<struct s0*>(fopen(edi40, "rb", edi37, "%s/%s_%02i_%02i.org", esi38, esi39, a2, a3)), !eax8))))))))) {
            sprintf(edi41, "%s/%s_%02i_%02i.tmas", esi42, esi43, a2, a3);
            eax8 = reinterpret_cast<struct s0*>(fopen(edi44, "rb", edi41, "%s/%s_%02i_%02i.tmas", esi42, esi43, a2, a3));
        }
    } else {
        sprintf(edi45, "%s/%s_%02i.rsce", esi46, esi47, a2);
        eax8 = reinterpret_cast<struct s0*>(fopen(edi48, "rb", edi45, "%s/%s_%02i.rsce", esi46, esi47, a2));
        if (!eax8 && ((sprintf(edi49, "%s/%s_%02i.dat", esi50, esi51, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi52, "rb", edi49, "%s/%s_%02i.dat", esi50, esi51, a2)), !eax8) && ((sprintf(edi53, "%s/%s_%02i.effe", esi54, esi55, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi56, "rb", edi53, "%s/%s_%02i.effe", esi54, esi55, a2)), !eax8) && ((sprintf(edi57, "%s/%s_%02i.tm2", esi58, esi59, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi60, "rb", edi57, "%s/%s_%02i.tm2", esi58, esi59, a2)), !eax8) && ((sprintf(edi61, "%s/%s_%02i.anp", esi62, esi63, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi64, "rb", edi61, "%s/%s_%02i.anp", esi62, esi63, a2)), !eax8) && ((sprintf(edi65, "%s/%s_%02i.xgm", esi66, esi67, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi68, "rb", edi65, "%s/%s_%02i.xgm", esi66, esi67, a2)), !eax8) && ((sprintf(edi69, "%s/%s_%02i.xgs", esi70, esi71, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi72, "rb", edi69, "%s/%s_%02i.xgs", esi70, esi71, a2)), !eax8) && ((sprintf(edi73, "%s/%s_%02i.xgg", esi74, esi75, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi76, "rb", edi73, "%s/%s_%02i.xgg", esi74, esi75, a2)), !eax8) && (sprintf(edi77, "%s/%s_%02i.org", esi78, esi79, a2), eax8 = reinterpret_cast<struct s0*>(fopen(edi80, "rb", edi77, "%s/%s_%02i.org", esi78, esi79, a2)), !eax8))))))))) {
            sprintf(edi81, "%s/%s_%02i.tmas", esi82, esi83, a2);
            eax85 = reinterpret_cast<struct s0*>(fopen(edi84, "rb", edi81, "%s/%s_%02i.tmas", esi82, esi83, a2));
            *reinterpret_cast<struct s0**>(&a1->f0) = eax85;
            return;
        }
    }
    *reinterpret_cast<struct s0**>(&a1->f0) = eax8;
    return;
}

struct s1 {
    uint32_t f0;
    signed char f4;
};

void fun_4037b0(struct s0* ecx, struct s1* a2);

int32_t fwrite = 0xecfa;

int32_t fclose = 0xed2a;

/*
 * ??_V@YAXPAX@Z
 * void __cdecl operator delete[](void *)
 */
int32_t _V_YAXPAX_Z = 0xecc8;

signed char fun_4039b0(struct s0* a1, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, int32_t a6, struct s0* a7) {
    void* ebp8;
    uint32_t eax9;
    uint32_t v10;
    struct s0* v11;
    struct s0* ebx12;
    struct s0* v13;
    struct s0* esi14;
    struct s0* v15;
    struct s0* edi16;
    struct s0* edi17;
    struct s0* v18;
    int32_t ecx19;
    struct s0* v20;
    struct s0* v21;
    struct s0* v22;
    struct s0* v23;
    struct s0* eax24;
    struct s0* v25;
    int32_t ecx26;
    struct s0* v27;
    struct s0* v28;
    struct s0* v29;
    struct s0* eax30;
    struct s0* v31;
    struct s0* edx32;
    struct s0** ecx33;
    void* esi34;
    struct s0* v35;
    struct s0* esi36;
    struct s0* v37;
    void* v38;
    void* v39;
    int32_t eax40;
    int32_t v41;
    int32_t esi42;
    struct s0* v43;
    signed char al44;

    ebp8 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax9 = g410020;
    v10 = eax9 ^ reinterpret_cast<uint32_t>(ebp8);
    v11 = ebx12;
    v13 = esi14;
    v15 = edi16;
    edi17 = *reinterpret_cast<struct s0**>(&a1->f0);
    v18 = a2;
    ecx19 = 0;
    *reinterpret_cast<unsigned char*>(&ecx19) = __intrinsic();
    v20 = edi17;
    eax24 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx19) | reinterpret_cast<unsigned char>(edi17) * 4, v15, v13, v11, v21, v22, v20, a1, v18, v23);
    v25 = eax24;
    ecx26 = 0;
    *reinterpret_cast<unsigned char*>(&ecx26) = __intrinsic();
    eax30 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx26) | reinterpret_cast<unsigned char>(edi17) * 4, v15, v13, v11, v27, v28, v20, a1, v18, v29);
    v31 = eax30;
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(edi17) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(edi17 == 0))) {
        edx32 = eax30;
        ecx33 = &a1->f5;
        esi34 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(v25) - reinterpret_cast<unsigned char>(eax30));
        v35 = edi17;
        do {
            *reinterpret_cast<void**>(reinterpret_cast<uint32_t>(esi34) + reinterpret_cast<unsigned char>(edx32)) = *reinterpret_cast<void**>(ecx33 - 4);
            *reinterpret_cast<struct s0**>(&edx32->f0) = *ecx33;
            ecx33 = ecx33 + 8;
            edx32 = reinterpret_cast<struct s0*>(&edx32->f4);
            v35 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v35) - 1);
        } while (v35);
        eax30 = v31;
    }
    esi36 = reinterpret_cast<struct s0*>(0);
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(edi17) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(edi17 == 0))) {
        while (fun_401940(reinterpret_cast<uint32_t>(ebp8) + 0xfffffddc, reinterpret_cast<uint32_t>(ebp8) + 0xfffffdf4, v15, v13, v11, v37), fun_4037b0(v35, reinterpret_cast<uint32_t>(ebp8) + 0xfffffdf8), sprintf(reinterpret_cast<uint32_t>(ebp8) + 0xfffffef8, "%s/%s_%02i_%02i.%s", v18, v18, a3, esi36, reinterpret_cast<uint32_t>(ebp8) + 0xfffffdf8), v38 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp8) + 0xfffffef8), printf("\n%s", v38), v39 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp8) + 0xfffffef8), eax40 = reinterpret_cast<int32_t>(fopen(v39, "wb", "\n%s", v38)), fwrite(v35, v41, 1, eax40, v39, "wb", "\n%s", v38), fclose(eax40, v35, v41, 1, eax40, v39, "wb", "\n%s", v38), _V_YAXPAX_Z(v35), esi36 = reinterpret_cast<struct s0*>(&esi36->f1), reinterpret_cast<signed char>(esi36) < reinterpret_cast<signed char>(v20)) {
        }
        eax30 = v31;
    }
    esi42 = _V_YAXPAX_Z;
    esi42(eax30);
    esi42(v25);
    al44 = fun_4088c5(v10 ^ reinterpret_cast<uint32_t>(ebp8), v43);
    return al44;
}

uint32_t g40e498 = 0x65666665;

unsigned char g40e49c = 0;

unsigned char g40e4a4 = 0;

uint32_t g40e4a0 = 0x65637372;

unsigned char g40e4ac = 0;

uint32_t g40e4a8 = 0x73616d74;

void fun_4037b0(struct s0* ecx, struct s1* a2) {
    uint32_t eax3;
    uint32_t edx4;
    uint32_t edx5;
    uint32_t eax6;
    uint32_t edx7;
    uint32_t eax8;
    struct s0* eax9;
    uint32_t ecx10;
    struct s0* v11;
    uint32_t edi12;
    uint32_t eax13;
    uint32_t eax14;

    eax3 = g40e498;
    edx4 = g40e49c;
    edx5 = g40e4a4;
    eax6 = g40e4a0;
    edx7 = g40e4ac;
    eax8 = g40e4a8;
    eax9 = *reinterpret_cast<struct s0**>(&ecx->f0);
    ecx10 = ecx->f4;
    __asm__("shld ebx, edi, 0x10");
    __asm__("shld esi, edx, 0x10");
    __asm__("shld esi, edx, 0x10");
    v11 = eax9;
    __asm__("shld edi, edx, 0x8");
    __asm__("shrd eax, edx, 0x10");
    __asm__("shrd eax, edx, 0x10");
    __asm__("shrd eax, edx, 0x8");
    __asm__("cdq ");
    edi12 = ecx10;
    if (1 || edi12 != 0x44315258) {
        if (1 || edi12 != 0x44315258) {
            if (1 || edi12 != 0x544f4431) {
                if (1) {
                    if (1) {
                        if (1) {
                            if (1) {
                                if (1) {
                                    eax13 = ((reinterpret_cast<unsigned char>(v11) << 16 | reinterpret_cast<unsigned char>(v11) & 0xff00) << 8 | reinterpret_cast<unsigned char>(v11) >> 8 & 0xff00 | static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(&v11 + 3))) - 0x616e7033;
                                    eax14 = -eax13;
                                    a2->f0 = (eax14 - (eax14 + reinterpret_cast<uint1_t>(eax14 < eax14 + reinterpret_cast<uint1_t>(!!eax13))) & 0x3f303) + 0x706e61;
                                    return;
                                } else {
                                    a2->f0 = 0x326d74;
                                    return;
                                }
                            } else {
                                a2->f0 = eax3;
                                a2->f4 = *reinterpret_cast<signed char*>(&edx4);
                                return;
                            }
                        } else {
                            a2->f0 = eax8;
                            a2->f4 = *reinterpret_cast<signed char*>(&edx7);
                            return;
                        }
                    } else {
                        a2->f0 = 0x67726f;
                        return;
                    }
                } else {
                    a2->f0 = 0x676778;
                    return;
                }
            } else {
                a2->f0 = eax6;
                a2->f4 = *reinterpret_cast<signed char*>(&edx5);
                return;
            }
        } else {
            a2->f0 = 0x736778;
            return;
        }
    } else {
        a2->f0 = 0x6d6778;
        return;
    }
}

int32_t fread = 0xecd8;

void fun_401040(struct s0* a1, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6, struct s0* a7, struct s0* a8) {
    struct s0* ebx9;
    struct s0* edi10;
    struct s0* edi11;
    struct s0* esi12;
    struct s0* ebx13;
    struct s0* v14;
    struct s0* v15;
    struct s0* ebp16;
    struct s0* eax17;
    struct s0* v18;
    struct s0* esi19;
    struct s0* v20;
    uint1_t cf21;
    struct s0* v22;
    struct s0* v23;
    struct s0* eax24;

    ebx9 = a2;
    edi10 = a1;
    if (ebx9 || reinterpret_cast<unsigned char>(edi10) > reinterpret_cast<unsigned char>(0x3000000)) {
        eax17 = fun_4088ba(0x3000000, edi11, esi12, ebx13, v14, v15, ebp16, __return_address(), a1, a2);
        v18 = eax17;
        if (reinterpret_cast<unsigned char>(edi10) | reinterpret_cast<unsigned char>(ebx9)) {
            do {
                if (!reinterpret_cast<uint1_t>(static_cast<uint32_t>(reinterpret_cast<uint1_t>(ebx9 == 0))) || !0 && reinterpret_cast<unsigned char>(edi10) >= reinterpret_cast<unsigned char>(0x3000000)) {
                    esi19 = reinterpret_cast<struct s0*>(0x3000000);
                    v20 = reinterpret_cast<struct s0*>(0);
                } else {
                    esi19 = edi10;
                    v20 = ebx9;
                }
                fread(v18, 1, esi19, a3);
                fwrite(v18, 1, esi19, a4, v18, 1, esi19, a3);
                cf21 = reinterpret_cast<uint1_t>(reinterpret_cast<unsigned char>(edi10) < reinterpret_cast<unsigned char>(esi19));
                edi10 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi10) - reinterpret_cast<unsigned char>(esi19));
                ebx9 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx9) - (reinterpret_cast<unsigned char>(v20) + reinterpret_cast<uint1_t>(reinterpret_cast<unsigned char>(ebx9) < reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(v20) + cf21))));
            } while (reinterpret_cast<unsigned char>(edi10) | reinterpret_cast<unsigned char>(ebx9));
        }
        _V_YAXPAX_Z(v18);
        return;
    } else {
        eax24 = fun_4088ba(edi10, edi11, esi12, ebx13, v22, v23, ebp16, __return_address(), a1, a2);
        fread(eax24, edi10, 1, a3, edi10);
        fwrite(eax24, edi10, 1, a4, eax24, edi10, 1, a3, edi10);
        _V_YAXPAX_Z(eax24, eax24, edi10, 1, a4, eax24, edi10, 1, a3, edi10);
        return;
    }
}

int32_t _fileno = 0xecf0;

int32_t _filelength = 0xebc8;

signed char fun_401490(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4);

int32_t realloc = 0xed0c;

signed char fun_403b60(struct s0* ecx, struct s0* a2, uint32_t a3) {
    void* ebp4;
    uint32_t eax5;
    uint32_t v6;
    struct s0* v7;
    struct s0* eax8;
    struct s0* v9;
    struct s0* ebx10;
    struct s0* v11;
    struct s0* esi12;
    struct s0* esi13;
    struct s0* v14;
    struct s0* v15;
    struct s0* edx16;
    struct s0* v17;
    int32_t ecx18;
    struct s0* v19;
    struct s0* edi20;
    struct s0* v21;
    struct s0* v22;
    struct s0* v23;
    struct s0* v24;
    struct s0* v25;
    struct s0* eax26;
    struct s0* ebx27;
    int32_t ecx28;
    struct s0* v29;
    struct s0* v30;
    struct s0* v31;
    struct s0* v32;
    struct s0* eax33;
    struct s0* edi34;
    int32_t ecx35;
    struct s0* v36;
    struct s0* v37;
    struct s0* eax38;
    struct s0* v39;
    struct s0* eax40;
    struct s0* v41;
    struct s0* v42;
    struct s0* v43;
    struct s0* eax44;
    struct s0* ecx45;
    struct s0* v46;
    struct s0* v47;
    struct s0* v48;
    struct s0* v49;
    void* v50;
    struct s0* ecx51;
    struct s0* v52;
    struct s0* edi53;
    struct s0* ebx54;
    struct s0* v55;
    struct s0* eax56;
    struct s0* esi57;
    struct s0* eax58;
    struct s0* eax59;
    struct s0* eax60;
    struct s0* eax61;
    struct s0* eax62;
    struct s0* v63;
    struct s0* eax64;
    struct s0* v65;
    struct s0* eax66;
    int32_t v67;
    struct s0* eax68;
    uint32_t edx69;
    void* edi70;
    struct s0* v71;
    struct s0* eax72;
    struct s0* edx73;
    struct s0* eax74;
    struct s0** eax75;
    struct s0* ecx76;
    void* ebx77;
    struct s0* v78;
    struct s0* eax79;
    struct s0** ecx80;
    struct s0* eax81;
    void* edx82;
    struct s0* v83;
    int32_t esi84;
    signed char al85;
    void* ecx86;
    void* v87;
    struct s0* v88;

    ebp4 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax5 = g410020;
    v6 = eax5 ^ reinterpret_cast<uint32_t>(ebp4);
    v7 = a2;
    eax8 = *reinterpret_cast<struct s0**>(&a2->f0);
    v9 = ebx10;
    v11 = esi12;
    esi13 = *reinterpret_cast<struct s0**>(&eax8->f0);
    v14 = ecx;
    v15 = edx16;
    v17 = eax8;
    ecx18 = 0;
    *reinterpret_cast<unsigned char*>(&ecx18) = __intrinsic();
    v19 = edi20;
    v21 = esi13;
    v22 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(-ecx18) | reinterpret_cast<unsigned char>(esi13) * 4);
    eax26 = fun_4088ba(v22, v19, v11, v9, v15, v23, v7, v24, v14, v25);
    ebx27 = eax26;
    ecx28 = 0;
    *reinterpret_cast<unsigned char*>(&ecx28) = __intrinsic();
    v29 = ebx27;
    v30 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(-ecx28) | reinterpret_cast<unsigned char>(esi13) * 4);
    eax33 = fun_4088ba(v30, v22, v19, v11, v9, v15, v31, v7, v32, v14);
    edi34 = eax33;
    ecx35 = 0;
    *reinterpret_cast<unsigned char*>(&ecx35) = __intrinsic();
    v36 = edi34;
    eax38 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx35) | reinterpret_cast<unsigned char>(esi13) * 4, v30, v22, v19, v11, v9, v15, v36, v7, v37);
    v39 = eax38;
    if (reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(esi13) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(esi13 == 0)) {
        addr_403c70_2:
        eax40 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi13) * 8 + 4);
        v41 = eax40;
        eax44 = fun_4088ba(eax40, v19, v11, v9, v15, v36, v7, v42, v14, v43);
        ecx45 = eax44;
        v46 = ecx45;
        v47 = reinterpret_cast<struct s0*>(0);
        if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(esi13) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(esi13 == 0))) {
            v48 = ebx27;
            v49 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v39) - reinterpret_cast<unsigned char>(edi34));
            v50 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(edi34) - reinterpret_cast<unsigned char>(ebx27));
            do {
                ecx51 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp4) + 0xfffffecc);
                fun_403480(ecx51, a3, v47);
                if (!v52) {
                    edi53 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(v50) + reinterpret_cast<unsigned char>(v48));
                    ebx54 = *reinterpret_cast<struct s0**>(&edi53->f0);
                    eax56 = fun_4088ba(ebx54, v19, v11, v9, v15, v36, v7, v55, v14, v49);
                    esi57 = eax56;
                    eax58 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&v48->f0)) + reinterpret_cast<unsigned char>(v17));
                    fun_408ca6(ecx51, esi57, eax58, ebx54, ebx54, v19);
                } else {
                    printf("\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc);
                    eax59 = reinterpret_cast<struct s0*>(_fileno(v52, "\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc));
                    eax60 = reinterpret_cast<struct s0*>(_filelength(eax59, v52, "\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc));
                    eax61 = fun_4088ba(eax60, eax59, v52, "\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc, v19, v11, v9, v15, v36);
                    fread(eax61, eax60, 1, v52, eax60, eax59, v52, "\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc);
                    eax62 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(v50) + reinterpret_cast<unsigned char>(v48));
                    v55 = eax62;
                    v63 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(eax62) + reinterpret_cast<unsigned char>(v49));
                    __asm__("cdq ");
                    eax64 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(eax60) + reinterpret_cast<unsigned char>(eax60) * 8 + (reinterpret_cast<unsigned char>(v49) & 7)) >> 3);
                    v65 = eax64;
                    eax66 = fun_4088ba(&eax64->f8, eax61, eax60, 1, v52, eax60, eax59, v52, "\n+ %s", reinterpret_cast<uint32_t>(ebp4) + 0xfffffefc);
                    esi57 = eax66;
                    if (v63) {
                        fun_401490(eax61, v63, eax60, reinterpret_cast<uint32_t>(ebp4) + 0xfffffef0);
                    } else {
                        v65 = eax60;
                        fun_408ca6(ecx51, &esi57->f8, eax61, eax60, v19, v11);
                    }
                    *reinterpret_cast<struct s0**>(&esi57->f0) = v63;
                    esi57->f1 = v65;
                    *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(esi57) + 5) = eax60;
                    fclose(v67);
                    _V_YAXPAX_Z(eax61, v67);
                    ebx54 = reinterpret_cast<struct s0*>(&v65->f8);
                    edi53 = v55;
                }
                *reinterpret_cast<struct s0**>(&v48->f0) = v41;
                eax68 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v41) + reinterpret_cast<unsigned char>(ebx54));
                edx69 = reinterpret_cast<unsigned char>(eax68) & 0x80000003;
                *reinterpret_cast<struct s0**>(&edi53->f0) = ebx54;
                v41 = eax68;
                if (__intrinsic()) {
                    edx69 = (edx69 - 1 | 0xfffffffc) + 1;
                }
                edi70 = reinterpret_cast<void*>(4 - edx69);
                if (edi70 != 4) {
                    eax68 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax68) + reinterpret_cast<uint32_t>(edi70));
                    v41 = eax68;
                }
                v71 = v46;
                eax72 = reinterpret_cast<struct s0*>(realloc(v71, eax68));
                edx73 = *reinterpret_cast<struct s0**>(&v48->f0);
                v46 = eax72;
                fun_408ca6(v48, reinterpret_cast<unsigned char>(edx73) + reinterpret_cast<unsigned char>(eax72), esi57, ebx54, v71, eax68);
                if (edi70 != 4 && !(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edi70) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edi70 == 0))) {
                    fun_408ca0(reinterpret_cast<unsigned char>(v46) - reinterpret_cast<uint32_t>(edi70) + reinterpret_cast<unsigned char>(v41), 0, edi70);
                }
                _V_YAXPAX_Z(esi57);
                v48 = reinterpret_cast<struct s0*>(&v48->f4);
                eax74 = reinterpret_cast<struct s0*>(&v47->f1);
                v47 = eax74;
            } while (reinterpret_cast<signed char>(eax74) < reinterpret_cast<signed char>(v21));
            edi34 = v36;
            esi13 = v21;
            ebx27 = v29;
            ecx45 = v46;
        }
    } else {
        eax75 = &v17->f5;
        ecx76 = edi34;
        ebx77 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx27) - reinterpret_cast<unsigned char>(edi34));
        v78 = esi13;
        do {
            *reinterpret_cast<void**>(reinterpret_cast<uint32_t>(ebx77) + reinterpret_cast<unsigned char>(ecx76)) = *reinterpret_cast<void**>(eax75 - 4);
            *reinterpret_cast<struct s0**>(&ecx76->f0) = *eax75;
            eax75 = eax75 + 8;
            ecx76 = reinterpret_cast<struct s0*>(&ecx76->f4);
            v78 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v78) - 1);
        } while (v78);
        ebx27 = v29;
        eax79 = v39;
        if (reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(esi13) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(esi13 == 0)) 
            goto addr_403c70_2; else 
            goto addr_403c3b_21;
    }
    *reinterpret_cast<struct s0**>(&ecx45->f0) = esi13;
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(esi13) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(esi13 == 0))) {
        ecx80 = &ecx45->f5;
        eax81 = edi34;
        edx82 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx27) - reinterpret_cast<unsigned char>(edi34));
        v83 = esi13;
        do {
            *reinterpret_cast<void**>(ecx80 - 4) = *reinterpret_cast<void**>(reinterpret_cast<unsigned char>(eax81) + reinterpret_cast<uint32_t>(edx82));
            *ecx80 = *reinterpret_cast<struct s0**>(&eax81->f0);
            eax81 = reinterpret_cast<struct s0*>(&eax81->f4);
            ecx80 = ecx80 + 8;
            v83 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v83) - 1);
        } while (v83);
    }
    esi84 = _V_YAXPAX_Z;
    esi84(v17);
    *reinterpret_cast<struct s0**>(&v14->f0) = v41;
    *reinterpret_cast<struct s0**>(&v7->f0) = v46;
    esi84(edi34, v17);
    esi84(ebx27, edi34, v17);
    esi84(v39, ebx27, edi34, v17);
    al85 = fun_4088c5(v6 ^ reinterpret_cast<uint32_t>(ebp4), v15);
    return al85;
    addr_403c3b_21:
    ecx86 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx27) - reinterpret_cast<unsigned char>(eax79));
    v87 = ecx86;
    v88 = esi13;
    while (*reinterpret_cast<struct s0**>(&eax79->f0) = reinterpret_cast<struct s0*>(static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(*reinterpret_cast<void**>(reinterpret_cast<uint32_t>(ecx86) + reinterpret_cast<unsigned char>(eax79))) + reinterpret_cast<unsigned char>(v17)))), eax79 = reinterpret_cast<struct s0*>(&eax79->f4), v88 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v88) - 1), !!v88) {
        ecx86 = v87;
    }
    goto addr_403c70_2;
}

void fun_401110(int32_t* a1);

struct s2 {
    uint32_t f0;
    signed char[4] pad8;
    int32_t f8;
    signed char f12;
};

int32_t _fseeki64 = 0xec98;

int32_t fgetc = 0xeca4;

struct s3 {
    signed char[4251640] pad4251640;
    signed char f4251640;
};

struct s4 {
    signed char[4251584] pad4251584;
    signed char f4251584;
};

struct s5 {
    signed char[4251972] pad4251972;
    signed char f4251972;
};

struct s6 {
    signed char[4252004] pad4252004;
    signed char f4252004;
};

struct s7 {
    signed char[4252036] pad4252036;
    signed char f4252036;
};

struct s8 {
    signed char[4252068] pad4252068;
    signed char f4252068;
};

struct s9 {
    signed char[4252100] pad4252100;
    signed char f4252100;
};

struct s10 {
    signed char[4251612] pad4251612;
    signed char f4251612;
};

struct s11 {
    signed char[4252140] pad4252140;
    signed char f4252140;
};

unsigned char fun_401e10(struct s0* a1, struct s0* a2);

unsigned char fun_401ea0(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4);

signed char fun_401f20(struct s0* a1, struct s0* a2);

unsigned char fun_401f70(struct s0* ecx, struct s0* a2);

signed char fun_401cf0(struct s0* ecx, void* a2);

signed char fun_402000(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4, struct s0* a5, struct s0* a6) {
    struct s0* v7;
    struct s0* v8;
    struct s0* ebp9;
    struct s0** ebp10;
    struct s0* v11;
    struct s0* ebx12;
    struct s0* v13;
    struct s0* esi14;
    struct s0* v15;
    struct s0* edi16;
    int32_t eax17;
    int32_t v18;
    struct s0* eax19;
    struct s0* v20;
    int32_t esi21;
    int32_t eax22;
    int32_t edi23;
    uint32_t eax24;
    void* ebx25;
    uint32_t edx26;
    int32_t eax27;
    int32_t ecx28;
    struct s0* edx29;
    struct s0* eax30;
    struct s0* v31;
    void* v32;
    int16_t* esi33;
    uint32_t v34;
    uint32_t* edi35;
    uint32_t eax36;
    uint32_t ecx37;
    void* eax38;
    struct s0* ebx39;
    struct s0* v40;
    struct s0* edi41;
    int32_t ebx42;
    struct s2* esi43;
    struct s0* v44;
    int32_t ebx45;
    int32_t eax46;
    int32_t eax47;
    int1_t zf48;
    void* v49;
    int32_t v50;
    struct s0* v51;
    void* esi52;
    struct s0* eax53;
    int32_t edx54;
    struct s0* eax55;
    struct s0* v56;
    struct s0* v57;
    int32_t v58;
    struct s0* ebx59;
    struct s0* eax60;
    struct s0* ecx61;
    struct s0* eax62;
    struct s0* v63;
    int32_t ebx64;
    int1_t zf65;
    uint32_t ecx66;
    uint32_t edi67;
    struct s3* eax68;
    uint32_t edx69;
    uint32_t tmp32_70;
    uint1_t cf71;
    struct s3* tmp32_72;
    uint1_t cf73;
    uint32_t ecx74;
    uint32_t edi75;
    struct s4* eax76;
    uint32_t edx77;
    uint32_t tmp32_78;
    uint1_t cf79;
    struct s4* tmp32_80;
    uint1_t cf81;
    uint32_t ecx82;
    uint32_t edi83;
    struct s5* eax84;
    uint32_t edx85;
    uint32_t tmp32_86;
    uint1_t cf87;
    struct s5* tmp32_88;
    uint1_t cf89;
    uint32_t ecx90;
    uint32_t edi91;
    struct s6* eax92;
    uint32_t edx93;
    uint32_t tmp32_94;
    uint1_t cf95;
    struct s6* tmp32_96;
    uint1_t cf97;
    uint32_t ecx98;
    uint32_t edi99;
    struct s7* eax100;
    uint32_t edx101;
    uint32_t tmp32_102;
    uint1_t cf103;
    struct s7* tmp32_104;
    uint1_t cf105;
    uint32_t ecx106;
    uint32_t edi107;
    struct s8* eax108;
    uint32_t edx109;
    uint32_t tmp32_110;
    uint1_t cf111;
    struct s8* tmp32_112;
    uint1_t cf113;
    uint32_t ecx114;
    uint32_t edi115;
    struct s9* eax116;
    uint32_t edx117;
    uint32_t tmp32_118;
    uint1_t cf119;
    struct s9* tmp32_120;
    uint1_t cf121;
    uint32_t ecx122;
    uint32_t edi123;
    struct s10* eax124;
    uint32_t edx125;
    uint32_t tmp32_126;
    uint1_t cf127;
    struct s10* tmp32_128;
    uint1_t cf129;
    uint32_t ecx130;
    uint32_t edi131;
    struct s11* eax132;
    uint32_t edx133;
    uint32_t tmp32_134;
    uint1_t cf135;
    struct s11* tmp32_136;
    uint1_t cf137;
    unsigned char al138;
    struct s0* ecx139;
    unsigned char al140;
    signed char al141;
    unsigned char al142;
    signed char al143;
    struct s0* eax144;
    uint32_t v145;
    void* v146;
    void* v147;
    void* v148;
    struct s0* v149;
    void* v150;
    struct s0* v151;
    void* v152;
    struct s0* v153;
    struct s0* v154;
    struct s0* v155;
    struct s0* v156;
    struct s0* v157;
    struct s0* v158;
    struct s0* v159;
    struct s0* v160;
    struct s0* v161;
    struct s0* v162;
    struct s0* v163;
    struct s0* v164;
    struct s0* ebx165;
    void* edi166;
    struct s0* v167;
    struct s0* ecx168;
    struct s0* eax169;
    int1_t zf170;
    struct s0* esi171;
    struct s0* eax172;
    struct s0* ebx173;
    struct s0* eax174;
    struct s0* v175;
    int32_t ebx176;
    int32_t esi177;
    signed char al178;
    signed char al179;
    signed char al180;

    v7 = reinterpret_cast<struct s0*>(__return_address());
    v8 = ebp9;
    ebp10 = reinterpret_cast<struct s0**>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    fun_409280(ecx);
    v11 = ebx12;
    v13 = esi14;
    v15 = edi16;
    fun_401110(ebp10 + 0xfffffef4);
    eax17 = reinterpret_cast<int32_t>(fopen(a2, "rb"));
    v18 = eax17;
    if (eax17) {
        eax19 = reinterpret_cast<struct s0*>(fopen(ecx, "rb"));
        v20 = eax19;
        if (eax19) {
            esi21 = _fileno;
            eax22 = reinterpret_cast<int32_t>(esi21(eax17));
            edi23 = _filelength;
            eax24 = reinterpret_cast<uint32_t>(edi23(eax22));
            __asm__("cdq ");
            ebx25 = reinterpret_cast<void*>(reinterpret_cast<int32_t>((edx26 & 7) + eax24) >> 3);
            eax27 = reinterpret_cast<int32_t>(esi21(v20));
            edi23(eax27);
            ecx28 = 0;
            edx29 = __intrinsic();
            *reinterpret_cast<unsigned char*>(&ecx28) = __intrinsic();
            eax30 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx28) | reinterpret_cast<int32_t>(ebx25) * 0x310, v15, v13, v11, v8, v7, a2, a3, a4, a5);
            v31 = eax30;
            v32 = reinterpret_cast<void*>(0);
            if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(ebx25) < 0) | reinterpret_cast<uint1_t>(ebx25 == 0))) {
                esi33 = reinterpret_cast<int16_t*>(reinterpret_cast<unsigned char>(eax30) + 24);
                do {
                    v34 = reinterpret_cast<uint32_t>(esi33) + 0x101;
                    sprintf(v34, 0x40df57);
                    edi35 = reinterpret_cast<uint32_t*>(esi33 - 12);
                    fread(edi35, 8, 1, v18, v34, 0x40df57);
                    eax36 = *edi35 & 63;
                    ecx37 = *edi35 - eax36;
                    *esi33 = 0x100;
                    *reinterpret_cast<uint32_t*>(esi33 - 4) = eax36;
                    *reinterpret_cast<uint32_t*>(esi33 - 8) = ecx37;
                    if (v32) {
                        *reinterpret_cast<uint32_t*>(esi33 - 0x18e) = ecx37 - *reinterpret_cast<int32_t*>(esi33 - 0x190) - *reinterpret_cast<int32_t*>(esi33 - 0x18c);
                    }
                    eax38 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(v32) + 1);
                    esi33 = esi33 + 0x188;
                    v32 = eax38;
                } while (reinterpret_cast<int32_t>(eax38) < reinterpret_cast<int32_t>(ebx25));
            }
            printf("\nAnalyzing files, please wait...\n");
            ebx39 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(ebx25) - 1);
            v40 = ebx39;
            if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(ebx39) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(ebx39 == 0))) {
                edi41 = v20;
                edx29 = ebx39;
                ebx42 = fread;
                esi43 = reinterpret_cast<struct s2*>(reinterpret_cast<unsigned char>(v31) + 12);
                v44 = edx29;
                ebx45 = ebx42;
                while (1) {
                    if (!esi43->f0) 
                        goto addr_402252_11;
                    eax46 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi43) - 4);
                    _fseeki64(edi41, eax46, 0, 0);
                    eax47 = reinterpret_cast<int32_t>(fgetc(edi41, edi41, eax46, 0, 0));
                    if (eax47 == 1 || eax47 == 3) {
                        esi43->f8 = eax47;
                        ebx45(ebp10 + 0xfffdfeec, 4, 1, edi41);
                        zf48 = eax47 + 9 == esi43->f0;
                    } else {
                        if (eax47 || (v49 = reinterpret_cast<void*>(ebp10 + 0xfffdfeec), esi43->f8 = eax47, ebx45(v49, 4, 1, edi41), edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffdfec8), ebx45(edx29, 4, 1, edi41, v49, 4, 1, edi41), eax47 != v50)) {
                            addr_402252_11:
                            esi43 = reinterpret_cast<struct s2*>(reinterpret_cast<uint32_t>(esi43) + 0x310);
                            v44 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v44) - 1);
                            if (v44) 
                                continue; else 
                                break;
                        } else {
                            zf48 = eax47 + 9 == esi43->f0;
                        }
                    }
                    if (zf48) {
                        esi43->f12 = 1;
                        goto addr_402252_11;
                    }
                }
            }
            v51 = reinterpret_cast<struct s0*>(0);
            if (reinterpret_cast<signed char>(v40) > reinterpret_cast<signed char>(0)) {
                esi52 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(v31) + 0x119);
                while (1) {
                    if (!*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi52) + 0xfffffef3)) {
                        addr_4029fe_21:
                        eax53 = reinterpret_cast<struct s0*>(&v51->f1);
                        esi52 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi52) + 0x310);
                        v51 = eax53;
                        if (reinterpret_cast<signed char>(eax53) < reinterpret_cast<signed char>(v40)) 
                            continue; else 
                            break;
                    } else {
                        edx54 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi52) + 0xfffffeef);
                        _fseeki64(v20, edx54, 0, 0);
                        if (!*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(esi52) + 0xfffffeff)) {
                            eax55 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi52) + 0xfffffef3);
                            v56 = eax55;
                            if (reinterpret_cast<signed char>(eax55) > reinterpret_cast<signed char>(0x20000)) {
                                eax55 = reinterpret_cast<struct s0*>(0x20000);
                            }
                            v57 = eax55;
                            fread(ebp10 + 0xfffdfef4, eax55, 1, v20);
                        } else {
                            v58 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi52) + 0xfffffefb);
                            sprintf(esi52, " SLZ%i", v58);
                            ebx59 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi52) + 0xfffffef3);
                            eax60 = fun_4088ba(ebx59, v15, v13, v11, v8, v7, a2, a3, a4, a5);
                            fread(eax60, ebx59, 1, v20);
                            ecx61 = reinterpret_cast<struct s0*>(ebp10 + 0xfffdfed4);
                            fun_401940(ecx61, ebp10 + 0xfffdfee0, eax60, ebx59, 1, v20);
                            eax62 = v63;
                            v56 = eax62;
                            if (reinterpret_cast<signed char>(eax62) > reinterpret_cast<signed char>(0x1000)) {
                                eax62 = reinterpret_cast<struct s0*>(0x1000);
                            }
                            v57 = eax62;
                            fun_408ca6(ecx61, ebp10 + 0xfffdfef4, v44, eax62, v15, v13);
                            ebx64 = _V_YAXPAX_Z;
                            ebx64(ecx61, v44);
                            ebx64(ecx61, eax60);
                        }
                        zf65 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi52) + 0xfffffeeb) == 0x4000400;
                        if (zf65) 
                            goto addr_4023b5_30;
                    }
                    ecx66 = 0;
                    edi67 = 0;
                    eax68 = reinterpret_cast<struct s3*>(0);
                    edx69 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax68) - 0x20130) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax68) + reinterpret_cast<int32_t>("ELF"))) 
                            break;
                        tmp32_70 = ecx66 + 1;
                        cf71 = reinterpret_cast<uint1_t>(tmp32_70 < ecx66);
                        ecx66 = tmp32_70;
                        edi67 = edi67 + cf71;
                        tmp32_72 = reinterpret_cast<struct s3*>(reinterpret_cast<uint32_t>(eax68) + 1);
                        cf73 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_72) < reinterpret_cast<uint32_t>(eax68));
                        eax68 = tmp32_72;
                        edx69 = edx69 + cf73;
                    } while (!edx69 && reinterpret_cast<uint32_t>(eax68) < 3);
                    if (ecx66 != 3) 
                        goto addr_402461_35;
                    if (!edi67) 
                        goto addr_40242b_37;
                    addr_402461_35:
                    ecx74 = 0;
                    edi75 = 0;
                    eax76 = reinterpret_cast<struct s4*>(0);
                    edx77 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax76) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax76) + reinterpret_cast<int32_t>("TIM2"))) 
                            break;
                        tmp32_78 = ecx74 + 1;
                        cf79 = reinterpret_cast<uint1_t>(tmp32_78 < ecx74);
                        ecx74 = tmp32_78;
                        edi75 = edi75 + cf79;
                        tmp32_80 = reinterpret_cast<struct s4*>(reinterpret_cast<uint32_t>(eax76) + 1);
                        cf81 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_80) < reinterpret_cast<uint32_t>(eax76));
                        eax76 = tmp32_80;
                        edx77 = edx77 + cf81;
                    } while (!edx77 && reinterpret_cast<uint32_t>(eax76) < 4);
                    if (ecx74 != 4) 
                        goto addr_4024d1_41;
                    if (!edi75) 
                        goto addr_40249b_43;
                    addr_4024d1_41:
                    ecx82 = 0;
                    edi83 = 0;
                    eax84 = reinterpret_cast<struct s5*>(0);
                    edx85 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax84) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax84) + reinterpret_cast<int32_t>("iTPK"))) 
                            break;
                        tmp32_86 = ecx82 + 1;
                        cf87 = reinterpret_cast<uint1_t>(tmp32_86 < ecx82);
                        ecx82 = tmp32_86;
                        edi83 = edi83 + cf87;
                        tmp32_88 = reinterpret_cast<struct s5*>(reinterpret_cast<uint32_t>(eax84) + 1);
                        cf89 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_88) < reinterpret_cast<uint32_t>(eax84));
                        eax84 = tmp32_88;
                        edx85 = edx85 + cf89;
                    } while (!edx85 && reinterpret_cast<uint32_t>(eax84) < 4);
                    if (ecx82 != 4) 
                        goto addr_402541_47;
                    if (!edi83) 
                        goto addr_40250b_49;
                    addr_402541_47:
                    ecx90 = 0;
                    edi91 = 0;
                    eax92 = reinterpret_cast<struct s6*>(0);
                    edx93 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax92) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax92) + reinterpret_cast<int32_t>("iSE2"))) 
                            break;
                        tmp32_94 = ecx90 + 1;
                        cf95 = reinterpret_cast<uint1_t>(tmp32_94 < ecx90);
                        ecx90 = tmp32_94;
                        edi91 = edi91 + cf95;
                        tmp32_96 = reinterpret_cast<struct s6*>(reinterpret_cast<uint32_t>(eax92) + 1);
                        cf97 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_96) < reinterpret_cast<uint32_t>(eax92));
                        eax92 = tmp32_96;
                        edx93 = edx93 + cf97;
                    } while (!edx93 && reinterpret_cast<uint32_t>(eax92) < 4);
                    if (ecx90 != 4) 
                        goto addr_4025b1_53;
                    if (!edi91) 
                        goto addr_40257b_55;
                    addr_4025b1_53:
                    ecx98 = 0;
                    edi99 = 0;
                    eax100 = reinterpret_cast<struct s7*>(0);
                    edx101 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax100) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax100) + reinterpret_cast<int32_t>("isdt"))) 
                            break;
                        tmp32_102 = ecx98 + 1;
                        cf103 = reinterpret_cast<uint1_t>(tmp32_102 < ecx98);
                        ecx98 = tmp32_102;
                        edi99 = edi99 + cf103;
                        tmp32_104 = reinterpret_cast<struct s7*>(reinterpret_cast<uint32_t>(eax100) + 1);
                        cf105 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_104) < reinterpret_cast<uint32_t>(eax100));
                        eax100 = tmp32_104;
                        edx101 = edx101 + cf105;
                    } while (!edx101 && reinterpret_cast<uint32_t>(eax100) < 4);
                    if (ecx98 != 4) 
                        goto addr_402621_59;
                    if (!edi99) 
                        goto addr_4025eb_61;
                    addr_402621_59:
                    ecx106 = 0;
                    edi107 = 0;
                    eax108 = reinterpret_cast<struct s8*>(0);
                    edx109 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax108) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax108) + reinterpret_cast<int32_t>("iTMD"))) 
                            break;
                        tmp32_110 = ecx106 + 1;
                        cf111 = reinterpret_cast<uint1_t>(tmp32_110 < ecx106);
                        ecx106 = tmp32_110;
                        edi107 = edi107 + cf111;
                        tmp32_112 = reinterpret_cast<struct s8*>(reinterpret_cast<uint32_t>(eax108) + 1);
                        cf113 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_112) < reinterpret_cast<uint32_t>(eax108));
                        eax108 = tmp32_112;
                        edx109 = edx109 + cf113;
                    } while (!edx109 && reinterpret_cast<uint32_t>(eax108) < 4);
                    if (ecx106 != 4) 
                        goto addr_402691_65;
                    if (!edi107) 
                        goto addr_40265b_67;
                    addr_402691_65:
                    ecx114 = 0;
                    edi115 = 0;
                    eax116 = reinterpret_cast<struct s9*>(0);
                    edx117 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax116) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax116) + reinterpret_cast<int32_t>("iTDT"))) 
                            break;
                        tmp32_118 = ecx114 + 1;
                        cf119 = reinterpret_cast<uint1_t>(tmp32_118 < ecx114);
                        ecx114 = tmp32_118;
                        edi115 = edi115 + cf119;
                        tmp32_120 = reinterpret_cast<struct s9*>(reinterpret_cast<uint32_t>(eax116) + 1);
                        cf121 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_120) < reinterpret_cast<uint32_t>(eax116));
                        eax116 = tmp32_120;
                        edx117 = edx117 + cf121;
                    } while (!edx117 && reinterpret_cast<uint32_t>(eax116) < 4);
                    if (ecx114 != 4) 
                        goto addr_402701_71;
                    if (!edi115) 
                        goto addr_4026cb_73;
                    addr_402701_71:
                    ecx122 = 0;
                    edi123 = 0;
                    eax124 = reinterpret_cast<struct s10*>(0);
                    edx125 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax124) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax124) + reinterpret_cast<int32_t>("EFFE"))) 
                            break;
                        tmp32_126 = ecx122 + 1;
                        cf127 = reinterpret_cast<uint1_t>(tmp32_126 < ecx122);
                        ecx122 = tmp32_126;
                        edi123 = edi123 + cf127;
                        tmp32_128 = reinterpret_cast<struct s10*>(reinterpret_cast<uint32_t>(eax124) + 1);
                        cf129 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_128) < reinterpret_cast<uint32_t>(eax124));
                        eax124 = tmp32_128;
                        edx125 = edx125 + cf129;
                    } while (!edx125 && reinterpret_cast<uint32_t>(eax124) < 4);
                    if (ecx122 != 4) 
                        goto addr_402771_77;
                    if (!edi123) 
                        goto addr_40273b_79;
                    addr_402771_77:
                    ecx130 = 0;
                    edi131 = 0;
                    eax132 = reinterpret_cast<struct s11*>(0);
                    edx133 = 0;
                    do {
                        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp10) + reinterpret_cast<uint32_t>(eax132) - 0x2010c) != *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax132) + reinterpret_cast<int32_t>("MGLK"))) 
                            break;
                        tmp32_134 = ecx130 + 1;
                        cf135 = reinterpret_cast<uint1_t>(tmp32_134 < ecx130);
                        ecx130 = tmp32_134;
                        edi131 = edi131 + cf135;
                        tmp32_136 = reinterpret_cast<struct s11*>(reinterpret_cast<uint32_t>(eax132) + 1);
                        cf137 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_136) < reinterpret_cast<uint32_t>(eax132));
                        eax132 = tmp32_136;
                        edx133 = edx133 + cf137;
                    } while (!edx133 && reinterpret_cast<uint32_t>(eax132) < 4);
                    if (ecx130 != 4) 
                        goto addr_4027e1_83;
                    if (!edi131) 
                        goto addr_4027ab_85;
                    addr_4027e1_83:
                    al138 = fun_401e10(v56, v57);
                    if (!al138) {
                        ecx139 = reinterpret_cast<struct s0*>(ebp10 + 0xfffdfef4);
                        al140 = fun_401ea0(ecx139, ecx139, v56, v57);
                        if (!al140) {
                            al141 = fun_401f20(v56, v57);
                            if (!al141) {
                                al142 = fun_401f70(ecx139, v56);
                                if (!al142) {
                                    al143 = fun_401cf0(v57, ebp10 + 0xfffdfef4);
                                    if (!al143) {
                                        if (!reinterpret_cast<int1_t>(*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi52) + 0xfffffef3) == 0x228)) {
                                            edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                                            eax144 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                                            if ((v145 & 0xfffff000) != 0x27bdf000) {
                                                sprintf(eax144, "%s/UNSORTED/%05i.bin", edx29, v51);
                                                *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff00) = 0;
                                                goto addr_4029fe_21;
                                            } else {
                                                sprintf(eax144, "%s/MD1/%05i.md1", edx29, v51);
                                                strncat(esi52, " MODULE", 7, eax144, "%s/MD1/%05i.md1", edx29, v51);
                                                goto addr_4029fe_21;
                                            }
                                        } else {
                                            v146 = reinterpret_cast<void*>(ebp10 + 0xfffffef4);
                                            edx29 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                                            sprintf(edx29, "%s/X228/%05i.228", v146, v51);
                                            strncat(esi52, " X228", 5, edx29, "%s/X228/%05i.228", v146, v51);
                                            goto addr_4029fe_21;
                                        }
                                    } else {
                                        v147 = reinterpret_cast<void*>(ebp10 + 0xfffffef4);
                                        edx29 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                                        sprintf(edx29, "%s/AT3/%05i.at3", v147, v51);
                                        strncat(esi52, " __AT3", 6, edx29, "%s/AT3/%05i.at3", v147, v51);
                                        goto addr_4029fe_21;
                                    }
                                } else {
                                    edx29 = v51;
                                    v148 = reinterpret_cast<void*>(ebp10 + 0xfffffef4);
                                    v149 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                                    sprintf(v149, "%s/PAK3/%05i.pak3", v148, edx29);
                                    strncat(esi52, " PAK3", 5, v149, "%s/PAK3/%05i.pak3", v148, edx29);
                                    goto addr_4029fe_21;
                                }
                            } else {
                                edx29 = v51;
                                v150 = reinterpret_cast<void*>(ebp10 + 0xfffffef4);
                                v151 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                                sprintf(v151, "%s/PAK4/%05i.pak4", v150, edx29);
                                strncat(esi52, " PAK4", 5, v151, "%s/PAK4/%05i.pak4", v150, edx29);
                                goto addr_4029fe_21;
                            }
                        } else {
                            edx29 = v51;
                            v152 = reinterpret_cast<void*>(ebp10 + 0xfffffef4);
                            v153 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                            sprintf(v153, "%s/PAK0/%05i.pak0", v152, edx29);
                            strncat(esi52, " PAK0", 5, v153, "%s/PAK0/%05i.pak0", v152, edx29);
                            goto addr_4029fe_21;
                        }
                    } else {
                        edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                        v154 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                        sprintf(v154, "%s/PAK1/%05i.pak1", edx29, v51);
                        strncat(esi52, " PAK1", 5, v154, "%s/PAK1/%05i.pak1", edx29, v51);
                        goto addr_4029fe_21;
                    }
                    addr_4027ab_85:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v155 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v155, "%s/MGLK/%05i.mglk", edx29, v51);
                    strncat(esi52, " MGLK", 5, v155, "%s/MGLK/%05i.mglk", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40273b_79:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v156 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v156, "%s/EFFE/%05i.effe", edx29, v51);
                    strncat(esi52, " EFFE", 5, v156, "%s/EFFE/%05i.effe", edx29, v51);
                    goto addr_4029fe_21;
                    addr_4026cb_73:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v157 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v157, "%s/TDT/%05i.tdt", edx29, v51);
                    strncat(esi52, " iTDT", 5, v157, "%s/TDT/%05i.tdt", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40265b_67:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v158 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v158, "%s/TMD/%05i.tmd", edx29, v51);
                    strncat(esi52, " iTMD", 5, v158, "%s/TMD/%05i.tmd", edx29, v51);
                    goto addr_4029fe_21;
                    addr_4025eb_61:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v159 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v159, "%s/SDT/%05i.sdt", edx29, v51);
                    strncat(esi52, " isdt", 5, v159, "%s/SDT/%05i.sdt", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40257b_55:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v160 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v160, "%s/SE2/%05i.se2", edx29, v51);
                    strncat(esi52, " iSE2", 5, v160, "%s/SE2/%05i.se2", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40250b_49:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v161 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v161, "%s/TPK/%05i.tpk", edx29, v51);
                    strncat(esi52, " iTPK", 5, v161, "%s/TPK/%05i.tpk", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40249b_43:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v162 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v162, "%s/TIM2/%05i.tm2", edx29, v51);
                    strncat(esi52, " TIM2", 5, v162, "%s/TIM2/%05i.tm2", edx29, v51);
                    goto addr_4029fe_21;
                    addr_40242b_37:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v163 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v163, "%s/ELF/%05i.irx", edx29, v51);
                    strncat(esi52, " ELF", 4, v163, "%s/ELF/%05i.irx", edx29, v51);
                    goto addr_4029fe_21;
                    addr_4023b5_30:
                    edx29 = reinterpret_cast<struct s0*>(ebp10 + 0xfffffef4);
                    v164 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(esi52) + 0xffffff01);
                    sprintf(v164, "%s/%02i.mpg", edx29, v51);
                    strncat(esi52, " MPG", 4, v164, "%s/%02i.mpg", edx29, v51);
                    goto addr_4029fe_21;
                }
            }
            ebx165 = v20;
            if (!(reinterpret_cast<uint1_t>(reinterpret_cast<signed char>(v40) < reinterpret_cast<signed char>(0)) | reinterpret_cast<uint1_t>(v40 == 0))) {
                edi166 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(v31) + 26);
                v167 = v40;
                do {
                    if (*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(edi166) - 14)) {
                        printf("\n%s", edi166);
                        fun_401180("\n%s", edi166);
                        ecx168 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(edi166) - 18);
                        _fseeki64(ebx165, ecx168, 0, 0, "\n%s", edi166);
                        eax169 = reinterpret_cast<struct s0*>(fopen(edi166, "wb", ebx165, ecx168, 0, 0, "\n%s", edi166));
                        zf170 = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(edi166) - 2) == 0;
                        esi171 = eax169;
                        if (zf170) {
                            eax172 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(edi166) - 14);
                            __asm__("cdq ");
                            fun_401040(eax172, edx29, ebx165, esi171, v15, v13, v11, v8);
                        } else {
                            ebx173 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(edi166) - 14);
                            eax174 = fun_4088ba(ebx173, v15, v13, v11, v8, v7, a2, a3, a4, a5);
                            fread(eax174, ebx173, 1, v20);
                            fun_401940(ebp10 + 0xfffdfed4, ebp10 + 0xfffdfee0, eax174, ebx173, 1, v20);
                            edx29 = v175;
                            fwrite(v44, edx29, 1, esi171);
                            ebx176 = _V_YAXPAX_Z;
                            ebx176(v44, v44, edx29, 1, esi171);
                            ebx176(eax174);
                            esi171 = esi171;
                            ebx165 = v20;
                        }
                        fclose(esi171);
                    }
                    edi166 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi166) + 0x310);
                    v167 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v167) - 1);
                } while (v167);
            }
            _V_YAXPAX_Z(v31);
            esi177 = fclose;
            esi177(ebx165);
            esi177(v18);
            al178 = fun_4088c5(reinterpret_cast<unsigned char>(v13) ^ reinterpret_cast<uint32_t>(ebp10), v8);
            return al178;
        } else {
            printf("\nCan't open file %s", ecx);
            al179 = fun_4088c5(reinterpret_cast<unsigned char>(v13) ^ reinterpret_cast<uint32_t>(ebp10), v8);
            return al179;
        }
    } else {
        printf("\nCan't open file %s", a2);
        al180 = fun_4088c5(reinterpret_cast<unsigned char>(v13) ^ reinterpret_cast<uint32_t>(ebp10), v8);
        return al180;
    }
}

int32_t _ftelli64 = 0xebb4;

int32_t fseek = 0xed22;

int32_t fputc = 0xebc0;

signed char fun_402b70(struct s0* ecx, struct s0* a2) {
    void* ebp3;
    uint32_t eax4;
    uint32_t v5;
    struct s0* v6;
    struct s0* ebx7;
    struct s0* v8;
    struct s0* esi9;
    struct s0* v10;
    struct s0* edi11;
    struct s0* v12;
    int32_t eax13;
    int32_t v14;
    struct s0* eax15;
    struct s0* ebx16;
    struct s0* v17;
    int32_t edi18;
    int32_t eax19;
    uint32_t eax20;
    int32_t esi21;
    uint32_t edx22;
    int32_t v23;
    int32_t eax24;
    int32_t ecx25;
    struct s0* v26;
    struct s0* v27;
    struct s0* v28;
    struct s0* v29;
    struct s0* eax30;
    int32_t edi31;
    struct s0* v32;
    int16_t* esi33;
    uint32_t v34;
    uint32_t* ebx35;
    uint32_t eax36;
    uint32_t ecx37;
    int32_t eax38;
    struct s2* esi39;
    int32_t v40;
    int32_t edx41;
    int32_t eax42;
    int32_t eax43;
    int32_t edi44;
    void* v45;
    int32_t v46;
    struct s0* eax47;
    struct s0* v48;
    int32_t eax49;
    int32_t ebx50;
    void* esi51;
    uint32_t eax52;
    void* v53;
    struct s0* eax54;
    struct s0* edi55;
    void* v56;
    struct s0* eax57;
    void* v58;
    struct s0* eax59;
    void* v60;
    struct s0* eax61;
    void* v62;
    struct s0* eax63;
    void* v64;
    struct s0* eax65;
    void* v66;
    struct s0* eax67;
    void* v68;
    struct s0* eax69;
    void* v70;
    struct s0* eax71;
    void* v72;
    struct s0* eax73;
    void* v74;
    struct s0* eax75;
    void* v76;
    struct s0* eax77;
    void* v78;
    struct s0* eax79;
    void* v80;
    struct s0* eax81;
    void* v82;
    struct s0* eax83;
    void* v84;
    struct s0* eax85;
    void* v86;
    struct s0* eax87;
    void* v88;
    struct s0* eax89;
    struct s0* eax90;
    struct s0* eax91;
    struct s0* eax92;
    int1_t zf93;
    int32_t eax94;
    struct s0* eax95;
    struct s0* v96;
    int32_t eax97;
    struct s0* eax98;
    struct s0* v99;
    struct s0* v100;
    struct s0* v101;
    struct s0* v102;
    struct s0* eax103;
    struct s0* edx104;
    struct s0* eax105;
    struct s0* v106;
    struct s0* v107;
    struct s0* v108;
    struct s0* eax109;
    struct s0* eax110;
    struct s0* ecx111;
    void* eax112;
    uint32_t eax113;
    uint32_t v114;
    uint32_t eax115;
    struct s0* eax116;
    int32_t ebx117;
    int32_t eax118;
    int32_t edi119;
    struct s0* esi120;
    int32_t v121;
    struct s0* v122;
    signed char al123;
    struct s0* v124;
    signed char al125;
    struct s0* v126;
    signed char al127;

    ebp3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax4 = g410020;
    v5 = eax4 ^ reinterpret_cast<uint32_t>(ebp3);
    v6 = ebx7;
    v8 = esi9;
    v10 = edi11;
    v12 = a2;
    fun_401110(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8);
    sprintf(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf8, "new_%s", ecx);
    eax13 = reinterpret_cast<int32_t>(fopen(a2, "rb"));
    v14 = eax13;
    if (eax13) {
        eax15 = reinterpret_cast<struct s0*>(fopen(ecx, "rb"));
        ebx16 = eax15;
        v17 = ebx16;
        if (ebx16) {
            edi18 = _fileno;
            eax19 = reinterpret_cast<int32_t>(edi18(eax13));
            eax20 = reinterpret_cast<uint32_t>(_filelength(eax19));
            __asm__("cdq ");
            esi21 = reinterpret_cast<int32_t>((edx22 & 7) + eax20) >> 3;
            v23 = esi21;
            eax24 = reinterpret_cast<int32_t>(edi18(ebx16));
            _filelength(eax24);
            ecx25 = 0;
            *reinterpret_cast<unsigned char*>(&ecx25) = __intrinsic();
            eax30 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx25) | esi21 * 0x310, v10, v8, v6, v26, v27, v12, v28, v29, v17);
            edi31 = 0;
            v32 = eax30;
            if (!(reinterpret_cast<uint1_t>(esi21 < 0) | reinterpret_cast<uint1_t>(esi21 == 0))) {
                esi33 = reinterpret_cast<int16_t*>(reinterpret_cast<unsigned char>(eax30) + 24);
                do {
                    v34 = reinterpret_cast<uint32_t>(esi33) + 0x101;
                    sprintf(v34, 0x40df57);
                    ebx35 = reinterpret_cast<uint32_t*>(esi33 - 12);
                    fread(ebx35, 8, 1, v14, v34, 0x40df57);
                    eax36 = *ebx35 & 63;
                    ecx37 = *ebx35 - eax36;
                    *esi33 = 0x100;
                    *reinterpret_cast<uint32_t*>(esi33 - 4) = eax36;
                    *reinterpret_cast<uint32_t*>(esi33 - 8) = ecx37;
                    if (edi31) {
                        *reinterpret_cast<uint32_t*>(esi33 - 0x18e) = ecx37 - *reinterpret_cast<int32_t*>(esi33 - 0x190) - *reinterpret_cast<int32_t*>(esi33 - 0x18c);
                    }
                    ++edi31;
                    esi33 = esi33 + 0x188;
                } while (edi31 < v23);
                ebx16 = v17;
                esi21 = v23;
            }
            printf("\nPlease wait...\n");
            eax38 = esi21 - 1;
            if (!(reinterpret_cast<uint1_t>(eax38 < 0) | reinterpret_cast<uint1_t>(eax38 == 0))) {
                esi39 = reinterpret_cast<struct s2*>(reinterpret_cast<unsigned char>(v32) + 12);
                v40 = eax38;
                while (1) {
                    if (!esi39->f0) 
                        goto addr_402dbc_12;
                    edx41 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi39) - 4);
                    _fseeki64(ebx16, edx41, 0, 0);
                    eax42 = reinterpret_cast<int32_t>(fgetc(ebx16, ebx16, edx41, 0, 0));
                    if (eax42 == 1 || eax42 == 3) {
                        esi39->f8 = eax42;
                        fread(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf4, 4, 1, ebx16);
                        eax43 = eax42;
                    } else {
                        if (eax42 || (edi44 = fread, esi39->f8 = eax42, v45 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf4), edi44(v45, 4, 1, ebx16), edi44(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdc4, 4, 1, ebx16, v45, 4, 1, ebx16), eax43 = eax42, eax43 != v46)) {
                            addr_402dbc_12:
                            esi39 = reinterpret_cast<struct s2*>(reinterpret_cast<uint32_t>(esi39) + 0x310);
                            --v40;
                            if (v40) 
                                continue; else 
                                break;
                        }
                    }
                    if (eax43 + 9 == esi39->f0) {
                        esi39->f12 = 1;
                        goto addr_402dbc_12;
                    }
                }
            }
            eax47 = reinterpret_cast<struct s0*>(fopen(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf8, "wb"));
            v48 = eax47;
            eax49 = v23 - 1;
            ebx50 = 0;
            if (!(reinterpret_cast<uint1_t>(eax49 < 0) | reinterpret_cast<uint1_t>(eax49 == 0))) {
                esi51 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(v32) + 26);
                do {
                    if (!*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 14)) {
                        eax52 = reinterpret_cast<uint32_t>(_ftelli64(v48));
                        *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 26) = eax52;
                    } else {
                        v53 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8);
                        sprintf(esi51, "%s_FILES/%05i.mpg", v53, ebx50);
                        eax54 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.mpg", v53, ebx50));
                        edi55 = eax54;
                        if (!edi55 && ((v56 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.irx", v56, ebx50), eax57 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.irx", v56, ebx50)), edi55 = eax57, !edi55) && ((v58 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.tm2", v58, ebx50), eax59 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.tm2", v58, ebx50)), edi55 = eax59, !edi55) && ((v60 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.tpk", v60, ebx50), eax61 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.tpk", v60, ebx50)), edi55 = eax61, !edi55) && ((v62 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.se2", v62, ebx50), eax63 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.se2", v62, ebx50)), edi55 = eax63, !edi55) && ((v64 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.sdt", v64, ebx50), eax65 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.sdt", v64, ebx50)), edi55 = eax65, !edi55) && ((v66 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.tmd", v66, ebx50), eax67 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.tmd", v66, ebx50)), edi55 = eax67, !edi55) && ((v68 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.tdt", v68, ebx50), eax69 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.tdt", v68, ebx50)), edi55 = eax69, !edi55) && ((v70 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.effe", v70, ebx50), eax71 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.effe", v70, ebx50)), edi55 = eax71, !edi55) && ((v72 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.mglk", v72, ebx50), eax73 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.mglk", v72, ebx50)), edi55 = eax73, !edi55) && ((v74 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.pak1", v74, ebx50), eax75 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.pak1", v74, ebx50)), edi55 = eax75, !edi55) && ((v76 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.pak0", v76, ebx50), eax77 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.pak0", v76, ebx50)), edi55 = eax77, !edi55) && ((v78 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.pak4", v78, ebx50), eax79 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.pak4", v78, ebx50)), edi55 = eax79, !edi55) && ((v80 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.pak3", v80, ebx50), eax81 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.pak3", v80, ebx50)), edi55 = eax81, !edi55) && ((v82 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.at3", v82, ebx50), eax83 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.at3", v82, ebx50)), edi55 = eax83, !edi55) && ((v84 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.228", v84, ebx50), eax85 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.228", v84, ebx50)), edi55 = eax85, !edi55) && (v86 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8), sprintf(esi51, "%s_FILES/%05i.md1", v86, ebx50), eax87 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.md1", v86, ebx50)), edi55 = eax87, !edi55))))))))))))))))) {
                            v88 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp3) + 0xfffffef8);
                            sprintf(esi51, "%s_FILES/%05i.bin", v88, ebx50);
                            eax89 = reinterpret_cast<struct s0*>(fopen(esi51, "rb", esi51, "%s_FILES/%05i.bin", v88, ebx50));
                            edi55 = eax89;
                        }
                        eax90 = reinterpret_cast<struct s0*>(_ftelli64(v48));
                        if (!edi55) {
                            eax91 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 18);
                            _fseeki64(v17, eax91, 0, 0);
                            eax92 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 14);
                            __asm__("cdq ");
                            fun_401040(eax92, v48, v17, v48, v17, eax91, 0, 0);
                            *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 18) = eax90;
                        } else {
                            printf("\n+ %s", esi51);
                            zf93 = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(esi51) - 2) == 0;
                            *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 18) = eax90;
                            if (zf93) {
                                eax94 = reinterpret_cast<int32_t>(_fileno(edi55));
                                eax95 = reinterpret_cast<struct s0*>(_filelength(eax94));
                                *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 14) = eax95;
                                __asm__("cdq ");
                                fun_401040(eax95, v48, edi55, v48, v10, v8, v6, v96);
                                fseek(edi55, 5, 0, eax95, v48, edi55, v48);
                                fread(reinterpret_cast<uint32_t>(esi51) - 22, 4, 1, edi55);
                                fclose(edi55);
                            } else {
                                eax97 = reinterpret_cast<int32_t>(_fileno(edi55));
                                eax98 = reinterpret_cast<struct s0*>(_filelength(eax97));
                                eax103 = fun_4088ba(eax98, v10, v8, v6, v99, v100, v12, v101, v102, v17);
                                fread(eax103, eax98, 1, edi55);
                                edx104 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 6);
                                v102 = edx104;
                                __asm__("cdq ");
                                eax105 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(eax98) + reinterpret_cast<unsigned char>(eax98) * 8 + (reinterpret_cast<unsigned char>(edx104) & 7)) >> 3);
                                v106 = eax105;
                                eax109 = fun_4088ba(&eax105->f8, eax103, eax98, 1, edi55, v10, v8, v6, v107, v108);
                                v101 = eax109;
                                if (v102) {
                                    fun_401490(eax103, v102, eax98, reinterpret_cast<uint32_t>(ebp3) + 0xfffffdd8);
                                } else {
                                    v106 = eax98;
                                    fun_408ca6(eax98, &eax109->f8, eax103, eax98, v10, v8);
                                }
                                *reinterpret_cast<struct s0**>(&v101->f0) = v102;
                                v101->f1 = v106;
                                *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v101) + 5) = eax98;
                                eax110 = reinterpret_cast<struct s0*>(&v106->f8);
                                *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 14) = eax110;
                                fwrite(v101, eax110, 1, v48);
                                ecx111 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v101) + 5);
                                *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 22) = ecx111;
                                _V_YAXPAX_Z(v101, v101, eax110, 1, v48);
                                _V_YAXPAX_Z(eax103);
                                fclose(edi55);
                            }
                        }
                        eax112 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 18)) + reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 14)));
                        eax113 = reinterpret_cast<uint32_t>(eax112) & 63;
                        if (!eax113) {
                            *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 10) = 0;
                        } else {
                            *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 10) = 64 - eax113;
                        }
                        *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 26) = reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(esi51) - 18)) + *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 10);
                        v114 = 0;
                        if (*reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 10) > 0) {
                            do {
                                fputc(0, v48);
                                eax115 = v114 + 1;
                                v114 = eax115;
                            } while (eax115 < *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi51) - 10));
                        }
                    }
                    ++ebx50;
                    esi51 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi51) + 0x310);
                } while (ebx50 < v23 - 1);
            }
            eax116 = reinterpret_cast<struct s0*>(_ftelli64(v48));
            *reinterpret_cast<struct s0**>(ebx50 * 0x310 + reinterpret_cast<unsigned char>(v32)) = eax116;
            ebx117 = fclose;
            ebx117(v14);
            sprintf(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf8, "new_%s", v12);
            eax118 = reinterpret_cast<int32_t>(fopen(reinterpret_cast<uint32_t>(ebp3) + 0xfffffdf8, "wb"));
            edi119 = eax118;
            if (!(reinterpret_cast<uint1_t>(v23 < 0) | reinterpret_cast<uint1_t>(v23 == 0))) {
                esi120 = v32;
                v121 = v23;
                do {
                    fwrite(esi120, 8, 1, edi119);
                    esi120 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi120) + 0x310);
                    --v121;
                } while (v121);
            }
            ebx117(v17);
            ebx117(v48);
            ebx117(edi119);
            _V_YAXPAX_Z(v32);
            al123 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v122);
            return al123;
        } else {
            printf("\nCan't open file %s", ecx);
            al125 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v124);
            return al125;
        }
    } else {
        printf("\nCan't open file %s", a2);
        al127 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v126);
        return al127;
    }
}

int32_t ftell = 0xed04;

struct s12 {
    signed char[4] pad4;
    uint32_t f4;
    signed char[8] pad16;
    int32_t f16;
};

struct s13 {
    signed char[4] pad4;
    uint32_t f4;
    uint32_t f8;
    int32_t f12;
};

struct s14 {
    struct s0* f0;
    signed char[3] pad4;
    struct s0* f4;
    signed char[7] pad12;
    int32_t f12;
};

signed char fun_403f50(struct s0* ecx) {
    void* ebp2;
    uint32_t eax3;
    uint32_t v4;
    struct s0* v5;
    struct s0* ebx6;
    struct s0* v7;
    struct s0* esi8;
    struct s0* v9;
    struct s0* edi10;
    struct s0* eax11;
    struct s0* esi12;
    int32_t eax13;
    int32_t ebx14;
    struct s0* v15;
    int32_t ecx16;
    uint16_t v17;
    struct s0* v18;
    struct s0* v19;
    struct s0* eax20;
    struct s0* v21;
    uint32_t edi22;
    uint16_t v23;
    struct s0* v24;
    uint16_t v25;
    void* eax26;
    struct s0* v27;
    void* v28;
    int32_t ecx29;
    int32_t v30;
    struct s0* v31;
    struct s0* v32;
    struct s0* eax33;
    struct s0* v34;
    int32_t v35;
    int32_t v36;
    void* edi37;
    uint32_t eax38;
    int1_t zf39;
    uint32_t edx40;
    int32_t eax41;
    int32_t v42;
    uint32_t v43;
    void* v44;
    void* v45;
    int32_t v46;
    void* v47;
    int32_t v48;
    int32_t v49;
    int32_t v50;
    uint16_t v51;
    void* eax52;
    uint32_t* edi53;
    uint32_t edx54;
    int1_t zf55;
    uint32_t ecx56;
    uint32_t ecx57;
    uint16_t v58;
    void* edi59;
    void* v60;
    void* v61;
    int32_t ecx62;
    int32_t eax63;
    void* eax64;
    void* v65;
    uint32_t v66;
    uint16_t v67;
    void* edi68;
    int32_t edx69;
    int32_t eax70;
    uint32_t eax71;
    uint16_t v72;
    int32_t v73;
    int32_t v74;
    void* edi75;
    struct s0* eax76;
    int32_t eax77;
    uint32_t ecx78;
    uint32_t v79;
    int32_t eax80;
    int32_t v81;
    void* v82;
    uint32_t v83;
    int32_t edx84;
    struct s12* eax85;
    uint32_t ecx86;
    uint32_t ecx87;
    uint32_t ecx88;
    void* v89;
    uint32_t ecx90;
    uint32_t v91;
    uint32_t eax92;
    int1_t zf93;
    int32_t eax94;
    int32_t v95;
    uint32_t v96;
    uint16_t v97;
    void* edi98;
    struct s0* eax99;
    int32_t edx100;
    uint32_t ecx101;
    int32_t edx102;
    int32_t v103;
    void* v104;
    uint32_t v105;
    int32_t ecx106;
    struct s13* eax107;
    uint32_t ecx108;
    uint32_t ecx109;
    uint32_t ecx110;
    void* v111;
    uint32_t ecx112;
    uint32_t v113;
    uint32_t eax114;
    int1_t zf115;
    uint32_t eax116;
    uint16_t v117;
    struct s0* edi118;
    struct s0* v119;
    struct s0* v120;
    struct s0* v121;
    struct s0* v122;
    int32_t edx123;
    struct s0* v124;
    struct s0* ecx125;
    struct s0* v126;
    struct s0* eax127;
    struct s0* v128;
    struct s0* eax129;
    struct s0* v130;
    struct s0* edi131;
    struct s0* v132;
    struct s0* v133;
    struct s0* eax134;
    void* v135;
    void* eax136;
    void* v137;
    void* v138;
    void* v139;
    struct s0* eax140;
    struct s0* eax141;
    struct s0* v142;
    struct s0* v143;
    struct s0* eax144;
    struct s0* eax145;
    struct s0* v146;
    struct s0* eax147;
    struct s0* v148;
    uint16_t v149;
    struct s0* edx150;
    struct s14* eax151;
    struct s0* v152;
    struct s0* ecx153;
    struct s0* v154;
    struct s0* eax155;
    struct s0* eax156;
    struct s0* edi157;
    struct s0* v158;
    struct s0* eax159;
    void* v160;
    void* edx161;
    void* v162;
    void* v163;
    void* v164;
    struct s0* eax165;
    struct s0* eax166;
    struct s0* v167;
    struct s0* eax168;
    uint16_t v169;
    int32_t esi170;
    struct s0* v171;
    signed char al172;

    ebp2 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax3 = g410020;
    v4 = eax3 ^ reinterpret_cast<uint32_t>(ebp2);
    v5 = ebx6;
    v7 = esi8;
    v9 = edi10;
    fun_401110(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
    eax11 = reinterpret_cast<struct s0*>(fopen(ecx, "rb"));
    esi12 = eax11;
    eax13 = reinterpret_cast<int32_t>(_fileno(esi12, ecx, "rb"));
    _filelength(eax13);
    ebx14 = fread;
    v15 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcbc);
    ebx14(v15, 40, 1, esi12);
    ecx16 = 0;
    *reinterpret_cast<unsigned char*>(&ecx16) = __intrinsic();
    eax20 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx16) | v17 * 0x110, v15, 40, 1, esi12, v9, v7, v5, v18, v19);
    v21 = eax20;
    edi22 = 0;
    if (0 < v23) {
        v24 = reinterpret_cast<struct s0*>(0);
        do {
            ebx14(reinterpret_cast<unsigned char>(v24) + reinterpret_cast<unsigned char>(v21) + 4, 4, 1, esi12);
            v24 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v24) + 0x110);
            ++edi22;
        } while (reinterpret_cast<int32_t>(edi22) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v25)));
    }
    eax26 = reinterpret_cast<void*>(ftell(esi12));
    v27 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffce8);
    v28 = eax26;
    ebx14(v27, 4, 1, esi12);
    ecx29 = 0;
    *reinterpret_cast<unsigned char*>(&ecx29) = __intrinsic();
    eax33 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx29) | reinterpret_cast<uint32_t>((v30 + 1) * 0x114), v27, 4, 1, esi12, v9, v7, v5, v31, v32);
    v34 = eax33;
    v35 = 0;
    if (v36 > 0) {
        edi37 = reinterpret_cast<void*>(0);
        do {
            ebx14(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34), 8, 1, esi12);
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34)) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34)) + reinterpret_cast<uint32_t>(v28);
            eax38 = *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34) + 4) & 0x80000003;
            zf39 = eax38 == 0;
            if (__intrinsic()) {
                eax38 = (eax38 - 1 | 0xfffffffc) + 1;
                zf39 = eax38 == 0;
            }
            if (zf39) {
                edx40 = 0;
            } else {
                edx40 = 4 - eax38;
            }
            edi37 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(edi37) + 0x114);
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34) - 0x10c) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34) + 4) + *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi37) + reinterpret_cast<unsigned char>(v34)) + edx40;
            eax41 = v35 + 1;
            v35 = eax41;
        } while (eax41 < v42);
    }
    v43 = 1;
    *reinterpret_cast<struct s0**>(&v21->f0) = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(v44) + reinterpret_cast<int32_t>(v45) + reinterpret_cast<uint32_t>(v28));
    *reinterpret_cast<struct s0**>(v46 * 0x114 + reinterpret_cast<unsigned char>(v34)) = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(v47) + reinterpret_cast<uint32_t>(v28));
    *reinterpret_cast<struct s0**>(v48 * 0x114 + reinterpret_cast<unsigned char>(v34) + 8) = *reinterpret_cast<struct s0**>(&v21->f0);
    *reinterpret_cast<int32_t*>(v49 * 0x114 + reinterpret_cast<unsigned char>(v34) + 4) = v50;
    if (1 < v51) {
        eax52 = reinterpret_cast<void*>(0x110);
        do {
            edi53 = reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(eax52) + reinterpret_cast<unsigned char>(v21) - 0x10c);
            edx54 = *edi53 & 0x80000003;
            zf55 = edx54 == 0;
            if (__intrinsic()) {
                edx54 = (edx54 - 1 | 0xfffffffc) + 1;
                zf55 = edx54 == 0;
            }
            if (zf55) {
                ecx56 = 0;
            } else {
                ecx56 = 4 - edx54;
            }
            eax52 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(eax52) + 0x110);
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(eax52) + reinterpret_cast<unsigned char>(v21) - 0x110) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax52) + reinterpret_cast<unsigned char>(v21) - 0x110) + *edi53 + ecx56;
            ecx57 = v43 + 1;
            v43 = ecx57;
        } while (reinterpret_cast<int32_t>(ecx57) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v58)));
    }
    edi59 = reinterpret_cast<void*>(0);
    v60 = reinterpret_cast<void*>(0);
    if (reinterpret_cast<int32_t>(v61) > 0) {
        do {
            ecx62 = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi59) + reinterpret_cast<unsigned char>(v34));
            fseek(esi12, ecx62, 0);
            eax63 = reinterpret_cast<int32_t>(fgetc(esi12));
            *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi59) + reinterpret_cast<unsigned char>(v34) + 12) = eax63;
            eax64 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(v60) + 1);
            edi59 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(edi59) + 0x114);
            v60 = eax64;
        } while (reinterpret_cast<int32_t>(eax64) < reinterpret_cast<int32_t>(v65));
    }
    v66 = 0;
    if (0 < v67) {
        edi68 = reinterpret_cast<void*>(0);
        do {
            edx69 = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi68) + reinterpret_cast<unsigned char>(v21));
            fseek(esi12, edx69, 0);
            eax70 = reinterpret_cast<int32_t>(fgetc(esi12));
            *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(edi68) + reinterpret_cast<unsigned char>(v21) + 8) = eax70;
            eax71 = v66 + 1;
            edi68 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(edi68) + 0x110);
            v66 = eax71;
        } while (reinterpret_cast<int32_t>(eax71) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v72)));
    }
    v73 = 0;
    if (v74 > 0) {
        edi75 = reinterpret_cast<void*>(0);
        do {
            eax76 = v34;
            if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 4) >= 8) {
                if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 12) == 1 || *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 12) == 3) {
                    eax77 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76));
                    fseek(esi12, eax77 + 1, 0);
                    ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4, 4, 1, esi12);
                    eax76 = v34;
                    ecx78 = v79 + 9;
                    v79 = ecx78;
                } else {
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 12)) 
                        goto addr_404373_32;
                    eax80 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76));
                    v81 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 12);
                    fseek(esi12, eax80 + 1, v81);
                    v82 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4);
                    ebx14(v82, 4, 1, esi12);
                    ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffc9c, 4, 1, esi12, v82, 4, 1, esi12);
                    eax76 = v34;
                    if (v79 != v83) 
                        goto addr_404373_32;
                    ecx78 = v79 + 9;
                }
                if (ecx78 != *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 4)) {
                    addr_404373_32:
                    edx84 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76));
                    fseek(esi12, edx84, 0);
                    ebx14(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(v34) + 12, 4, 1, esi12);
                    eax85 = reinterpret_cast<struct s12*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(v34));
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(v34) + 12) >= reinterpret_cast<int32_t>(0xff) || (ecx86 = *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(v34) + 12) + *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(v34) + 12), ecx87 = ecx86 + ecx86, ecx88 = ecx87 + ecx87, reinterpret_cast<int32_t>(ecx88) >= reinterpret_cast<int32_t>(eax85->f4))) {
                        addr_404432_36:
                        eax85->f16 = 0;
                        continue;
                    } else {
                        fseek(esi12, ecx88 + 0xfffffff8, 1);
                        v89 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4);
                        ebx14(v89, 4, 1, esi12);
                        ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcac, 4, 1, esi12, v89, 4, 1, esi12);
                        ecx90 = v79 + v91;
                        eax92 = ecx90 & 0x80000003;
                        zf93 = eax92 == 0;
                        v79 = ecx90;
                        if (__intrinsic()) {
                            eax92 = (eax92 - 1 | 0xfffffffc) + 1;
                            zf93 = eax92 == 0;
                        }
                        if (!zf93) {
                            ecx90 = ecx90 + (4 - eax92);
                            v79 = ecx90;
                        }
                        eax85 = reinterpret_cast<struct s12*>(reinterpret_cast<unsigned char>(v34) + reinterpret_cast<uint32_t>(edi75));
                        if (ecx90 != eax85->f4) 
                            goto addr_404432_36;
                    }
                } else {
                    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 16) = 1;
                    continue;
                }
            } else {
                *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi75) + reinterpret_cast<unsigned char>(eax76) + 16) = 0;
                continue;
            }
            eax85->f16 = 2;
            eax94 = v73 + 1;
            edi75 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi75) + 0x114);
            v73 = eax94;
        } while (eax94 < v95);
    }
    v96 = 0;
    if (0 < v97) {
        edi98 = reinterpret_cast<void*>(0);
        do {
            eax99 = v21;
            if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 4) >= 8) {
                if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 8) == 1 || *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 8) == 3) {
                    edx100 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99));
                    fseek(esi12, edx100 + 1, 0);
                    ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4, 4, 1, esi12);
                    eax99 = v21;
                    ecx101 = v79 + 9;
                    v79 = ecx101;
                } else {
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 8)) 
                        goto addr_404535_52;
                    edx102 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99));
                    v103 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 8);
                    fseek(esi12, edx102 + 1, v103);
                    v104 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4);
                    ebx14(v104, 4, 1, esi12);
                    ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffc9c, 4, 1, esi12, v104, 4, 1, esi12);
                    eax99 = v21;
                    if (v79 != v105) 
                        goto addr_404535_52;
                    ecx101 = v79 + 9;
                }
                if (ecx101 != *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 4)) {
                    addr_404535_52:
                    ecx106 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99));
                    fseek(esi12, ecx106, 0);
                    ebx14(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(v21) + 8, 4, 1, esi12);
                    eax107 = reinterpret_cast<struct s13*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(v21));
                    if (reinterpret_cast<int32_t>(eax107->f8) >= reinterpret_cast<int32_t>(0xff) || (ecx108 = eax107->f8 + eax107->f8, ecx109 = ecx108 + ecx108, ecx110 = ecx109 + ecx109, reinterpret_cast<int32_t>(ecx110) >= reinterpret_cast<int32_t>(eax107->f4))) {
                        addr_4045f3_56:
                        eax107->f12 = 0;
                        continue;
                    } else {
                        fseek(esi12, ecx110 + 0xfffffff8, 1);
                        v111 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcb4);
                        ebx14(v111, 4, 1, esi12);
                        ebx14(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcac, 4, 1, esi12, v111, 4, 1, esi12);
                        ecx112 = v79 + v113;
                        eax114 = ecx112 & 0x80000003;
                        zf115 = eax114 == 0;
                        v79 = ecx112;
                        if (__intrinsic()) {
                            eax114 = (eax114 - 1 | 0xfffffffc) + 1;
                            zf115 = eax114 == 0;
                        }
                        if (!zf115) {
                            ecx112 = ecx112 + (4 - eax114);
                            v79 = ecx112;
                        }
                        eax107 = reinterpret_cast<struct s13*>(reinterpret_cast<unsigned char>(v21) + reinterpret_cast<uint32_t>(edi98));
                        if (ecx112 != eax107->f4) 
                            goto addr_4045f3_56;
                    }
                } else {
                    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 12) = 1;
                    continue;
                }
            } else {
                *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(edi98) + reinterpret_cast<unsigned char>(eax99) + 12) = 0;
                continue;
            }
            eax107->f12 = 2;
            eax116 = v96 + 1;
            edi98 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi98) + 0x110);
            v96 = eax116;
        } while (reinterpret_cast<int32_t>(eax116) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v117)));
    }
    _mkdir(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
    edi118 = v119;
    v120 = reinterpret_cast<struct s0*>(0);
    if (reinterpret_cast<signed char>(v121) > reinterpret_cast<signed char>(0)) {
        v122 = reinterpret_cast<struct s0*>(0);
        do {
            edx123 = *reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34));
            fseek(esi12, edx123, 0);
            if (*reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34) + 16) != 2) {
                if (*reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34) + 16) != 1) {
                    fun_4037b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    v124 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    ecx125 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                    v126 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                    sprintf(v126, "%s/%s_%02i.%s", ecx125, ecx125, v120, v124);
                    eax127 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34) + 4);
                    v128 = eax127;
                    eax129 = fun_4088ba(eax127, v126, "%s/%s_%02i.%s", ecx125, ecx125, v120, v124, v9, v7, v5);
                    edi118 = eax129;
                    v130 = edi118;
                    ebx14(edi118, v128, 1, esi12);
                } else {
                    edi131 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34) + 4);
                    eax134 = fun_4088ba(edi131, v9, v7, v5, v132, v122, v130, v128, v133, v24);
                    ebx14(eax134, edi131, 1, esi12);
                    fun_401940(reinterpret_cast<uint32_t>(ebp2) + 0xfffffca8, reinterpret_cast<uint32_t>(ebp2) + 0xfffffca4, eax134, edi131, 1, esi12);
                    edi118 = v130;
                    fun_4037b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    v135 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    eax136 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                    v137 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                    sprintf(v137, "%s/%s_%02i.%s", eax136, eax136, v120, v135);
                    _V_YAXPAX_Z(eax134, v137, "%s/%s_%02i.%s", eax136, eax136, v120, v135);
                }
                v138 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                printf("\n%s", v138);
                v139 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                eax140 = reinterpret_cast<struct s0*>(fopen(v139, "wb", "\n%s", v138));
                v24 = eax140;
                fwrite(edi118, v128, 1, eax140, v139, "wb", "\n%s", v138);
                fclose(v24, edi118, v128, 1, eax140, v139, "wb", "\n%s", v138);
            } else {
                eax141 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v122) + reinterpret_cast<unsigned char>(v34) + 4);
                v128 = eax141;
                eax144 = fun_4088ba(eax141, v9, v7, v5, v142, v122, v130, v128, v143, v24);
                edi118 = eax144;
                v130 = edi118;
                ebx14(edi118, v128, 1, esi12);
                fun_4039b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8, v120, edi118, v128, 1, esi12);
            }
            _V_YAXPAX_Z(edi118);
            v122 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v122) + 0x114);
            eax145 = reinterpret_cast<struct s0*>(&v120->f1);
            v120 = eax145;
        } while (reinterpret_cast<signed char>(eax145) < reinterpret_cast<signed char>(v146));
    }
    eax147 = reinterpret_cast<struct s0*>(0);
    v148 = reinterpret_cast<struct s0*>(0);
    if (0 < v149) {
        do {
            edx150 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(eax147) * 0x110 + reinterpret_cast<unsigned char>(v21));
            fseek(esi12, edx150, 0);
            eax151 = reinterpret_cast<struct s14*>(reinterpret_cast<unsigned char>(v148) * 0x110 + reinterpret_cast<unsigned char>(v21));
            if (eax151->f12 != 2) {
                if (eax151->f12 != 1) {
                    fun_4037b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    v152 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    ecx153 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                    v154 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                    sprintf(v154, "%s/%s_%02i.%s", ecx153, ecx153, reinterpret_cast<unsigned char>(v148) + reinterpret_cast<unsigned char>(v120), v152);
                    eax155 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v148) * 0x110 + reinterpret_cast<unsigned char>(v21) + 4);
                    v128 = eax155;
                    eax156 = fun_4088ba(eax155, v154, "%s/%s_%02i.%s", ecx153, ecx153, reinterpret_cast<unsigned char>(v148) + reinterpret_cast<unsigned char>(v120), v152, v9, v7, v5);
                    edi118 = eax156;
                    v130 = edi118;
                    ebx14(edi118, v128, 1, esi12);
                } else {
                    edi157 = eax151->f4;
                    eax159 = fun_4088ba(edi157, v9, v7, v5, v158, v122, v130, v128, v148, v24);
                    ebx14(eax159, edi157, 1, esi12);
                    fun_401940(reinterpret_cast<uint32_t>(ebp2) + 0xfffffca8, reinterpret_cast<uint32_t>(ebp2) + 0xfffffca4, eax159, edi157, 1, esi12);
                    edi118 = v130;
                    fun_4037b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    v160 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffcf8);
                    edx161 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                    v162 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                    sprintf(v162, "%s/%s_%02i.%s", edx161, edx161, reinterpret_cast<unsigned char>(v148) + reinterpret_cast<unsigned char>(v120), v160);
                    _V_YAXPAX_Z(eax159, v162, "%s/%s_%02i.%s", edx161, edx161, reinterpret_cast<unsigned char>(v148) + reinterpret_cast<unsigned char>(v120), v160);
                }
                v163 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                printf("\n%s", v163);
                v164 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
                eax165 = reinterpret_cast<struct s0*>(fopen(v164, "wb", "\n%s", v163));
                v24 = eax165;
                fwrite(edi118, v128, 1, eax165, v164, "wb", "\n%s", v163);
                fclose(v24, edi118, v128, 1, eax165, v164, "wb", "\n%s", v163);
            } else {
                eax166 = eax151->f4;
                v128 = eax166;
                eax168 = fun_4088ba(eax166, v9, v7, v5, v167, v122, v130, v128, v148, v24);
                edi118 = eax168;
                v130 = edi118;
                ebx14(edi118, v128, 1, esi12);
                fun_4039b0(edi118, reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8, reinterpret_cast<unsigned char>(v148) + reinterpret_cast<unsigned char>(v120), edi118, v128, 1, esi12);
            }
            _V_YAXPAX_Z(edi118);
            eax147 = reinterpret_cast<struct s0*>(&v148->f1);
            v148 = eax147;
        } while (reinterpret_cast<signed char>(eax147) < reinterpret_cast<signed char>(static_cast<uint32_t>(v169)));
    }
    fclose(esi12);
    esi170 = _V_YAXPAX_Z;
    esi170(v21);
    esi170(v34);
    al172 = fun_4088c5(v4 ^ reinterpret_cast<uint32_t>(ebp2), v171);
    return al172;
}

struct s15 {
    signed char[4] pad4;
    uint32_t f4;
    signed char[8] pad16;
    int32_t f16;
};

struct s16 {
    signed char[4] pad4;
    uint32_t f4;
    uint32_t f8;
    int32_t f12;
};

int32_t rewind = 0xec8e;

int32_t remove = 0xecac;

int32_t rename = 0xebd6;

signed char fun_404ab0(struct s0* ecx) {
    void* ebp2;
    uint32_t eax3;
    uint32_t v4;
    struct s0* v5;
    struct s0* ebx6;
    struct s0* v7;
    struct s0* esi8;
    struct s0* v9;
    struct s0* edi10;
    struct s0* v11;
    struct s0* eax12;
    struct s0* ebx13;
    int32_t eax14;
    struct s0* v15;
    int32_t ecx16;
    uint16_t v17;
    struct s0* v18;
    struct s0* eax19;
    struct s0* v20;
    uint32_t esi21;
    uint16_t v22;
    int32_t edi23;
    uint16_t v24;
    void* eax25;
    struct s0* v26;
    void* v27;
    int32_t ecx28;
    int32_t v29;
    struct s0* v30;
    struct s0* eax31;
    int32_t edi32;
    struct s0* v33;
    int32_t v34;
    void* esi35;
    uint32_t eax36;
    int1_t zf37;
    uint32_t edx38;
    int32_t v39;
    uint32_t edi40;
    void* v41;
    void* v42;
    int32_t v43;
    void* v44;
    int32_t v45;
    int32_t v46;
    int32_t v47;
    uint16_t v48;
    void* eax49;
    uint32_t esi50;
    int1_t zf51;
    uint32_t ecx52;
    uint16_t v53;
    int32_t edi54;
    int32_t v55;
    void* esi56;
    int32_t ecx57;
    int32_t eax58;
    int32_t v59;
    uint32_t edi60;
    uint16_t v61;
    void* esi62;
    int32_t edx63;
    int32_t eax64;
    uint16_t v65;
    int32_t edi66;
    void* esi67;
    void* v68;
    void* v69;
    struct s0* eax70;
    int32_t eax71;
    uint32_t ecx72;
    uint32_t v73;
    int32_t eax74;
    int32_t v75;
    void* v76;
    uint32_t v77;
    int32_t edx78;
    struct s15* eax79;
    uint32_t ecx80;
    uint32_t ecx81;
    uint32_t ecx82;
    void* v83;
    uint32_t ecx84;
    uint32_t v85;
    uint32_t eax86;
    int1_t zf87;
    void* eax88;
    void* v89;
    void* esi90;
    void* v91;
    uint16_t v92;
    struct s0* eax93;
    int32_t edx94;
    uint32_t ecx95;
    int32_t edx96;
    int32_t v97;
    void* v98;
    uint32_t v99;
    int32_t ecx100;
    struct s16* eax101;
    uint32_t ecx102;
    uint32_t ecx103;
    uint32_t ecx104;
    void* v105;
    uint32_t ecx106;
    uint32_t v107;
    uint32_t eax108;
    int1_t zf109;
    void* eax110;
    uint16_t v111;
    struct s0* eax112;
    struct s0* v113;
    struct s0* eax114;
    struct s0* v115;
    uint32_t ecx116;
    int32_t v117;
    uint32_t v118;
    struct s0* v119;
    int32_t eax120;
    int32_t eax121;
    struct s0* edi122;
    struct s0* v123;
    struct s0* v124;
    struct s0* v125;
    struct s0* v126;
    struct s0* eax127;
    struct s0* v128;
    int32_t eax129;
    struct s0* v130;
    int32_t v131;
    void* v132;
    int32_t eax133;
    struct s0* eax134;
    struct s0* v135;
    struct s0* v136;
    struct s0* eax137;
    int32_t v138;
    struct s0* edi139;
    struct s0* v140;
    int32_t eax141;
    struct s0* eax142;
    struct s0* v143;
    struct s0* v144;
    struct s0* eax145;
    struct s0* eax146;
    struct s0* v147;
    struct s0* v148;
    struct s0* eax149;
    int32_t v150;
    struct s0* esi151;
    int32_t edi152;
    uint32_t eax153;
    uint32_t eax154;
    int1_t zf155;
    uint32_t eax156;
    uint32_t eax157;
    int1_t zf158;
    uint32_t ecx159;
    int32_t v160;
    uint32_t eax161;
    uint32_t v162;
    uint16_t v163;
    struct s0* eax164;
    struct s0* eax165;
    struct s0* esi166;
    struct s0* v167;
    struct s0* v168;
    struct s0* v169;
    struct s0* eax170;
    struct s0* v171;
    int32_t eax172;
    uint32_t v173;
    struct s0* v174;
    int32_t v175;
    void* v176;
    int32_t eax177;
    struct s0* eax178;
    struct s0* v179;
    struct s0* v180;
    struct s0* eax181;
    int32_t v182;
    int32_t v183;
    int32_t eax184;
    struct s0* eax185;
    struct s0* v186;
    struct s0* v187;
    struct s0* eax188;
    struct s0* v189;
    void* edx190;
    struct s0* ecx191;
    struct s0* eax192;
    struct s0* v193;
    struct s0* eax194;
    int32_t v195;
    struct s0* esi196;
    int32_t edi197;
    uint32_t eax198;
    uint32_t eax199;
    int1_t zf200;
    uint32_t eax201;
    uint32_t eax202;
    int1_t zf203;
    uint16_t v204;
    struct s0* edi205;
    int32_t esi206;
    void* v207;
    uint32_t esi208;
    uint16_t v209;
    int32_t v210;
    uint16_t v211;
    int32_t v212;
    int32_t v213;
    void* esi214;
    int32_t eax215;
    int32_t v216;
    int32_t esi217;
    int32_t esi218;
    struct s0* v219;
    signed char al220;

    ebp2 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax3 = g410020;
    v4 = eax3 ^ reinterpret_cast<uint32_t>(ebp2);
    v5 = ebx6;
    v7 = esi8;
    v9 = edi10;
    v11 = ecx;
    fun_401110(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdf8);
    eax12 = reinterpret_cast<struct s0*>(fopen(ecx, "rb"));
    ebx13 = eax12;
    eax14 = reinterpret_cast<int32_t>(_fileno(ebx13, ecx, "rb"));
    _filelength(eax14);
    v15 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdbc);
    fread(v15, 40, 1, ebx13);
    ecx16 = 0;
    *reinterpret_cast<unsigned char*>(&ecx16) = __intrinsic();
    eax19 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx16) | v17 * 0x110, v15, 40, 1, ebx13, v9, v7, v5, v18, v11);
    v20 = eax19;
    esi21 = 0;
    if (0 < v22) {
        edi23 = 0;
        do {
            fread(edi23 + reinterpret_cast<unsigned char>(v20) + 4, 4, 1, ebx13);
            ++esi21;
            edi23 = edi23 + 0x110;
        } while (reinterpret_cast<int32_t>(esi21) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v24)));
    }
    eax25 = reinterpret_cast<void*>(ftell(ebx13));
    v26 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffde8);
    v27 = eax25;
    fread(v26, 4, 1, ebx13);
    ecx28 = 0;
    *reinterpret_cast<unsigned char*>(&ecx28) = __intrinsic();
    eax31 = fun_4088ba(reinterpret_cast<uint32_t>(-ecx28) | reinterpret_cast<uint32_t>((v29 + 1) * 0x114), v26, 4, 1, ebx13, v9, v7, v5, v30, v11);
    edi32 = 0;
    v33 = eax31;
    if (v34 > 0) {
        esi35 = reinterpret_cast<void*>(0);
        do {
            fread(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33), 8, 1, ebx13);
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33)) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33)) + reinterpret_cast<uint32_t>(v27);
            eax36 = *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33) + 4) & 0x80000003;
            zf37 = eax36 == 0;
            if (__intrinsic()) {
                eax36 = (eax36 - 1 | 0xfffffffc) + 1;
                zf37 = eax36 == 0;
            }
            if (zf37) {
                edx38 = 0;
            } else {
                edx38 = 4 - eax36;
            }
            ++edi32;
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33) + 8) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33) + 4) + *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi35) + reinterpret_cast<unsigned char>(v33)) + edx38;
            esi35 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi35) + 0x114);
        } while (edi32 < v39);
    }
    edi40 = 1;
    *reinterpret_cast<struct s0**>(&v20->f0) = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(v41) + reinterpret_cast<int32_t>(v42) + reinterpret_cast<uint32_t>(v27));
    *reinterpret_cast<struct s0**>(v43 * 0x114 + reinterpret_cast<unsigned char>(v33)) = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(v44) + reinterpret_cast<uint32_t>(v27));
    *reinterpret_cast<struct s0**>(v45 * 0x114 + reinterpret_cast<unsigned char>(v33) + 8) = *reinterpret_cast<struct s0**>(&v20->f0);
    *reinterpret_cast<int32_t*>(v46 * 0x114 + reinterpret_cast<unsigned char>(v33) + 4) = v47;
    if (1 < v48) {
        eax49 = reinterpret_cast<void*>(0x110);
        do {
            esi50 = *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(eax49) + reinterpret_cast<unsigned char>(v20) - 0x10c) & 0x80000003;
            zf51 = esi50 == 0;
            if (__intrinsic()) {
                esi50 = (esi50 - 1 | 0xfffffffc) + 1;
                zf51 = esi50 == 0;
            }
            if (zf51) {
                ecx52 = 0;
            } else {
                ecx52 = 4 - esi50;
            }
            ++edi40;
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(eax49) + reinterpret_cast<unsigned char>(v20)) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax49) + reinterpret_cast<unsigned char>(v20) - 0x110) + ecx52 + *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax49) + reinterpret_cast<unsigned char>(v20) - 0x10c);
            eax49 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(eax49) + 0x110);
        } while (reinterpret_cast<int32_t>(edi40) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v53)));
    }
    edi54 = 0;
    if (v55 > 0) {
        esi56 = reinterpret_cast<void*>(0);
        do {
            ecx57 = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi56) + reinterpret_cast<unsigned char>(v33));
            fseek(ebx13, ecx57, 0);
            eax58 = reinterpret_cast<int32_t>(fgetc(ebx13));
            *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi56) + reinterpret_cast<unsigned char>(v33) + 12) = eax58;
            ++edi54;
            esi56 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi56) + 0x114);
        } while (edi54 < v59);
    }
    edi60 = 0;
    if (0 < v61) {
        esi62 = reinterpret_cast<void*>(0);
        do {
            edx63 = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi62) + reinterpret_cast<unsigned char>(v20));
            fseek(ebx13, edx63, 0);
            eax64 = reinterpret_cast<int32_t>(fgetc(ebx13));
            *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi62) + reinterpret_cast<unsigned char>(v20) + 8) = eax64;
            ++edi60;
            esi62 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi62) + 0x110);
        } while (reinterpret_cast<int32_t>(edi60) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v65)));
    }
    edi66 = fread;
    esi67 = reinterpret_cast<void*>(0);
    v68 = reinterpret_cast<void*>(0);
    if (reinterpret_cast<int32_t>(v69) > reinterpret_cast<int32_t>(0)) {
        do {
            eax70 = v33;
            if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 4) >= 8) {
                if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 12) == 1 || *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 12) == 3) {
                    eax71 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70));
                    fseek(ebx13, eax71 + 1, 0);
                    edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4, 4, 1, ebx13);
                    eax70 = v33;
                    ecx72 = v73 + 9;
                    v73 = ecx72;
                } else {
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 12)) 
                        goto addr_404e92_32;
                    eax74 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70));
                    v75 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 12);
                    fseek(ebx13, eax74 + 1, v75);
                    v76 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4);
                    edi66(v76, 4, 1, ebx13);
                    edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffd94, 4, 1, ebx13, v76, 4, 1, ebx13);
                    eax70 = v33;
                    if (v73 != v77) 
                        goto addr_404e92_32;
                    ecx72 = v73 + 9;
                }
                if (ecx72 != *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 4)) {
                    addr_404e92_32:
                    edx78 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70));
                    fseek(ebx13, edx78, 0);
                    edi66(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(v33) + 12, 4, 1, ebx13);
                    eax79 = reinterpret_cast<struct s15*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(v33));
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(v33) + 12) >= reinterpret_cast<int32_t>(0xff) || (ecx80 = *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(v33) + 12) + *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(v33) + 12), ecx81 = ecx80 + ecx80, ecx82 = ecx81 + ecx81, reinterpret_cast<int32_t>(ecx82) >= reinterpret_cast<int32_t>(eax79->f4))) {
                        addr_404f51_36:
                        eax79->f16 = 0;
                        continue;
                    } else {
                        fseek(ebx13, ecx82 + 0xfffffff8, 1);
                        v83 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4);
                        edi66(v83, 4, 1, ebx13);
                        edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffda4, 4, 1, ebx13, v83, 4, 1, ebx13);
                        ecx84 = v73 + v85;
                        eax86 = ecx84 & 0x80000003;
                        zf87 = eax86 == 0;
                        v73 = ecx84;
                        if (__intrinsic()) {
                            eax86 = (eax86 - 1 | 0xfffffffc) + 1;
                            zf87 = eax86 == 0;
                        }
                        if (!zf87) {
                            ecx84 = ecx84 + (4 - eax86);
                            v73 = ecx84;
                        }
                        eax79 = reinterpret_cast<struct s15*>(reinterpret_cast<unsigned char>(v33) + reinterpret_cast<uint32_t>(esi67));
                        if (ecx84 != eax79->f4) 
                            goto addr_404f51_36;
                    }
                } else {
                    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 16) = 1;
                    continue;
                }
            } else {
                *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi67) + reinterpret_cast<unsigned char>(eax70) + 16) = 0;
                continue;
            }
            eax79->f16 = 2;
            eax88 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(v68) + 1);
            esi67 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi67) + 0x114);
            v68 = eax88;
        } while (reinterpret_cast<int32_t>(eax88) < reinterpret_cast<int32_t>(v89));
    }
    esi90 = reinterpret_cast<void*>(0);
    v91 = reinterpret_cast<void*>(0);
    if (0 < v92) {
        do {
            eax93 = v20;
            if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 4) >= 8) {
                if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 8) == 1 || *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 8) == 3) {
                    edx94 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93));
                    fseek(ebx13, edx94 + 1, 0);
                    edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4, 4, 1, ebx13);
                    eax93 = v20;
                    ecx95 = v73 + 9;
                    v73 = ecx95;
                } else {
                    if (*reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 8)) 
                        goto addr_405050_51;
                    edx96 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93));
                    v97 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 8);
                    fseek(ebx13, edx96 + 1, v97);
                    v98 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4);
                    edi66(v98, 4, 1, ebx13);
                    edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffd94, 4, 1, ebx13, v98, 4, 1, ebx13);
                    eax93 = v20;
                    if (v73 != v99) 
                        goto addr_405050_51;
                    ecx95 = v73 + 9;
                }
                if (ecx95 != *reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 4)) {
                    addr_405050_51:
                    ecx100 = *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93));
                    fseek(ebx13, ecx100, 0);
                    edi66(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(v20) + 8, 4, 1, ebx13);
                    eax101 = reinterpret_cast<struct s16*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(v20));
                    if (reinterpret_cast<int32_t>(eax101->f8) >= reinterpret_cast<int32_t>(0xff) || (ecx102 = eax101->f8 + eax101->f8, ecx103 = ecx102 + ecx102, ecx104 = ecx103 + ecx103, reinterpret_cast<int32_t>(ecx104) >= reinterpret_cast<int32_t>(eax101->f4))) {
                        addr_40510e_55:
                        eax101->f12 = 0;
                        continue;
                    } else {
                        fseek(ebx13, ecx104 + 0xfffffff8, 1);
                        v105 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb4);
                        edi66(v105, 4, 1, ebx13);
                        edi66(reinterpret_cast<uint32_t>(ebp2) + 0xfffffda4, 4, 1, ebx13, v105, 4, 1, ebx13);
                        ecx106 = v73 + v107;
                        eax108 = ecx106 & 0x80000003;
                        zf109 = eax108 == 0;
                        v73 = ecx106;
                        if (__intrinsic()) {
                            eax108 = (eax108 - 1 | 0xfffffffc) + 1;
                            zf109 = eax108 == 0;
                        }
                        if (!zf109) {
                            ecx106 = ecx106 + (4 - eax108);
                            v73 = ecx106;
                        }
                        eax101 = reinterpret_cast<struct s16*>(reinterpret_cast<unsigned char>(v20) + reinterpret_cast<uint32_t>(esi90));
                        if (ecx106 != eax101->f4) 
                            goto addr_40510e_55;
                    }
                } else {
                    *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 12) = 1;
                    continue;
                }
            } else {
                *reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esi90) + reinterpret_cast<unsigned char>(eax93) + 12) = 0;
                continue;
            }
            eax101->f12 = 2;
            eax110 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(v91) + 1);
            esi90 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi90) + 0x110);
            v91 = eax110;
        } while (reinterpret_cast<int32_t>(eax110) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v111)));
    }
    eax112 = reinterpret_cast<struct s0*>(fopen("$$$TEMP$$$", "wb"));
    v113 = eax112;
    rewind(ebx13, "$$$TEMP$$$", "wb");
    eax114 = *reinterpret_cast<struct s0**>(&v33->f0);
    __asm__("cdq ");
    fun_401040(eax114, v33, ebx13, eax112, v9, v7, v5, v115);
    ecx116 = v117 + 1;
    v118 = 0;
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(ecx116) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(ecx116 == 0))) {
        v119 = reinterpret_cast<struct s0*>(0);
        while (1) {
            eax120 = *reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33));
            fseek(ebx13, eax120, 0);
            eax121 = reinterpret_cast<int32_t>(ftell(v113));
            *reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33)) = eax121;
            edi122 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33) + 4);
            v123 = edi122;
            eax127 = fun_4088ba(edi122, v9, v7, v5, v124, v11, v125, v126, v113, v119);
            v128 = eax127;
            fread(eax127, edi122, 1, ebx13);
            eax129 = *reinterpret_cast<int32_t*>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33) + 16);
            if (eax129 != 2) {
                v130 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffda8);
                if (eax129 != 1) {
                    fun_403480(v130, v118, 0xff);
                    if (v131) {
                        v132 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                        printf("\n+ %s", v132);
                        _V_YAXPAX_Z(v128, "\n+ %s", v132);
                        eax133 = reinterpret_cast<int32_t>(_fileno(v131));
                        eax134 = reinterpret_cast<struct s0*>(_filelength(eax133));
                        v123 = eax134;
                        eax137 = fun_4088ba(eax134, v9, v7, v5, v135, v11, v136, v126, v113, v119);
                        v128 = eax137;
                        fread(eax137, eax134, 1, v131);
                        fclose(v131, eax137, eax134, 1, v131);
                        goto addr_4053d9_71;
                    }
                } else {
                    fun_403480(v130, v118, 0xff);
                    if (!v138) {
                        addr_4053d9_71:
                        edi139 = v128;
                    } else {
                        printf("\n+ %s", reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                        eax141 = reinterpret_cast<int32_t>(_fileno(v140, "\n+ %s", reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8));
                        eax142 = reinterpret_cast<struct s0*>(_filelength(eax141));
                        eax145 = fun_4088ba(eax142, v9, v7, v5, v143, v11, v144, v126, v113, v119);
                        fread(eax145, eax142, 1, v140);
                        v126 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33) + 12);
                        __asm__("cdq ");
                        eax146 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(eax142) + reinterpret_cast<unsigned char>(eax142) * 8 + (reinterpret_cast<unsigned char>(v119) & 7)) >> 3);
                        v147 = eax146;
                        eax149 = fun_4088ba(&eax146->f8, eax145, eax142, 1, v140, v9, v7, v5, v148, v11);
                        edi139 = eax149;
                        if (v126) {
                            fun_401490(eax145, v126, eax142, reinterpret_cast<uint32_t>(ebp2) + 0xfffffdac);
                        } else {
                            v147 = eax142;
                            fun_408ca6(eax145, &edi139->f8, eax145, eax142, v9, v7);
                        }
                        v123 = reinterpret_cast<struct s0*>(&v147->f8);
                        *reinterpret_cast<struct s0**>(&edi139->f0) = v126;
                        edi139->f1 = v147;
                        *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(edi139) + 5) = eax142;
                        fclose(v150);
                        _V_YAXPAX_Z(eax145);
                    }
                    esi151 = v113;
                    *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v119) + reinterpret_cast<unsigned char>(v33) + 4) = v123;
                    fwrite(edi139, v123, 1, esi151);
                    _V_YAXPAX_Z(edi139, edi139, v123, 1, esi151);
                    edi152 = ftell;
                    eax153 = reinterpret_cast<uint32_t>(edi152(esi151));
                    eax154 = eax153 & 0x80000003;
                    zf155 = eax154 == 0;
                    if (__intrinsic()) {
                        zf155 = (eax154 - 1 | 0xfffffffc) + 1 == 0;
                    }
                    if (!zf155) {
                        ebx13 = ebx13;
                        do {
                            fputc(0, esi151);
                            eax156 = reinterpret_cast<uint32_t>(edi152(esi151, 0, esi151));
                            eax157 = eax156 & 0x80000003;
                            zf158 = eax157 == 0;
                            if (__intrinsic()) {
                                zf158 = (eax157 - 1 | 0xfffffffc) + 1 == 0;
                            }
                        } while (!zf158);
                    }
                    v119 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v119) + 0x114);
                    ecx159 = v118 + 1;
                    v118 = ecx159;
                    if (reinterpret_cast<int32_t>(ecx159) >= reinterpret_cast<int32_t>(v160 + 1)) 
                        break;
                }
            } else {
                fun_403b60(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdac, reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb8, v118);
                goto addr_4053d9_71;
            }
        }
    }
    eax161 = 0;
    v162 = 0;
    if (0 < v163) {
        do {
            eax164 = *reinterpret_cast<struct s0**>(eax161 * 0x110 + reinterpret_cast<unsigned char>(v20));
            fseek(ebx13, eax164, 0);
            eax165 = reinterpret_cast<struct s0*>(ftell(v113));
            *reinterpret_cast<struct s0**>(v162 * 0x110 + reinterpret_cast<unsigned char>(v20)) = eax165;
            esi166 = *reinterpret_cast<struct s0**>(v162 * 0x110 + reinterpret_cast<unsigned char>(v20) + 4);
            v167 = esi166;
            eax170 = fun_4088ba(esi166, v9, v7, v5, v168, v11, v169, v126, v113, v119);
            v171 = eax170;
            fread(eax170, esi166, 1, ebx13);
            eax172 = *reinterpret_cast<int32_t*>(v162 * 0x110 + reinterpret_cast<unsigned char>(v20) + 12);
            if (eax172 != 2) {
                v173 = v118 + v162 + 0xffffffff;
                v174 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffda8);
                if (eax172 != 1) {
                    fun_403480(v174, v173, 0xff);
                    if (v175) {
                        v176 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                        printf("\n+ %s", v176);
                        _V_YAXPAX_Z(v171, "\n+ %s", v176);
                        eax177 = reinterpret_cast<int32_t>(_fileno(v175));
                        eax178 = reinterpret_cast<struct s0*>(_filelength(eax177));
                        v167 = eax178;
                        eax181 = fun_4088ba(eax178, v9, v7, v5, v179, v11, v180, v126, v113, v119);
                        v171 = eax181;
                        fread(eax181, eax178, 1, v175);
                        fclose(v175, eax181, eax178, 1, v175);
                    }
                } else {
                    fun_403480(v174, v173, 0xff);
                    if (v182) {
                        printf("\n+ %s", reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8);
                        eax184 = reinterpret_cast<int32_t>(_fileno(v183, "\n+ %s", reinterpret_cast<uint32_t>(ebp2) + 0xfffffef8));
                        eax185 = reinterpret_cast<struct s0*>(_filelength(eax184));
                        eax188 = fun_4088ba(eax185, v9, v7, v5, v186, v11, v187, v126, v113, v119);
                        fread(eax188, eax185, 1, v189);
                        edx190 = reinterpret_cast<void*>(v162 * 0x110);
                        ecx191 = *reinterpret_cast<struct s0**>(reinterpret_cast<uint32_t>(edx190) + reinterpret_cast<unsigned char>(v20) + 8);
                        __asm__("cdq ");
                        eax192 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(eax185) + reinterpret_cast<unsigned char>(eax185) * 8 + (reinterpret_cast<uint32_t>(edx190) & 7)) >> 3);
                        v119 = eax192;
                        v126 = ecx191;
                        eax194 = fun_4088ba(&eax192->f8, eax188, eax185, 1, v189, v9, v7, v5, v193, v11);
                        v171 = eax194;
                        if (v126) {
                            fun_401490(eax188, v126, eax185, reinterpret_cast<uint32_t>(ebp2) + 0xfffffda0);
                        } else {
                            v119 = eax185;
                            fun_408ca6(ecx191, &eax194->f8, eax188, eax185, v9, v7);
                        }
                        v167 = reinterpret_cast<struct s0*>(&v119->f8);
                        *reinterpret_cast<struct s0**>(&v171->f0) = v126;
                        v171->f1 = v119;
                        *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(v171) + 5) = eax185;
                        fclose(v195);
                        _V_YAXPAX_Z(eax188);
                    }
                }
            } else {
                fun_403b60(reinterpret_cast<uint32_t>(ebp2) + 0xfffffdac, reinterpret_cast<uint32_t>(ebp2) + 0xfffffdb8, v118 + v162 + 0xffffffff);
            }
            esi196 = v113;
            *reinterpret_cast<struct s0**>(v162 * 0x110 + reinterpret_cast<unsigned char>(v20) + 4) = v167;
            fwrite(v171, v167, 1, esi196);
            _V_YAXPAX_Z(v171, v171, v167, 1, esi196);
            edi197 = ftell;
            eax198 = reinterpret_cast<uint32_t>(edi197(esi196));
            eax199 = eax198 & 0x80000003;
            zf200 = eax199 == 0;
            if (__intrinsic()) {
                zf200 = (eax199 - 1 | 0xfffffffc) + 1 == 0;
            }
            if (!zf200) {
                ebx13 = ebx13;
                do {
                    fputc(0, esi196);
                    eax201 = reinterpret_cast<uint32_t>(edi197(esi196, 0, esi196));
                    eax202 = eax201 & 0x80000003;
                    zf203 = eax202 == 0;
                    if (__intrinsic()) {
                        zf203 = (eax202 - 1 | 0xfffffffc) + 1 == 0;
                    }
                } while (!zf203);
            }
            eax161 = v162 + 1;
            v162 = eax161;
        } while (reinterpret_cast<int32_t>(eax161) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v204)));
    }
    edi205 = v113;
    esi206 = fseek;
    esi206(edi205, 32, 0);
    v207 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp2) + 0xfffffddc);
    fwrite(v207, 4, 1, edi205);
    esi206(edi205, 40, 0, v207, 4, 1, edi205);
    esi208 = 0;
    if (0 < v209) {
        v210 = 0;
        edi205 = edi205;
        do {
            fwrite(v210 + reinterpret_cast<unsigned char>(v20) + 4, 4, 1, edi205);
            v210 = v210 + 0x110;
            ++esi208;
        } while (reinterpret_cast<int32_t>(esi208) < reinterpret_cast<int32_t>(static_cast<uint32_t>(v211)));
    }
    fseek(edi205, 4, 1);
    v212 = 0;
    if (v213 > 0) {
        esi214 = reinterpret_cast<void*>(0);
        do {
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi214) + reinterpret_cast<unsigned char>(v33)) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi214) + reinterpret_cast<unsigned char>(v33)) - reinterpret_cast<uint32_t>(v27);
            fwrite(reinterpret_cast<int32_t>(esi214) + reinterpret_cast<unsigned char>(v33), 8, 1, edi205);
            eax215 = v212 + 1;
            esi214 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi214) + 0x114);
            v212 = eax215;
        } while (eax215 < v216);
    }
    esi217 = fclose;
    esi217(ebx13);
    esi217(edi205);
    esi218 = _V_YAXPAX_Z;
    esi218(v20);
    esi218(v33);
    remove(v11);
    rename("$$$TEMP$$$", v11);
    al220 = fun_4088c5(v4 ^ reinterpret_cast<uint32_t>(ebp2), v219);
    return al220;
}

struct s17 {
    signed char[16] pad16;
    void* f16;
};

/*
 * ?_Xout_of_range@std@@YAXPBD@Z
 * void __cdecl std::_Xout_of_range(char const *)
 */
int32_t _Xout_of_range_std_YAXPBD_Z = 0xeb66;

struct s18 {
    signed char[20] pad20;
    uint32_t f20;
};

int32_t memmove = 0xec72;

struct s19 {
    signed char[16] pad16;
    int32_t f16;
};

struct s20 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s21 {
    signed char[16] pad16;
    uint32_t f16;
};

int32_t fun_405c70(void* ecx) {
    void* edi2;
    void* eax3;
    void* eax4;
    struct s17* esi5;
    void* eax6;
    uint32_t edx7;
    struct s18* esi8;
    int32_t ebx9;
    int32_t esi10;
    int32_t* esi11;
    int32_t edx12;
    int32_t esi13;
    int32_t* esi14;
    uint32_t eax15;
    struct s19* esi16;
    int1_t cf17;
    struct s20* esi18;
    struct s21* esi19;
    int32_t esi20;
    int32_t* esi21;
    int32_t esi22;
    int32_t esi23;

    edi2 = eax3;
    eax4 = esi5->f16;
    if (reinterpret_cast<uint32_t>(eax4) < reinterpret_cast<uint32_t>(ecx)) {
        eax4 = reinterpret_cast<void*>(_Xout_of_range_std_YAXPBD_Z("invalid string position"));
    }
    eax6 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax4) - reinterpret_cast<uint32_t>(ecx));
    if (reinterpret_cast<uint32_t>(eax6) < reinterpret_cast<uint32_t>(edi2)) {
        edi2 = eax6;
    }
    if (edi2) {
        edx7 = esi8->f20;
        if (edx7 < 16) {
            ebx9 = esi10;
        } else {
            ebx9 = *esi11;
        }
        if (edx7 < 16) {
            edx12 = esi13;
        } else {
            edx12 = *esi14;
        }
        memmove(edx12 + reinterpret_cast<uint32_t>(ecx), ebx9 + reinterpret_cast<uint32_t>(ecx) + reinterpret_cast<uint32_t>(edi2), reinterpret_cast<uint32_t>(eax6) - reinterpret_cast<uint32_t>(edi2));
        eax15 = esi16->f16 - reinterpret_cast<uint32_t>(edi2);
        cf17 = esi18->f20 < 16;
        esi19->f16 = eax15;
        if (cf17) {
            *reinterpret_cast<signed char*>(esi20 + eax15) = 0;
        } else {
            *reinterpret_cast<signed char*>(*esi21 + eax15) = 0;
            return esi22;
        }
    }
    return esi23;
}

void* g0;

/*
 * ??0exception@std@@QAE@ABQBD@Z
 * public: __thiscall std::exception::exception(char const * const &)
 */
int32_t _0exception_std_QAE_ABQBD_Z = 0xec30;

int32_t fun_409268(void* ecx, void* a2, int32_t a3, void* a4, struct s0* a5);

int32_t fun_405e60(struct s0** ecx);

/*
 * ??3@YAXPAX@Z
 * void __cdecl operator delete(void *)
 */
int32_t _3_YAXPAX_Z = 0xece0;

void fun_405cf0(struct s0* a1, struct s0* a2, struct s0* a3) {
    void* ebp4;
    void* eax5;
    uint32_t eax6;
    struct s0* v7;
    struct s0* edi8;
    struct s0* esi9;
    void* ecx10;
    struct s0* eax11;
    struct s0* ecx12;
    void* v13;
    void* ecx14;
    void* v15;
    struct s0* v16;
    struct s0* eax17;
    struct s0* edi18;

    ebp4 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax5 = g0;
    eax6 = g410020;
    v7 = reinterpret_cast<struct s0*>(eax6 ^ reinterpret_cast<uint32_t>(ebp4));
    g0 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp4) - 12);
    edi8 = a1;
    esi9 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(a2) | 15);
    if (reinterpret_cast<unsigned char>(esi9) <= reinterpret_cast<unsigned char>(0xfffffffe)) {
        ecx10 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>((edi8 + 2)->f0) >> 1);
        if (reinterpret_cast<uint32_t>(ecx10) > __intrinsic() >> 1 && (esi9 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ecx10) + reinterpret_cast<unsigned char>((edi8 + 2)->f0)), reinterpret_cast<unsigned char>((edi8 + 2)->f0) > reinterpret_cast<unsigned char>(-2 - reinterpret_cast<uint32_t>(ecx10)))) {
            esi9 = reinterpret_cast<struct s0*>(0xfffffffe);
        }
    } else {
        esi9 = a2;
    }
    eax11 = reinterpret_cast<struct s0*>(0);
    ecx12 = reinterpret_cast<struct s0*>(&esi9->f1);
    if (reinterpret_cast<unsigned char>(ecx12) > reinterpret_cast<unsigned char>(0) && (reinterpret_cast<unsigned char>(ecx12) > reinterpret_cast<unsigned char>(0xffffffff) || (eax11 = reinterpret_cast<struct s0*>(_2_YAPAXI_Z(ecx12)), eax11 == 0))) {
        v13 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp4) - 20);
        ecx14 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp4) - 36);
        _0exception_std_QAE_ABQBD_Z(ecx14, v13);
        v15 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp4) - 36);
        fun_409268(ecx14, v15, 0x40e8e8, v13, v7);
        fun_405e60(&a2->f1);
        goto v15;
    }
    if (a3) 
        goto addr_405dce_9;
    addr_405de8_10:
    if (reinterpret_cast<unsigned char>((edi8 + 2)->f0) >= reinterpret_cast<unsigned char>(16)) {
        v16 = *reinterpret_cast<struct s0**>(&edi8->f0);
        _3_YAXPAX_Z(v16);
    }
    *reinterpret_cast<struct s0**>(&edi8->f0) = reinterpret_cast<struct s0*>(0);
    *reinterpret_cast<struct s0**>(&edi8->f0) = eax11;
    (edi8 + 2)->f0 = esi9;
    *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(edi8) + 16) = a3;
    if (reinterpret_cast<unsigned char>(esi9) >= reinterpret_cast<unsigned char>(16)) {
        edi8 = eax11;
    }
    *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(edi8) + reinterpret_cast<unsigned char>(a3)) = 0;
    g0 = eax5;
    return;
    addr_405dce_9:
    if (reinterpret_cast<unsigned char>((edi8 + 2)->f0) < reinterpret_cast<unsigned char>(16)) {
        eax17 = edi8;
    } else {
        eax17 = *reinterpret_cast<struct s0**>(&edi8->f0);
    }
    fun_408ca6(ecx12, eax11, eax17, a3, v7, edi18);
    goto addr_405de8_10;
}

/*
 * ?_Xlength_error@std@@YAXPBD@Z
 * void __cdecl std::_Xlength_error(char const *)
 */
int32_t _Xlength_error_std_YAXPBD_Z = 0xeb86;

struct s0* fun_405aa0(struct s0* ecx, struct s0* a2, struct s0* a3) {
    struct s0* ecx4;
    struct s0* edi5;
    struct s0* eax6;
    struct s0* edi7;
    struct s0* eax8;
    struct s0* v9;
    struct s0* eax10;
    struct s0* ecx11;
    struct s0* edi12;
    struct s0* esi13;
    int1_t cf14;

    ecx4 = a2;
    edi5 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(ecx4) + 16);
    if (reinterpret_cast<unsigned char>(edi5) < reinterpret_cast<unsigned char>(a3)) {
        eax6 = reinterpret_cast<struct s0*>(_Xout_of_range_std_YAXPBD_Z("invalid string position"));
    }
    edi7 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi5) - reinterpret_cast<unsigned char>(a3));
    if (reinterpret_cast<unsigned char>(eax6) < reinterpret_cast<unsigned char>(edi7)) {
        edi7 = eax6;
    }
    if (ecx == ecx4) {
        fun_405c70(reinterpret_cast<unsigned char>(edi7) + reinterpret_cast<unsigned char>(a3));
        fun_405c70(0);
        return ecx;
    }
    if (reinterpret_cast<unsigned char>(edi7) > reinterpret_cast<unsigned char>(0xfffffffe)) {
        _Xlength_error_std_YAXPBD_Z("string too long");
    }
    eax8 = (ecx + 2)->f0;
    if (reinterpret_cast<unsigned char>(eax8) < reinterpret_cast<unsigned char>(edi7)) 
        goto addr_405b00_10;
    if (!edi7) {
        *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(ecx) + 16) = edi7;
        if (reinterpret_cast<unsigned char>(eax8) < reinterpret_cast<unsigned char>(16)) {
            *reinterpret_cast<struct s0**>(&ecx->f0) = reinterpret_cast<struct s0*>(0);
            return ecx;
        } else {
            *reinterpret_cast<struct s0**>(&(*reinterpret_cast<struct s0**>(&ecx->f0))->f0) = reinterpret_cast<struct s0*>(0);
            return ecx;
        }
    }
    addr_405b00_10:
    v9 = *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(ecx) + 16);
    fun_405cf0(ecx, edi7, v9);
    ecx4 = a2;
    if (!edi7) {
        addr_405b7a_15:
        return ecx;
    } else {
        if (reinterpret_cast<unsigned char>((ecx4 + 2)->f0) >= reinterpret_cast<unsigned char>(16)) {
            ecx4 = *reinterpret_cast<struct s0**>(&ecx4->f0);
        }
    }
    if (reinterpret_cast<unsigned char>((ecx + 2)->f0) < reinterpret_cast<unsigned char>(16)) {
        eax10 = ecx;
    } else {
        eax10 = *reinterpret_cast<struct s0**>(&ecx->f0);
    }
    ecx11 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ecx4) + reinterpret_cast<unsigned char>(a3));
    fun_408ca6(ecx11, eax10, ecx11, edi7, edi12, esi13);
    cf14 = reinterpret_cast<unsigned char>((ecx + 2)->f0) < reinterpret_cast<unsigned char>(16);
    *reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(ecx) + 16) = edi7;
    if (cf14) {
        *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(ecx) + reinterpret_cast<unsigned char>(edi7)) = 0;
        goto addr_405b7a_15;
    } else {
        *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&ecx->f0)) + reinterpret_cast<unsigned char>(edi7)) = 0;
        return ecx;
    }
}

int32_t _CxxThrowException = 0xf07c;

int32_t fun_409268(void* ecx, void* a2, int32_t a3, void* a4, struct s0* a5) {
    goto _CxxThrowException;
}

struct s22 {
    unsigned char f0;
    unsigned char f1;
    unsigned char f2;
    unsigned char f3;
    unsigned char f4;
    unsigned char f5;
    unsigned char f6;
    unsigned char f7;
    unsigned char f8;
    unsigned char f9;
    unsigned char f10;
    unsigned char f11;
    unsigned char f12;
    unsigned char f13;
    unsigned char f14;
    unsigned char f15;
};

unsigned char* fun_408370(unsigned char* ecx, struct s0* a2) {
    struct s0* ebx3;
    uint32_t edi4;
    uint32_t ecx5;
    struct s22* esi6;
    struct s22* eax7;
    uint32_t v8;
    int32_t eax9;
    uint32_t ecx10;
    uint32_t ecx11;
    uint32_t ecx12;
    uint32_t ecx13;
    uint32_t ecx14;
    uint32_t ecx15;
    uint32_t ecx16;
    uint32_t ecx17;
    uint32_t ecx18;
    uint32_t ecx19;
    uint32_t ecx20;
    uint32_t ecx21;
    uint32_t ecx22;
    uint32_t ecx23;
    uint32_t ecx24;
    uint32_t ecx25;
    uint32_t eax26;
    uint32_t ecx27;
    uint32_t ecx28;
    uint32_t ecx29;
    uint32_t ecx30;
    uint32_t ecx31;
    uint32_t ecx32;
    uint32_t ecx33;
    uint32_t ecx34;
    uint32_t ecx35;
    uint32_t ecx36;
    uint32_t ecx37;
    uint32_t ecx38;
    uint32_t ecx39;
    uint32_t ecx40;
    uint32_t ecx41;
    uint32_t edx42;

    ebx3 = a2;
    edi4 = reinterpret_cast<uint32_t>(ecx) >> 16;
    ecx5 = reinterpret_cast<uint32_t>(ecx) & 0xffff;
    esi6 = eax7;
    if (!reinterpret_cast<int1_t>(ebx3 == 1)) {
        if (esi6) {
            if (reinterpret_cast<unsigned char>(ebx3) >= reinterpret_cast<unsigned char>(16)) {
                if (reinterpret_cast<unsigned char>(ebx3) >= reinterpret_cast<unsigned char>(0x15b0)) {
                    v8 = __intrinsic() >> 11;
                    do {
                        ebx3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx3) - 0x15b0);
                        eax9 = 0x15b;
                        ecx10 = ecx5;
                        do {
                            ecx11 = ecx10 + esi6->f0;
                            ecx12 = ecx11 + esi6->f1;
                            ecx13 = ecx12 + esi6->f2;
                            ecx14 = ecx13 + esi6->f3;
                            ecx15 = ecx14 + esi6->f4;
                            ecx16 = ecx15 + esi6->f5;
                            ecx17 = ecx16 + esi6->f6;
                            ecx18 = ecx17 + esi6->f7;
                            ecx19 = ecx18 + esi6->f8;
                            ecx20 = ecx19 + esi6->f9;
                            ecx21 = ecx20 + esi6->f10;
                            ecx22 = ecx21 + esi6->f11;
                            ecx23 = ecx22 + esi6->f12;
                            ecx24 = ecx23 + esi6->f13;
                            ecx25 = ecx24 + esi6->f14;
                            ecx10 = ecx25 + esi6->f15;
                            edi4 = edi4 + ecx11 + ecx12 + ecx13 + ecx14 + ecx15 + ecx16 + ecx17 + ecx18 + ecx19 + ecx20 + ecx21 + ecx22 + ecx23 + ecx24 + ecx25 + ecx10;
                            ++esi6;
                            --eax9;
                        } while (eax9);
                        ecx5 = ecx10 + (__intrinsic() >> 15) * 0xffff000f;
                        edi4 = edi4 + (__intrinsic() >> 15) * 0xffff000f;
                        --v8;
                    } while (v8);
                }
                if (ebx3) {
                    if (reinterpret_cast<unsigned char>(ebx3) >= reinterpret_cast<unsigned char>(16)) {
                        eax26 = reinterpret_cast<unsigned char>(ebx3) >> 4;
                        do {
                            ecx27 = ecx5 + esi6->f0;
                            ecx28 = ecx27 + esi6->f1;
                            ecx29 = ecx28 + esi6->f2;
                            ecx30 = ecx29 + esi6->f3;
                            ecx31 = ecx30 + esi6->f4;
                            ecx32 = ecx31 + esi6->f5;
                            ecx33 = ecx32 + esi6->f6;
                            ecx34 = ecx33 + esi6->f7;
                            ecx35 = ecx34 + esi6->f8;
                            ecx36 = ecx35 + esi6->f9;
                            ecx37 = ecx36 + esi6->f10;
                            ecx38 = ecx37 + esi6->f11;
                            ecx39 = ecx38 + esi6->f12;
                            ecx40 = ecx39 + esi6->f13;
                            ecx41 = ecx40 + esi6->f14;
                            ecx5 = ecx41 + esi6->f15;
                            ebx3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx3) - 16);
                            edi4 = edi4 + ecx27 + ecx28 + ecx29 + ecx30 + ecx31 + ecx32 + ecx33 + ecx34 + ecx35 + ecx36 + ecx37 + ecx38 + ecx39 + ecx40 + ecx41 + ecx5;
                            ++esi6;
                            --eax26;
                        } while (eax26);
                    }
                    if (ebx3) {
                        do {
                            ecx5 = ecx5 + esi6->f0;
                            esi6 = reinterpret_cast<struct s22*>(&esi6->f1);
                            edi4 = edi4 + ecx5;
                            ebx3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx3) - 1);
                        } while (ebx3);
                    }
                    ecx5 = ecx5 + (__intrinsic() >> 15) * 0xffff000f;
                    edi4 = edi4 + (__intrinsic() >> 15) * 0xffff000f;
                }
            } else {
                if (ebx3) {
                    do {
                        ecx5 = ecx5 + esi6->f0;
                        esi6 = reinterpret_cast<struct s22*>(&esi6->f1);
                        edi4 = edi4 + ecx5;
                        ebx3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx3) - 1);
                    } while (ebx3);
                }
                if (ecx5 >= 0xfff1) {
                    ecx5 = ecx5 - 0xfff1;
                }
                edx42 = __intrinsic() >> 15;
                return (edx42 << 4) - edx42 + edi4 << 16 | ecx5;
            }
        } else {
            return &esi6->f1;
        }
    } else {
        ecx5 = ecx5 + esi6->f0;
        if (ecx5 >= 0xfff1) {
            ecx5 = ecx5 - 0xfff1;
        }
        edi4 = edi4 + ecx5;
        if (edi4 >= 0xfff1) {
            return edi4 - 0xfff1 << 16 | ecx5;
        }
    }
    return edi4 << 16 | ecx5;
}

struct s23 {
    signed char[44] pad44;
    struct s0* f44;
};

struct s24 {
    signed char[108] pad108;
    void* f108;
};

struct s25 {
    signed char[60] pad60;
    void* f60;
};

struct s26 {
    signed char[116] pad116;
    int32_t f116;
};

struct s27 {
    signed char[44] pad44;
    void* f44;
};

struct s28 {
    signed char[56] pad56;
    struct s0* f56;
};

struct s29 {
    signed char[76] pad76;
    int32_t f76;
};

struct s30 {
    signed char[68] pad68;
    int16_t* f68;
};

struct s31 {
    signed char[112] pad112;
    uint32_t f112;
};

struct s32 {
    signed char[112] pad112;
    int32_t f112;
};

struct s33 {
    signed char[108] pad108;
    uint32_t f108;
};

struct s34 {
    signed char[108] pad108;
    int32_t f108;
};

struct s35 {
    signed char[92] pad92;
    uint32_t f92;
};

struct s36 {
    signed char[92] pad92;
    int32_t f92;
};

struct s37 {
    signed char[64] pad64;
    int16_t* f64;
};

struct s39 {
    signed char[24] pad24;
    int32_t f24;
};

struct s38 {
    struct s0* f0;
    signed char[3] pad4;
    struct s0* f4;
    signed char[3] pad8;
    uint32_t f8;
    signed char[16] pad28;
    struct s39* f28;
    signed char[16] pad48;
    unsigned char* f48;
};

struct s40 {
    signed char[116] pad116;
    void* f116;
};

struct s41 {
    signed char[108] pad108;
    void* f108;
};

struct s42 {
    signed char[56] pad56;
    void* f56;
};

struct s43 {
    signed char[116] pad116;
    uint32_t f116;
};

struct s44 {
    signed char[116] pad116;
    int32_t f116;
};

struct s45 {
    signed char[116] pad116;
    void* f116;
};

struct s46 {
    unsigned char f0;
    unsigned char f1;
};

struct s47 {
    signed char[108] pad108;
    int32_t f108;
};

struct s48 {
    signed char[56] pad56;
    int32_t f56;
};

struct s49 {
    signed char[88] pad88;
    int32_t f88;
};

struct s50 {
    signed char[72] pad72;
    uint32_t f72;
};

struct s51 {
    signed char[72] pad72;
    uint32_t f72;
};

struct s52 {
    signed char[84] pad84;
    uint32_t f84;
};

unsigned char* fun_4085d0(struct s0* ecx, struct s0* a2);

struct s53 {
    signed char[4] pad4;
    int32_t f4;
};

struct s54 {
    signed char[60] pad60;
    void* f60;
};

struct s55 {
    signed char[108] pad108;
    void* f108;
};

struct s56 {
    signed char[56] pad56;
    void* f56;
};

struct s57 {
    signed char[56] pad56;
    void* f56;
};

void fun_406080() {
    struct s0* v1;
    struct s0* ebx2;
    struct s0* v3;
    struct s0* edi4;
    struct s0* edi5;
    struct s23* esi6;
    struct s0* v7;
    void* eax8;
    struct s24* esi9;
    struct s0* ebx10;
    struct s25* esi11;
    struct s26* esi12;
    void* edx13;
    struct s27* esi14;
    struct s0* v15;
    struct s0* eax16;
    struct s28* esi17;
    struct s0* ecx18;
    int32_t edx19;
    struct s29* esi20;
    int16_t* eax21;
    struct s30* esi22;
    struct s31* esi23;
    struct s32* esi24;
    struct s33* esi25;
    struct s34* esi26;
    struct s35* esi27;
    struct s36* esi28;
    int16_t* ecx29;
    struct s0* eax30;
    void* eax31;
    struct s0* edx32;
    int16_t* ecx33;
    struct s37* esi34;
    struct s0* eax35;
    void* eax36;
    struct s38* edi37;
    struct s38** esi38;
    struct s0* eax39;
    struct s0* edx40;
    struct s40* esi41;
    struct s41* esi42;
    struct s42* esi43;
    struct s0* ebx44;
    struct s43* esi45;
    struct s44* esi46;
    void* ebx47;
    struct s45* esi48;
    struct s46* edx49;
    struct s47* esi50;
    struct s48* esi51;
    int32_t ecx52;
    struct s49* esi53;
    uint32_t eax54;
    struct s50* esi55;
    struct s51* esi56;
    struct s52* esi57;
    struct s0* ecx58;
    struct s0* ecx59;
    unsigned char* eax60;
    unsigned char* ecx61;
    struct s53** esi62;
    void* eax63;
    int32_t esi64;
    struct s54* esi65;
    void* edi66;
    struct s55* esi67;
    void* edi68;
    void* ecx69;
    void* ecx70;
    struct s56* esi71;
    int32_t esi72;
    int32_t esi73;
    void* ebx74;
    void* eax75;
    struct s57* esi76;
    int32_t esi77;

    v1 = ebx2;
    v3 = edi4;
    edi5 = esi6->f44;
    v7 = edi5;
    while (1) {
        eax8 = esi9->f108;
        ebx10 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(esi11->f60) - esi12->f116 - reinterpret_cast<uint32_t>(eax8));
        edx13 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(edi5) + reinterpret_cast<uint32_t>(esi14->f44) + 0xfffffefa);
        v15 = ebx10;
        if (reinterpret_cast<uint32_t>(eax8) >= reinterpret_cast<uint32_t>(edx13)) {
            eax16 = esi17->f56;
            ecx18 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax16) + reinterpret_cast<unsigned char>(edi5));
            fun_408ca6(ecx18, eax16, ecx18, edi5, v3, v1);
            edx19 = esi20->f76;
            eax21 = esi22->f68;
            esi23->f112 = esi24->f112 - reinterpret_cast<unsigned char>(edi5);
            esi25->f108 = esi26->f108 - reinterpret_cast<unsigned char>(edi5);
            esi27->f92 = esi28->f92 - reinterpret_cast<unsigned char>(edi5);
            ecx29 = eax21 + edx19;
            do {
                eax30 = reinterpret_cast<struct s0*>(static_cast<uint32_t>(*reinterpret_cast<uint16_t*>(ecx29 - 1)));
                --ecx29;
                if (reinterpret_cast<unsigned char>(eax30) < reinterpret_cast<unsigned char>(edi5)) {
                    eax31 = reinterpret_cast<void*>(0);
                } else {
                    eax31 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(eax30) - reinterpret_cast<unsigned char>(edi5));
                }
                --edx19;
                *ecx29 = *reinterpret_cast<int16_t*>(&eax31);
            } while (edx19);
            edx32 = edi5;
            ecx33 = esi34->f64 + reinterpret_cast<unsigned char>(edi5);
            do {
                eax35 = reinterpret_cast<struct s0*>(static_cast<uint32_t>(*reinterpret_cast<uint16_t*>(ecx33 - 1)));
                --ecx33;
                if (reinterpret_cast<unsigned char>(eax35) < reinterpret_cast<unsigned char>(edi5)) {
                    eax36 = reinterpret_cast<void*>(0);
                } else {
                    eax36 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(eax35) - reinterpret_cast<unsigned char>(edi5));
                }
                edx32 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edx32) - 1);
                *ecx33 = *reinterpret_cast<int16_t*>(&eax36);
            } while (edx32);
            v15 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ebx10) + reinterpret_cast<unsigned char>(edi5));
        }
        edi37 = *esi38;
        if (!edi37->f4) 
            break;
        eax39 = edi37->f4;
        edx40 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(esi41->f116) + reinterpret_cast<int32_t>(esi42->f108) + reinterpret_cast<uint32_t>(esi43->f56));
        ebx44 = eax39;
        if (reinterpret_cast<unsigned char>(ebx44) > reinterpret_cast<unsigned char>(v15)) {
            ebx44 = v15;
        }
        if (!ebx44) {
            addr_406187_18:
            esi45->f116 = esi46->f116 + reinterpret_cast<unsigned char>(ebx44);
            ebx47 = esi48->f116;
            if (reinterpret_cast<uint32_t>(ebx47) >= 3) {
                edx49 = reinterpret_cast<struct s46*>(esi50->f108 + esi51->f56);
                ecx52 = esi53->f88;
                eax54 = edx49->f0;
                esi55->f72 = eax54;
                esi56->f72 = (eax54 << *reinterpret_cast<unsigned char*>(&ecx52) ^ static_cast<uint32_t>(edx49->f1)) & esi57->f84;
            }
        } else {
            edi37->f4 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax39) - reinterpret_cast<unsigned char>(ebx44));
            if (edi37->f28->f24 != 1) {
                if (edi37->f28->f24 != 2) {
                    addr_406175_22:
                    ecx58 = edi37->f0;
                    fun_408ca6(ecx58, edx40, ecx58, ebx44, v3, v1);
                    edi37->f0 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi37->f0) + reinterpret_cast<unsigned char>(ebx44));
                    edi37->f8 = edi37->f8 + reinterpret_cast<unsigned char>(ebx44);
                    goto addr_406187_18;
                } else {
                    ecx59 = edi37->f0;
                    if (ecx59) {
                        eax60 = fun_4085d0(ecx59, ebx44);
                        goto addr_40616c_25;
                    } else {
                        eax60 = reinterpret_cast<unsigned char*>(0);
                        goto addr_406172_27;
                    }
                }
            } else {
                ecx61 = edi37->f48;
                eax60 = fun_408370(ecx61, ebx44);
                goto addr_40616c_25;
            }
        }
        if (reinterpret_cast<uint32_t>(ebx47) >= 0x106) 
            goto addr_4061c3_30;
        if (!(*esi62)->f4) 
            goto addr_4061c3_30;
        edi5 = v7;
        continue;
        addr_40616c_25:
        edx40 = edx40;
        addr_406172_27:
        edi37->f48 = eax60;
        goto addr_406175_22;
    }
    addr_40623a_33:
    return;
    addr_4061c3_30:
    eax63 = *reinterpret_cast<void**>(esi64 + 0x16c0);
    if (reinterpret_cast<uint32_t>(eax63) < reinterpret_cast<uint32_t>(esi65->f60)) {
        edi66 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi67->f108) + reinterpret_cast<uint32_t>(ebx47));
        if (reinterpret_cast<uint32_t>(eax63) >= reinterpret_cast<uint32_t>(edi66)) {
            if (reinterpret_cast<uint32_t>(eax63) < reinterpret_cast<uint32_t>(edi66) + 0x102) {
                edi68 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi66) - reinterpret_cast<uint32_t>(eax63) + 0x102);
                ecx69 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi65->f60) - reinterpret_cast<uint32_t>(eax63));
                if (reinterpret_cast<uint32_t>(edi68) > reinterpret_cast<uint32_t>(ecx69)) {
                    edi68 = ecx69;
                }
                ecx70 = esi71->f56;
                fun_408ca0(reinterpret_cast<int32_t>(ecx70) + reinterpret_cast<uint32_t>(eax63), 0, edi68);
                *reinterpret_cast<uint32_t*>(esi72 + 0x16c0) = *reinterpret_cast<int32_t*>(esi73 + 0x16c0) + reinterpret_cast<uint32_t>(edi68);
                goto addr_40623a_33;
            }
        } else {
            ebx74 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi65->f60) - reinterpret_cast<uint32_t>(edi66));
            if (reinterpret_cast<uint32_t>(ebx74) > 0x102) {
                ebx74 = reinterpret_cast<void*>(0x102);
            }
            eax75 = esi76->f56;
            fun_408ca0(reinterpret_cast<int32_t>(eax75) + reinterpret_cast<uint32_t>(edi66), 0, ebx74);
            *reinterpret_cast<void**>(esi77 + 0x16c0) = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebx74) + reinterpret_cast<uint32_t>(edi66));
            return;
        }
    }
}

struct s58 {
    signed char[108] pad108;
    void* f108;
};

struct s59 {
    signed char[124] pad124;
    uint32_t f124;
};

struct s60 {
    signed char[56] pad56;
    void* f56;
};

struct s61 {
    signed char[144] pad144;
    void* f144;
};

struct s62 {
    signed char[44] pad44;
    void* f44;
};

struct s63 {
    signed char f0;
    signed char f1;
};

struct s64 {
    signed char[120] pad120;
    void* f120;
};

struct s65 {
    signed char[1] pad1;
    signed char f1;
};

struct s66 {
    signed char[140] pad140;
    void* f140;
};

struct s67 {
    signed char[116] pad116;
    void* f116;
};

struct s68 {
    signed char f0;
    signed char f1;
    signed char f2;
};

struct s69 {
    signed char[56] pad56;
    void* f56;
};

struct s70 {
    signed char[64] pad64;
    uint16_t* f64;
};

struct s71 {
    signed char[52] pad52;
    uint32_t f52;
};

struct s72 {
    signed char f0;
    signed char f1;
    signed char f2;
    signed char f3;
    signed char f4;
    signed char f5;
    signed char f6;
    signed char f7;
};

struct s73 {
    signed char[112] pad112;
    void* f112;
};

struct s74 {
    signed char[116] pad116;
    void* f116;
};

void* fun_405f20(void* a1) {
    void* edx2;
    struct s58* edi3;
    uint32_t eax4;
    struct s59* edi5;
    void* ecx6;
    struct s60* edi7;
    void* v8;
    struct s61* edi9;
    void* esi10;
    struct s62* edi11;
    struct s63* ecx12;
    uint32_t v13;
    void* eax14;
    struct s64* edi15;
    void* v16;
    uint32_t edx17;
    signed char v18;
    uint32_t edx19;
    struct s65* esi20;
    signed char v21;
    struct s66* edi22;
    struct s67* edi23;
    void* ebx24;
    struct s68* edx25;
    struct s69* edi26;
    struct s70* edi27;
    struct s71* edi28;
    struct s65* ecx29;
    struct s72* edx30;
    void* edx31;
    struct s73* edi32;
    signed char dl33;
    struct s74* edi34;

    edx2 = edi3->f108;
    eax4 = edi5->f124;
    ecx6 = edi7->f56;
    v8 = edi9->f144;
    esi10 = edi11->f44;
    ecx12 = reinterpret_cast<struct s63*>(reinterpret_cast<int32_t>(ecx6) + reinterpret_cast<uint32_t>(edx2));
    v13 = eax4;
    eax14 = edi15->f120;
    if (reinterpret_cast<uint32_t>(edx2) <= reinterpret_cast<uint32_t>(esi10) + 0xfffffefa) {
        v16 = reinterpret_cast<void*>(0);
    } else {
        v16 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edx2) - reinterpret_cast<uint32_t>(esi10) + 0x106);
    }
    edx17 = *reinterpret_cast<unsigned char*>(reinterpret_cast<unsigned char>(eax14) + reinterpret_cast<uint32_t>(ecx12) + 0xffffffff);
    v18 = *reinterpret_cast<signed char*>(&edx17);
    edx19 = *reinterpret_cast<unsigned char*>(reinterpret_cast<unsigned char>(eax14) + reinterpret_cast<uint32_t>(ecx12));
    esi20 = reinterpret_cast<struct s65*>(ecx12 + 0x81);
    v21 = *reinterpret_cast<signed char*>(&edx19);
    if (reinterpret_cast<unsigned char>(eax14) >= reinterpret_cast<unsigned char>(edi22->f140)) {
        v13 = v13 >> 2;
    }
    if (reinterpret_cast<unsigned char>(v8) > reinterpret_cast<unsigned char>(edi23->f116)) {
        v8 = edi23->f116;
    }
    ebx24 = a1;
    while (1) {
        edx25 = reinterpret_cast<struct s68*>(reinterpret_cast<int32_t>(edi26->f56) + reinterpret_cast<uint32_t>(ebx24));
        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(edx25) + reinterpret_cast<unsigned char>(eax14)) != v21 || (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(edx25) + reinterpret_cast<unsigned char>(eax14) - 1) != v18 || (edx25->f0 != ecx12->f0 || edx25->f1 != ecx12->f1))) {
            addr_40604c_10:
            ebx24 = reinterpret_cast<void*>(static_cast<uint32_t>(edi27->f64[edi28->f52 & reinterpret_cast<uint32_t>(a1)]));
            a1 = ebx24;
            if (reinterpret_cast<uint32_t>(ebx24) <= reinterpret_cast<uint32_t>(v16)) 
                break;
            --v13;
            if (v13) 
                continue; else 
                break;
        } else {
            ecx29 = reinterpret_cast<struct s65*>(ecx12 + 1);
            edx30 = reinterpret_cast<struct s72*>(&edx25->f2);
            do {
                ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1);
                if (ecx29->f1 != edx30->f1) 
                    break;
                ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1);
            } while (ecx29->f1 == edx30->f2 && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ecx29->f1 == edx30->f3) && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ecx29->f1 == edx30->f4) && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ecx29->f1 == edx30->f5) && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ecx29->f1 == edx30->f6) && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ecx29->f1 == edx30->f7) && ((ecx29 = reinterpret_cast<struct s65*>(&ecx29->f1), ++edx30, ecx29->f1 == edx30->f0) && reinterpret_cast<uint32_t>(ecx29) < reinterpret_cast<uint32_t>(esi20))))))));
            edx31 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ecx29) - reinterpret_cast<uint32_t>(esi20) + 0x102);
            ecx12 = reinterpret_cast<struct s63*>(esi20 + 0xffffff7f);
            if (reinterpret_cast<signed char>(edx31) <= reinterpret_cast<signed char>(eax14)) 
                goto addr_40604c_10;
        }
        edi32->f112 = a1;
        eax14 = edx31;
        if (reinterpret_cast<signed char>(edx31) >= reinterpret_cast<signed char>(v8)) 
            break;
        dl33 = *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(edx31) + reinterpret_cast<uint32_t>(ecx12));
        v18 = *reinterpret_cast<signed char*>(reinterpret_cast<unsigned char>(edx31) + reinterpret_cast<uint32_t>(ecx12) + 0xffffffff);
        v21 = dl33;
        goto addr_40604c_10;
    }
    if (reinterpret_cast<unsigned char>(eax14) > reinterpret_cast<unsigned char>(edi34->f116)) {
        eax14 = edi34->f116;
    }
    return eax14;
}

void fun_406c40(uint32_t ecx, int32_t a2) {
    int32_t edx3;
    int32_t eax4;
    int32_t ebx5;
    void* eax6;
    int32_t ecx7;
    int32_t v8;
    int1_t less9;
    void* eax10;
    uint32_t edx11;
    uint16_t* edi12;
    void* eax13;
    uint32_t ebx14;
    uint16_t* edi15;
    void* eax16;
    int32_t eax17;
    void* eax18;
    int32_t eax19;
    uint32_t edx20;
    uint16_t* edi21;
    uint32_t ebx22;
    uint16_t* edi23;
    void* eax24;
    int32_t edx25;
    int32_t eax26;
    int32_t eax27;
    void* eax28;
    int32_t edx29;
    int32_t eax30;
    int32_t esi31;
    void* eax32;
    void* eax33;

    edx3 = *reinterpret_cast<int32_t*>(eax4 + 0x1450);
    ebx5 = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax6) + a2 * 4 + 0xb5c);
    ecx7 = a2 + a2;
    v8 = ebx5;
    less9 = ecx7 < edx3;
    if (ecx7 > edx3) {
        *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax10) + a2 * 4 + 0xb5c) = ebx5;
        return;
    }
    do {
        if (less9 && ((edx11 = edi12[*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax13) + ecx7 * 4 + 0xb60) * 2], ebx14 = edi15[*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax16) + ecx7 * 4 + 0xb5c) * 2], *reinterpret_cast<uint16_t*>(&edx11) < *reinterpret_cast<uint16_t*>(&ebx14)) || *reinterpret_cast<uint16_t*>(&edx11) == *reinterpret_cast<uint16_t*>(&ebx14) && *reinterpret_cast<unsigned char*>(*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax13) + ecx7 * 4 + 0xb60) + eax17 + 0x1458) <= *reinterpret_cast<unsigned char*>(*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax18) + ecx7 * 4 + 0xb5c) + eax19 + 0x1458))) {
            ++ecx7;
        }
        edx20 = edi21[v8 * 2];
        ebx22 = edi23[*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax24) + ecx7 * 4 + 0xb5c) * 2];
        if (*reinterpret_cast<uint16_t*>(&edx20) < *reinterpret_cast<uint16_t*>(&ebx22)) 
            break;
        if (*reinterpret_cast<uint16_t*>(&edx20) != *reinterpret_cast<uint16_t*>(&ebx22)) 
            continue;
        edx25 = v8;
        if (*reinterpret_cast<unsigned char*>(edx25 + eax26 + 0x1458) <= *reinterpret_cast<unsigned char*>(*reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax24) + ecx7 * 4 + 0xb5c) + eax27 + 0x1458)) 
            goto addr_406cf5_8;
        *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax28) + a2 * 4 + 0xb5c) = *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax24) + ecx7 * 4 + 0xb5c);
        edx29 = *reinterpret_cast<int32_t*>(eax30 + 0x1450);
        esi31 = ecx7;
        ecx7 = ecx7 + ecx7;
        a2 = esi31;
        less9 = ecx7 < edx29;
    } while (ecx7 <= edx29);
    goto addr_406ce2_10;
    edx25 = v8;
    addr_406cf5_8:
    *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax32) + a2 * 4 + 0xb5c) = edx25;
    return;
    addr_406ce2_10:
    *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax33) + esi31 * 4 + 0xb5c) = v8;
    return;
}

struct s75 {
    void* f0;
    uint32_t* f4;
    uint32_t f8;
    uint32_t f12;
    uint32_t f16;
};

struct s76 {
    signed char[2876] pad2876;
    int32_t f2876;
};

struct s77 {
    signed char[2880] pad2880;
    int32_t f2880;
};

struct s78 {
    signed char[2884] pad2884;
    int32_t f2884;
};

struct s79 {
    signed char[2888] pad2888;
    int32_t f2888;
};

struct s80 {
    signed char[2892] pad2892;
    int32_t f2892;
};

struct s81 {
    signed char[2896] pad2896;
    int32_t f2896;
};

struct s82 {
    signed char[2900] pad2900;
    int32_t f2900;
};

struct s83 {
    signed char[2904] pad2904;
    int32_t f2904;
};

void fun_406d20(uint16_t** ecx) {
    uint32_t edx2;
    uint16_t* ebx3;
    struct s75* ecx4;
    uint32_t v5;
    void* v6;
    uint32_t* edx7;
    uint32_t* v8;
    uint32_t edx9;
    uint32_t edi10;
    uint32_t v11;
    struct s76* eax12;
    struct s77* eax13;
    struct s78* eax14;
    struct s79* eax15;
    struct s80* eax16;
    struct s81* eax17;
    struct s82* eax18;
    struct s83* eax19;
    void* eax20;
    int32_t eax21;
    int32_t esi22;
    int32_t ecx23;
    int32_t eax24;
    uint16_t* v25;
    uint32_t v26;
    int32_t v27;
    uint32_t* v28;
    void* eax29;
    int32_t edx30;
    int32_t v31;
    int32_t v32;
    uint32_t edx33;
    uint32_t ecx34;
    void* eax35;
    void* eax36;
    uint32_t esi37;
    uint32_t edi38;
    int32_t eax39;
    int32_t eax40;
    int32_t eax41;
    int32_t eax42;
    uint16_t* edi43;
    void* eax44;
    uint32_t ecx45;
    int16_t* edx46;
    void* eax47;
    void* eax48;
    void* eax49;
    void* eax50;
    void* eax51;
    void* eax52;
    uint32_t edx53;
    uint16_t* v54;
    uint32_t edi55;
    uint32_t v56;
    int32_t esi57;
    int32_t eax58;
    uint32_t ecx59;
    uint32_t edi60;
    int16_t* esi61;
    int32_t eax62;
    int32_t eax63;

    edx2 = *reinterpret_cast<uint32_t*>(ecx + 4);
    ebx3 = *ecx;
    ecx4 = *reinterpret_cast<struct s75**>(ecx + 8);
    v5 = edx2;
    v6 = ecx4->f0;
    edx7 = ecx4->f4;
    v8 = edx7;
    edx9 = ecx4->f8;
    edi10 = ecx4->f16;
    v11 = edx9;
    eax12->f2876 = 0;
    eax13->f2880 = 0;
    eax14->f2884 = 0;
    eax15->f2888 = 0;
    eax16->f2892 = 0;
    eax17->f2896 = 0;
    eax18->f2900 = 0;
    eax19->f2904 = 0;
    *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(ebx3 + *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(eax20) + *reinterpret_cast<int32_t*>(eax21 + 0x1454) * 4 + 0xb5c) * 2) + 2) = 0;
    esi22 = 0;
    ecx23 = *reinterpret_cast<int32_t*>(eax24 + 0x1454) + 1;
    v25 = ebx3;
    v26 = edi10;
    v27 = 0;
    if (ecx23 >= 0x23d) {
        addr_406f10_2:
        return;
    } else {
        v28 = reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(eax29) + ecx23 * 4 + 0xb5c);
        edx30 = 0x23d - ecx23;
        v31 = edx30;
        v32 = ecx23 + edx30;
        do {
            edx33 = *v28;
            ecx34 = *reinterpret_cast<uint16_t*>(reinterpret_cast<uint32_t>(ebx3 + *reinterpret_cast<uint16_t*>(reinterpret_cast<uint32_t>(ebx3 + edx33 * 2) + 2) * 2) + 2) + 1;
            if (reinterpret_cast<int32_t>(ecx34) > reinterpret_cast<int32_t>(edi10)) {
                ++esi22;
                ecx34 = edi10;
                v27 = esi22;
            }
            *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(ebx3 + edx33 * 2) + 2) = *reinterpret_cast<int16_t*>(&ecx34);
            if (reinterpret_cast<int32_t>(edx33) <= reinterpret_cast<int32_t>(v5)) {
                *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax35) + ecx34 * 2 + 0xb3c) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax36) + ecx34 * 2 + 0xb3c) + 1);
                esi37 = 0;
                if (reinterpret_cast<int32_t>(edx33) >= reinterpret_cast<int32_t>(v11)) {
                    esi37 = v8[edx33 - v11];
                }
                edi38 = *reinterpret_cast<uint16_t*>(ebx3 + edx33 * 2);
                *reinterpret_cast<uint32_t*>(eax39 + 0x16a8) = *reinterpret_cast<int32_t*>(eax40 + 0x16a8) + (ecx34 + esi37) * edi38;
                if (v6) {
                    *reinterpret_cast<uint32_t*>(eax41 + 0x16ac) = *reinterpret_cast<int32_t*>(eax42 + 0x16ac) + (*reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(v6) + edx33 * 4 + 2) + esi37) * edi38;
                }
                edi10 = v26;
                esi22 = v27;
            }
            ++v28;
            --v31;
        } while (v31);
        if (!esi22) 
            goto addr_406f10_2;
    }
    edi43 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax44) + edi10 * 2 + 0xb3c);
    do {
        ecx45 = v26 - 1;
        edx46 = reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax47) + ecx45 * 2 + 0xb3c);
        if (!*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax48) + ecx45 * 2 + 0xb3c)) {
            do {
                --edx46;
                --ecx45;
            } while (!*edx46);
        }
        *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax49) + ecx45 * 2 + 0xb3e) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax50) + ecx45 * 2 + 0xb3e) + 2);
        *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax51) + ecx45 * 2 + 0xb3c) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax52) + ecx45 * 2 + 0xb3c) - 1);
        *edi43 = reinterpret_cast<uint16_t>(*edi43 - 1);
        esi22 = esi22 - 2;
    } while (!reinterpret_cast<uint1_t>(reinterpret_cast<uint1_t>(esi22 < 0) | reinterpret_cast<uint1_t>(esi22 == 0)));
    edx53 = v26;
    if (!edx53) 
        goto addr_406f10_2;
    v54 = edi43;
    do {
        edi55 = *edi43;
        v56 = edi55;
        if (edi55) {
            esi57 = eax58 + v32 * 4 + 0xb5c;
            ebx3 = ebx3;
            do {
                ecx59 = *reinterpret_cast<uint32_t*>(esi57 - 4);
                --v32;
                esi57 = esi57 - 4;
                if (reinterpret_cast<int32_t>(ecx59) <= reinterpret_cast<int32_t>(v5)) {
                    edi60 = *reinterpret_cast<uint16_t*>(reinterpret_cast<uint32_t>(ebx3 + ecx59 * 2) + 2);
                    esi61 = reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(ebx3 + ecx59 * 2) + 2);
                    if (edi60 != edx53) {
                        ebx3 = v25;
                        *reinterpret_cast<uint32_t*>(eax62 + 0x16a8) = *reinterpret_cast<int32_t*>(eax63 + 0x16a8) + (edx53 - edi60) * *reinterpret_cast<uint16_t*>(ebx3 + ecx59 * 2);
                        *esi61 = *reinterpret_cast<int16_t*>(&edx53);
                    }
                    --v56;
                    edi55 = v56;
                    esi57 = esi57;
                }
            } while (edi55);
        }
        edi43 = v54 - 1;
        --edx53;
        v54 = edi43;
    } while (edx53);
    goto addr_406f10_2;
}

signed char fun_406f20(uint16_t** ecx, uint32_t a2) {
    void* ebp3;
    uint32_t eax4;
    uint32_t v5;
    int32_t eax6;
    void* edx7;
    void* edx8;
    uint32_t ecx9;
    int16_t si10;
    uint32_t esi11;
    uint32_t edx12;
    void* edi13;
    uint32_t eax14;
    uint32_t ecx15;
    uint32_t eax16;
    uint32_t eax17;
    uint32_t eax18;
    uint32_t eax19;
    int16_t* edi20;
    struct s0* v21;
    signed char al22;

    ebp3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax4 = g410020;
    v5 = eax4 ^ reinterpret_cast<uint32_t>(ebp3);
    eax6 = 1;
    edx7 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(edx8) - (reinterpret_cast<uint32_t>(ebp3) - 34));
    ecx9 = 0;
    do {
        si10 = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(ebp3) + (reinterpret_cast<uint32_t>(edx7) + eax6 * 2) - 36) + *reinterpret_cast<int16_t*>(&ecx9));
        ecx9 = reinterpret_cast<uint16_t>(si10 + si10);
        *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(ebp3) + eax6 * 2 - 36) = *reinterpret_cast<int16_t*>(&ecx9);
        ++eax6;
    } while (eax6 <= 15);
    esi11 = 0;
    if (reinterpret_cast<int32_t>(a2) >= reinterpret_cast<int32_t>(0)) {
        do {
            edx12 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(edi13) + esi11 * 4 + 2);
            if (edx12) {
                eax14 = *reinterpret_cast<uint16_t*>(reinterpret_cast<uint32_t>(ebp3) + edx12 * 2 - 36);
                ecx15 = eax14;
                eax16 = eax14 + 1;
                *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(ebp3) + edx12 * 2 - 36) = *reinterpret_cast<int16_t*>(&eax16);
                eax17 = 0;
                do {
                    eax18 = eax17 | ecx15 & 1;
                    --edx12;
                    ecx15 = ecx15 >> 1;
                    eax17 = eax18 + eax18;
                } while (!reinterpret_cast<uint1_t>(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edx12) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edx12 == 0)));
                eax19 = eax17 >> 1;
                edi20[esi11 * 2] = *reinterpret_cast<int16_t*>(&eax19);
            }
            ++esi11;
        } while (reinterpret_cast<int32_t>(esi11) <= reinterpret_cast<int32_t>(a2));
    }
    al22 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v21);
    return al22;
}

struct s84 {
    signed char[2] pad2;
    uint16_t f2;
    signed char[2] pad6;
    uint16_t f6;
};

struct s85 {
    signed char[8] pad8;
    int32_t f8;
    signed char[8] pad20;
    uint32_t f20;
    signed char[2724] pad2748;
    uint16_t f2748;
    uint16_t f2750;
    uint16_t f2752;
    uint16_t f2754;
    uint16_t f2756;
    uint16_t f2758;
    signed char[3056] pad5816;
    unsigned char f5816;
    unsigned char f5817;
    signed char[2] pad5820;
    uint32_t f5820;
};

void fun_407290(uint32_t ecx, struct s84* a2, struct s84* a3) {
    uint32_t ebx4;
    uint32_t edx5;
    uint32_t v6;
    uint32_t v7;
    uint32_t ecx8;
    uint32_t v9;
    uint16_t* v10;
    uint32_t v11;
    uint32_t edi12;
    uint32_t esi13;
    uint32_t v14;
    uint32_t v15;
    uint32_t ecx16;
    struct s85* eax17;
    uint32_t ecx18;
    uint32_t ecx19;
    uint32_t edx20;
    int32_t ecx21;
    uint32_t edx22;
    uint32_t edi23;
    uint32_t ecx24;
    uint32_t edx25;
    uint32_t ecx26;
    uint32_t ecx27;
    uint32_t ecx28;
    uint32_t edx29;
    int32_t ecx30;
    uint32_t edx31;
    uint32_t edi32;
    uint32_t ecx33;
    uint32_t edx34;
    uint32_t ecx35;
    uint32_t ecx36;
    uint32_t ecx37;
    uint32_t edx38;
    int32_t ecx39;
    uint32_t edx40;
    uint32_t edi41;
    uint32_t ecx42;
    uint32_t ecx43;
    uint32_t edx44;
    int32_t ecx45;
    uint32_t edx46;
    uint32_t edi47;
    uint32_t ecx48;
    uint32_t edx49;
    uint32_t edi50;
    uint32_t ecx51;
    uint32_t ecx52;
    uint32_t esi53;
    int32_t ecx54;
    uint32_t ebx55;
    uint32_t ebx56;
    uint32_t edx57;
    uint32_t ecx58;
    int32_t ecx59;
    uint32_t edx60;
    uint32_t edi61;
    int32_t ecx62;
    uint32_t edx63;
    uint32_t edi64;
    int32_t ecx65;
    uint32_t edx66;
    uint32_t edi67;

    ebx4 = a2->f2;
    edx5 = 0;
    v6 = 0xffffffff;
    v7 = ebx4;
    ecx8 = 7;
    v9 = 4;
    if (!ebx4) {
        ecx8 = 0x8a;
        v9 = 3;
    }
    if (reinterpret_cast<int32_t>(ecx) >= reinterpret_cast<int32_t>(0)) {
        v10 = &a2->f6;
        v11 = ecx + 1;
        while (1) {
            edi12 = *v10;
            esi13 = v7;
            ++edx5;
            v14 = esi13;
            v7 = edi12;
            v15 = edx5;
            if (reinterpret_cast<int32_t>(edx5) >= reinterpret_cast<int32_t>(ecx8) || esi13 != edi12) {
                if (reinterpret_cast<int32_t>(edx5) >= reinterpret_cast<int32_t>(v9)) {
                    if (!esi13) {
                        if (reinterpret_cast<int32_t>(edx5) > reinterpret_cast<int32_t>(10)) {
                            ecx16 = eax17->f2758;
                            ecx18 = eax17->f5820;
                            if (reinterpret_cast<int32_t>(ecx18) <= reinterpret_cast<int32_t>(16 - ecx16)) {
                                ecx19 = eax17->f5820;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(eax17->f2756 << *reinterpret_cast<unsigned char*>(&ecx18)));
                                eax17->f5820 = ecx19 + ecx16;
                            } else {
                                edx20 = eax17->f2756;
                                ecx21 = eax17->f8;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx20) << *reinterpret_cast<unsigned char*>(&ecx18)));
                                *reinterpret_cast<unsigned char*>(ecx21 + eax17->f20) = eax17->f5816;
                                eax17 = eax17;
                                eax17->f20 = eax17->f20 + 1;
                                *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
                                edx22 = eax17->f5820;
                                edi23 = edx20;
                                eax17->f20 = eax17->f20 + 1;
                                eax17->f5820 = edx22 + ecx16 + 0xfffffff0;
                                edx5 = v15;
                                eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi23) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx22)));
                            }
                            ecx24 = eax17->f5820;
                            edx25 = edx5 + 0xfffffff5;
                            if (reinterpret_cast<int32_t>(ecx24) > reinterpret_cast<int32_t>(9)) 
                                goto addr_407753_13;
                        } else {
                            ecx26 = eax17->f2754;
                            ecx27 = eax17->f5820;
                            if (reinterpret_cast<int32_t>(ecx27) <= reinterpret_cast<int32_t>(16 - ecx26)) {
                                ecx28 = eax17->f5820;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(eax17->f2752 << *reinterpret_cast<unsigned char*>(&ecx27)));
                                eax17->f5820 = ecx28 + ecx26;
                            } else {
                                edx29 = eax17->f2752;
                                ecx30 = eax17->f8;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx29) << *reinterpret_cast<unsigned char*>(&ecx27)));
                                *reinterpret_cast<unsigned char*>(ecx30 + eax17->f20) = eax17->f5816;
                                eax17 = eax17;
                                eax17->f20 = eax17->f20 + 1;
                                *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
                                edx31 = eax17->f5820;
                                edi32 = edx29;
                                eax17->f20 = eax17->f20 + 1;
                                eax17->f5820 = edx31 + ecx26 + 0xfffffff0;
                                edx5 = v15;
                                eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi32) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx31)));
                            }
                            ecx33 = eax17->f5820;
                            edx34 = edx5 + 0xfffffffd;
                            if (reinterpret_cast<int32_t>(ecx33) <= reinterpret_cast<int32_t>(13)) 
                                goto addr_407696_18; else 
                                goto addr_40763a_19;
                        }
                    } else {
                        if (esi13 != v6) {
                            ecx35 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7e);
                            ecx36 = eax17->f5820;
                            if (reinterpret_cast<int32_t>(ecx36) <= reinterpret_cast<int32_t>(16 - ecx35)) {
                                ecx37 = eax17->f5820;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7c) << *reinterpret_cast<unsigned char*>(&ecx36)));
                                eax17->f5820 = ecx37 + ecx35;
                            } else {
                                edx38 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7c);
                                ecx39 = eax17->f8;
                                eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx38) << *reinterpret_cast<unsigned char*>(&ecx36)));
                                *reinterpret_cast<unsigned char*>(ecx39 + eax17->f20) = eax17->f5816;
                                eax17 = eax17;
                                eax17->f20 = eax17->f20 + 1;
                                *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
                                edx40 = eax17->f5820;
                                edi41 = edx38;
                                eax17->f20 = eax17->f20 + 1;
                                eax17->f5820 = edx40 + ecx35 + 0xfffffff0;
                                edx5 = v15;
                                eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi41) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx40)));
                            }
                            --edx5;
                            v15 = edx5;
                        }
                        ecx42 = eax17->f2750;
                        ecx43 = eax17->f5820;
                        if (reinterpret_cast<int32_t>(ecx43) <= reinterpret_cast<int32_t>(16 - ecx42)) {
                            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(eax17->f2748 << *reinterpret_cast<unsigned char*>(&ecx43)));
                            eax17->f5820 = ecx43 + ecx42;
                        } else {
                            edx44 = eax17->f2748;
                            ecx45 = eax17->f8;
                            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx44) << *reinterpret_cast<unsigned char*>(&ecx43)));
                            *reinterpret_cast<unsigned char*>(ecx45 + eax17->f20) = eax17->f5816;
                            eax17 = eax17;
                            eax17->f20 = eax17->f20 + 1;
                            *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
                            edx46 = eax17->f5820;
                            edi47 = edx44;
                            eax17->f20 = eax17->f20 + 1;
                            eax17->f5820 = edx46 + ecx42 + 0xfffffff0;
                            edx5 = v15;
                            eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi47) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx46)));
                        }
                        ecx48 = eax17->f5820;
                        edx49 = edx5 + 0xfffffffd;
                        if (reinterpret_cast<int32_t>(ecx48) <= reinterpret_cast<int32_t>(14)) 
                            goto addr_40756f_29; else 
                            goto addr_407513_30;
                    }
                } else {
                    do {
                        edi50 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7e);
                        ecx51 = eax17->f5820;
                        if (reinterpret_cast<int32_t>(ecx51) <= reinterpret_cast<int32_t>(16 - edi50)) {
                            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7c) << *reinterpret_cast<unsigned char*>(&ecx51)));
                            ecx52 = ecx51 + edi50;
                        } else {
                            esi53 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax17) + esi13 * 4 + 0xa7c);
                            ecx54 = eax17->f8;
                            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi53) << *reinterpret_cast<unsigned char*>(&ecx51)));
                            ebx55 = eax17->f5816;
                            *reinterpret_cast<signed char*>(ecx54 + eax17->f20) = *reinterpret_cast<signed char*>(&ebx55);
                            eax17->f20 = eax17->f20 + 1;
                            ebx56 = eax17->f5817;
                            *reinterpret_cast<signed char*>(eax17->f20 + eax17->f8) = *reinterpret_cast<signed char*>(&ebx56);
                            edx57 = eax17->f5820;
                            eax17->f20 = eax17->f20 + 1;
                            ecx52 = edx57 + edi50 + 0xfffffff0;
                            eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&esi53) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx57)));
                            esi13 = v14;
                        }
                        --v15;
                        eax17->f5820 = ecx52;
                    } while (v15);
                    goto addr_4077bf_37;
                }
            } else {
                addr_4077f7_38:
                v10 = v10 + 2;
                --v11;
                if (v11) 
                    continue; else 
                    break;
            }
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx25) << *reinterpret_cast<unsigned char*>(&ecx24)));
            ecx58 = ecx24 + 7;
            addr_4077b9_40:
            eax17->f5820 = ecx58;
            addr_4077bf_37:
            edx5 = 0;
            v6 = esi13;
            if (v7) {
                if (esi13 != v7) {
                    ecx8 = 7;
                    v9 = 4;
                    goto addr_4077f7_38;
                } else {
                    ecx8 = 6;
                    v9 = 3;
                    goto addr_4077f7_38;
                }
            } else {
                ecx8 = 0x8a;
                v9 = 3;
                goto addr_4077f7_38;
            }
            addr_407753_13:
            ecx59 = eax17->f8;
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx25) << *reinterpret_cast<unsigned char*>(&ecx24)));
            *reinterpret_cast<unsigned char*>(ecx59 + eax17->f20) = eax17->f5816;
            eax17 = eax17;
            eax17->f20 = eax17->f20 + 1;
            *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
            edx60 = eax17->f5820;
            edi61 = edx25;
            eax17->f20 = eax17->f20 + 1;
            eax17->f5820 = edx60 + 0xfffffff7;
            eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi61) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx60)));
            goto addr_4077bf_37;
            addr_407696_18:
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx34) << *reinterpret_cast<unsigned char*>(&ecx33)));
            ecx58 = ecx33 + 3;
            goto addr_4077b9_40;
            addr_40763a_19:
            ecx62 = eax17->f8;
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx34) << *reinterpret_cast<unsigned char*>(&ecx33)));
            *reinterpret_cast<unsigned char*>(ecx62 + eax17->f20) = eax17->f5816;
            eax17 = eax17;
            eax17->f20 = eax17->f20 + 1;
            *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
            edx63 = eax17->f5820;
            edi64 = edx34;
            eax17->f20 = eax17->f20 + 1;
            eax17->f5820 = edx63 + 0xfffffff3;
            eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi64) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx63)));
            goto addr_4077bf_37;
            addr_40756f_29:
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx49) << *reinterpret_cast<unsigned char*>(&ecx48)));
            ecx58 = ecx48 + 2;
            goto addr_4077b9_40;
            addr_407513_30:
            ecx65 = eax17->f8;
            eax17->f5816 = reinterpret_cast<unsigned char>(eax17->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx49) << *reinterpret_cast<unsigned char*>(&ecx48)));
            *reinterpret_cast<unsigned char*>(ecx65 + eax17->f20) = eax17->f5816;
            eax17 = eax17;
            eax17->f20 = eax17->f20 + 1;
            *reinterpret_cast<unsigned char*>(eax17->f20 + eax17->f8) = eax17->f5817;
            edx66 = eax17->f5820;
            edi67 = edx49;
            eax17->f20 = eax17->f20 + 1;
            eax17->f5820 = edx66 + 0xfffffff2;
            eax17->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edi67) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx66)));
            goto addr_4077bf_37;
        }
    }
    return;
}

struct s86 {
    signed char[8] pad8;
    int32_t f8;
};

struct s87 {
    signed char[20] pad20;
    int32_t f20;
};

struct s88 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s89 {
    signed char[20] pad20;
    int32_t f20;
};

struct s90 {
    signed char[20] pad20;
    int32_t f20;
};

struct s91 {
    signed char[8] pad8;
    int32_t f8;
};

struct s92 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s93 {
    signed char[20] pad20;
    int32_t f20;
};

struct s94 {
    signed char[20] pad20;
    int32_t f20;
};

struct s95 {
    signed char[8] pad8;
    int32_t f8;
};

struct s96 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s97 {
    signed char[20] pad20;
    int32_t f20;
};

struct s98 {
    signed char[20] pad20;
    int32_t f20;
};

struct s99 {
    signed char[8] pad8;
    int32_t f8;
};

struct s100 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s101 {
    signed char[20] pad20;
    int32_t f20;
};

struct s102 {
    signed char[20] pad20;
    int32_t f20;
};

struct s103 {
    signed char[8] pad8;
    int32_t f8;
};

struct s104 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s105 {
    signed char[20] pad20;
    int32_t f20;
};

struct s106 {
    signed char[20] pad20;
    int32_t f20;
};

struct s107 {
    signed char[8] pad8;
    int32_t f8;
};

struct s108 {
    signed char[20] pad20;
    int32_t f20;
};

struct s109 {
    signed char[20] pad20;
    int32_t f20;
};

struct s110 {
    signed char[8] pad8;
    int32_t f8;
};

struct s111 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s112 {
    signed char[20] pad20;
    int32_t f20;
};

struct s113 {
    signed char[20] pad20;
    int32_t f20;
};

struct s114 {
    signed char[8] pad8;
    int32_t f8;
};

struct s115 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s116 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_4082a0(uint16_t** ecx, uint16_t** a2) {
    int32_t edx3;
    int32_t eax4;
    int32_t esi5;
    struct s86* eax6;
    int32_t eax7;
    int32_t eax8;
    int32_t edx9;
    struct s87* eax10;
    int32_t eax11;
    struct s88* eax12;
    struct s89* eax13;
    uint32_t edx14;
    struct s90* eax15;
    struct s91* eax16;
    struct s92* eax17;
    struct s93* eax18;
    struct s94* eax19;
    struct s95* eax20;
    struct s96* eax21;
    struct s97* eax22;
    uint32_t edx23;
    struct s98* eax24;
    struct s99* eax25;
    struct s100* eax26;
    struct s101* eax27;
    int32_t esi28;
    struct s102* eax29;
    uint16_t* bl30;
    int32_t edx31;
    struct s103* eax32;
    struct s104* eax33;
    struct s105* eax34;
    struct s106* eax35;
    struct s107* eax36;
    struct s108* eax37;
    int32_t eax38;
    uint32_t ebx39;
    int32_t eax40;
    struct s109* eax41;
    struct s110* eax42;
    struct s111* eax43;
    struct s112* eax44;
    uint32_t ebx45;
    int32_t eax46;
    struct s113* eax47;
    struct s114* eax48;
    struct s115* eax49;
    struct s116* eax50;

    edx3 = *reinterpret_cast<int32_t*>(eax4 + 0x16bc);
    if (edx3 <= 8) {
        if (reinterpret_cast<uint1_t>(edx3 < 0) | reinterpret_cast<uint1_t>(edx3 == 0)) {
            addr_4082f1_3:
            esi5 = eax6->f8;
            *reinterpret_cast<int16_t*>(eax7 + 0x16b8) = 0;
            *reinterpret_cast<int32_t*>(eax8 + 0x16bc) = 0;
            edx9 = eax10->f20;
            *reinterpret_cast<int32_t*>(eax11 + 0x16b4) = 8;
            *reinterpret_cast<signed char*>(edx9 + esi5) = *reinterpret_cast<signed char*>(&ecx);
            eax12->f20 = eax13->f20 + 1;
            edx14 = reinterpret_cast<uint16_t>(ecx) >> 8;
            *reinterpret_cast<signed char*>(eax15->f20 + eax16->f8) = *reinterpret_cast<signed char*>(&edx14);
            eax17->f20 = eax18->f20 + 1;
            *reinterpret_cast<signed char*>(eax19->f20 + eax20->f8) = reinterpret_cast<signed char>(~*reinterpret_cast<signed char*>(&ecx));
            eax21->f20 = eax22->f20 + 1;
            edx23 = ~reinterpret_cast<uint16_t>(ecx) >> 8;
            *reinterpret_cast<signed char*>(eax24->f20 + eax25->f8) = *reinterpret_cast<signed char*>(&edx23);
            eax26->f20 = eax27->f20 + 1;
            esi28 = eax29->f20;
            if (ecx) {
                do {
                    bl30 = *a2;
                    edx31 = eax32->f8;
                    ++a2;
                    *reinterpret_cast<uint16_t**>(esi28 + edx31) = bl30;
                    eax33->f20 = eax34->f20 + 1;
                    --ecx;
                    esi28 = eax35->f20;
                } while (ecx);
            }
        } else {
            *reinterpret_cast<signed char*>(eax36->f8 + eax37->f20) = *reinterpret_cast<signed char*>(eax38 + 0x16b8);
            goto addr_4082ee_6;
        }
    } else {
        ebx39 = *reinterpret_cast<unsigned char*>(eax40 + 0x16b8);
        *reinterpret_cast<signed char*>(eax41->f20 + eax42->f8) = *reinterpret_cast<signed char*>(&ebx39);
        eax43->f20 = eax44->f20 + 1;
        ebx45 = *reinterpret_cast<unsigned char*>(eax46 + 0x16b9);
        *reinterpret_cast<signed char*>(eax47->f20 + eax48->f8) = *reinterpret_cast<signed char*>(&ebx45);
        goto addr_4082ee_6;
    }
    return;
    addr_4082ee_6:
    eax49->f20 = eax50->f20 + 1;
    goto addr_4082f1_3;
}

struct s117 {
    signed char[148] pad148;
    int16_t f148;
};

struct s118 {
    signed char[184] pad184;
    int16_t f184;
};

struct s119 {
    signed char[188] pad188;
    int16_t f188;
};

struct s120 {
    signed char[200] pad200;
    int16_t f200;
};

struct s121 {
    signed char[276] pad276;
    int16_t f276;
};

int32_t fun_408230() {
    int32_t eax1;
    int16_t* ecx2;
    struct s117* esi3;
    struct s118* esi4;
    struct s119* esi5;
    struct s120* esi6;
    int32_t eax7;
    int16_t* ecx8;
    struct s121* esi9;

    eax1 = 0;
    ecx2 = &esi3->f148;
    do {
        if (0) 
            continue;
        if (*ecx2) 
            break;
        ++eax1;
        ecx2 = ecx2 + 2;
    } while (eax1 <= 31);
    goto addr_408256_5;
    addr_408291_6:
    return 0;
    addr_408256_5:
    if (esi4->f184 || (esi5->f188 || esi6->f200)) {
        addr_408294_7:
        return 1;
    } else {
        eax7 = 32;
        ecx8 = &esi9->f276;
        do {
            if (*ecx8) 
                goto addr_408294_7;
            ++eax7;
            ecx8 = ecx8 + 2;
        } while (eax7 < 0x100);
        goto addr_408291_6;
    }
}

struct s122 {
    signed char[8] pad8;
    int32_t f8;
};

struct s123 {
    signed char[20] pad20;
    int32_t f20;
};

struct s124 {
    signed char[20] pad20;
    int32_t f20;
};

struct s125 {
    signed char[20] pad20;
    int32_t f20;
};

struct s126 {
    signed char[20] pad20;
    int32_t f20;
};

struct s127 {
    signed char[8] pad8;
    int32_t f8;
};

struct s128 {
    signed char[20] pad20;
    int32_t f20;
};

struct s129 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_407b30(uint16_t* ecx, uint16_t** a2, uint16_t** a3) {
    uint16_t* esi4;
    int32_t ecx5;
    int32_t eax6;
    int32_t eax7;
    int32_t eax8;
    int32_t eax9;
    int32_t ecx10;
    struct s122* eax11;
    int32_t eax12;
    int32_t eax13;
    uint32_t ebx14;
    int32_t eax15;
    struct s123* eax16;
    uint32_t ebx17;
    int32_t eax18;
    struct s124* eax19;
    struct s125* eax20;
    struct s126* eax21;
    struct s127* eax22;
    int32_t edx23;
    int32_t eax24;
    struct s128* eax25;
    struct s129* eax26;
    int32_t eax27;
    int32_t eax28;

    esi4 = ecx;
    ecx5 = *reinterpret_cast<int32_t*>(eax6 + 0x16bc);
    if (ecx5 <= 13) {
        *reinterpret_cast<int32_t*>(eax7 + 0x16bc) = ecx5 + 3;
        *reinterpret_cast<uint16_t*>(eax8 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax9 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi4) << *reinterpret_cast<unsigned char*>(&ecx5)));
        fun_4082a0(a3, a2);
        return;
    } else {
        ecx10 = eax11->f8;
        *reinterpret_cast<uint16_t*>(eax12 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax13 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi4) << *reinterpret_cast<unsigned char*>(&ecx5)));
        ebx14 = *reinterpret_cast<unsigned char*>(eax15 + 0x16b8);
        *reinterpret_cast<signed char*>(ecx10 + eax16->f20) = *reinterpret_cast<signed char*>(&ebx14);
        ebx17 = *reinterpret_cast<unsigned char*>(eax18 + 0x16b9);
        eax19->f20 = eax20->f20 + 1;
        *reinterpret_cast<signed char*>(eax21->f20 + eax22->f8) = *reinterpret_cast<signed char*>(&ebx17);
        edx23 = *reinterpret_cast<int32_t*>(eax24 + 0x16bc);
        eax25->f20 = eax26->f20 + 1;
        *reinterpret_cast<uint16_t*>(eax27 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi4) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx23)));
        *reinterpret_cast<int32_t*>(eax28 + 0x16bc) = edx23 - 13;
        fun_4082a0(a3, a2);
        return;
    }
}

void fun_408e70(int32_t* a1, int32_t* a2, int32_t* a3);

struct s130 {
    signed char[16] pad16;
    int32_t f16;
};

struct s131 {
    signed char[16] pad16;
    int32_t f16;
};

struct s132 {
    signed char[16] pad16;
    int32_t f16;
};

struct s133 {
    signed char[8] pad8;
    int32_t f8;
};

struct s134 {
    signed char[12] pad12;
    int32_t f12;
};

struct s135 {
    signed char[8] pad8;
    int32_t f8;
};

struct s136 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_408eb5(int32_t ecx, int32_t* a2, int32_t* a3, int32_t* a4, int32_t* a5);

void fun_4088e0(int32_t* a1, int32_t a2, int32_t a3, int32_t a4) {
    int32_t* v5;
    int32_t ebp6;
    struct s130* ebp7;
    struct s131* ebp8;
    struct s132* ebp9;
    int32_t ecx10;
    struct s133* ebp11;
    struct s134* ebp12;
    struct s135* ebp13;
    struct s136* ebp14;
    int32_t ebp15;

    v5 = reinterpret_cast<int32_t*>(__return_address());
    fun_408e70(0x40e808, 20, v5);
    *reinterpret_cast<uint32_t*>(ebp6 - 4) = 0;
    while (ebp7->f16 = ebp8->f16 - 1, ebp9->f16 >= 0) {
        ecx10 = ebp11->f8 - ebp12->f12;
        ebp13->f8 = ecx10;
        ebp14->f20();
    }
    *reinterpret_cast<int32_t*>(ebp15 - 4) = -2;
    fun_408eb5(ecx10, 0x40e808, 20, v5, a1);
    goto 0x40e808;
}

struct s137 {
    signed char[12] pad12;
    int32_t f12;
};

struct s138 {
    signed char[8] pad8;
    int32_t f8;
};

struct s139 {
    signed char[8] pad8;
    int32_t f8;
};

struct s140 {
    signed char[16] pad16;
    int32_t f16;
};

struct s141 {
    signed char[16] pad16;
    int32_t f16;
};

struct s142 {
    signed char[16] pad16;
    int32_t f16;
};

struct s143 {
    signed char[16] pad16;
    int32_t f16;
};

struct s144 {
    signed char[8] pad8;
    int32_t f8;
};

struct s145 {
    signed char[8] pad8;
    int32_t f8;
};

struct s146 {
    signed char[8] pad8;
    int32_t f8;
};

struct s147 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_408989(int32_t ecx);

void fun_40893e(int32_t* a1, int32_t a2, int32_t a3, int32_t a4) {
    int32_t* v5;
    int32_t ebp6;
    int32_t esi7;
    struct s137* ebp8;
    struct s138* ebp9;
    struct s139* ebp10;
    struct s140* ebp11;
    int32_t ebp12;
    struct s141* ebp13;
    struct s142* ebp14;
    struct s143* ebp15;
    struct s144* ebp16;
    struct s145* ebp17;
    int32_t ecx18;
    struct s146* ebp19;
    struct s147* ebp20;
    int32_t ebp21;
    int32_t ebp22;

    v5 = reinterpret_cast<int32_t*>(__return_address());
    fun_408e70(0x40e828, 12, v5);
    *reinterpret_cast<uint32_t*>(ebp6 - 28) = 0;
    esi7 = ebp8->f12;
    ebp9->f8 = ebp10->f8 + esi7 * ebp11->f16;
    *reinterpret_cast<uint32_t*>(ebp12 - 4) = 0;
    while (ebp13->f16 = ebp14->f16 - 1, ebp15->f16 >= 0) {
        ebp16->f8 = ebp17->f8 - esi7;
        ecx18 = ebp19->f8;
        ebp20->f20(ecx18);
    }
    *reinterpret_cast<int32_t*>(ebp21 - 28) = 1;
    *reinterpret_cast<int32_t*>(ebp22 - 4) = -2;
    fun_408989(ecx18);
    fun_408eb5(ecx18, 0x40e828, 12, v5, a1);
    goto 0x40e828;
}

void fun_4089a2() {
    goto _3_YAXPAX_Z;
}

int32_t _amsg_exit = 0xed82;

void fun_408f3e() {
    goto _amsg_exit;
}

int32_t _initterm_e = 0xedd8;

int32_t fun_4090f2() {
    goto _initterm_e;
}

int32_t _initterm = 0xedcc;

void fun_4090ec(int32_t ecx) {
    goto _initterm;
}

struct s148 {
    int16_t f0;
    signed char[58] pad60;
    int32_t f60;
};

int32_t fun_408fa0(struct s148* a1);

struct s149 {
    signed char[8] pad8;
    int32_t f8;
    uint32_t f12;
    signed char[20] pad36;
    uint32_t f36;
};

struct s150 {
    signed char[60] pad60;
    int32_t f60;
};

struct s149* fun_408fe0(struct s150* a1, uint32_t a2);

uint32_t fun_409030(int32_t ecx, int32_t a2, int32_t a3, int32_t a4, int32_t a5, int32_t* a6, int32_t* a7, int32_t* a8) {
    void* eax9;
    int32_t eax10;
    struct s149* eax11;
    uint32_t eax12;

    eax9 = g0;
    g0 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4 - 16);
    eax10 = fun_408fa0(0x400000);
    if (!eax10 || (eax11 = fun_408fe0(0x400000, a2 - 0x400000), eax11 == 0)) {
        g0 = eax9;
        return 0;
    } else {
        eax12 = ~(eax11->f36 >> 31) & 1;
        g0 = eax9;
        return eax12;
    }
}

int32_t _XcptFilter = 0xedb2;

void fun_408f90() {
    goto _XcptFilter;
}

int32_t fun_4091e8(int32_t a1, int32_t a2, int32_t a3);

void fun_4091e2(int32_t a1, int32_t a2, int32_t a3, int32_t a4, int32_t a5);

void fun_4090f8(int32_t ecx) {
    int32_t eax2;

    eax2 = fun_4091e8(0, 0x10000, 0x30000);
    if (eax2) {
        fun_4091e2(0, 0, 0, 0, 0);
    }
    return;
}

int32_t _crt_debugger_hook = 0xee62;

void fun_4091d0(uint32_t ecx) {
    goto _crt_debugger_hook;
}

/*
 * ?terminate@@YAXXZ
 * void __cdecl terminate(void)
 */
int32_t terminate_YAXXZ = 0xed6e;

void fun_408e6a() {
    goto terminate_YAXXZ;
}

struct s151 {
    signed char[6] pad6;
    uint16_t f6;
    signed char[12] pad20;
    uint16_t f20;
};

struct s149* fun_408fe0(struct s150* a1, uint32_t a2) {
    struct s151* ecx3;
    uint32_t eax4;
    uint32_t esi5;
    uint32_t edx6;
    struct s149* eax7;
    uint32_t edi8;

    ecx3 = reinterpret_cast<struct s151*>(a1->f60 + reinterpret_cast<int32_t>(a1));
    eax4 = ecx3->f20;
    esi5 = ecx3->f6;
    edx6 = 0;
    eax7 = reinterpret_cast<struct s149*>(eax4 + reinterpret_cast<int32_t>(ecx3) + 24);
    if (!esi5) {
        addr_40901d_2:
        eax7 = reinterpret_cast<struct s149*>(0);
    } else {
        edi8 = a2;
        do {
            if (edi8 < eax7->f12) 
                continue;
            if (edi8 < eax7->f8 + eax7->f12) 
                break;
            ++edx6;
            ++eax7;
        } while (edx6 < esi5);
        goto addr_40901d_2;
    }
    return eax7;
}

int32_t _invoke_watson = 0xeec8;

void fun_4091e2(int32_t a1, int32_t a2, int32_t a3, int32_t a4, int32_t a5) {
    goto _invoke_watson;
}

int32_t fun_409120() {
    return 0;
}

int32_t InitializeCriticalSection = 0xeb24;

void fun_409248(int32_t ecx, int32_t a2) {
    int32_t ebp3;

    InitializeCriticalSection();
    goto ebp3;
}

int32_t DeleteCriticalSection = 0xeb40;

void fun_409258(int32_t ecx, int32_t a2) {
    int32_t ebp3;

    DeleteCriticalSection();
    goto ebp3;
}

int32_t fun_408cac();

int32_t fun_408d4d(int32_t ecx, int32_t a2) {
    int32_t eax3;
    uint32_t eax4;

    eax3 = fun_408cac();
    eax4 = reinterpret_cast<uint32_t>(-eax3);
    return reinterpret_cast<int32_t>(-(eax4 - (eax4 + reinterpret_cast<uint1_t>(eax4 < eax4 + reinterpret_cast<uint1_t>(!!eax3))))) - 1;
}

int32_t* g4332a8;

int32_t DecodePointer = 0xef4c;

void fun_4091ca();

int32_t* g4332a4;

struct s152 {
    signed char[8] pad8;
    int32_t f8;
};

int32_t EncodePointer = 0xef3c;

int32_t fun_4091c4(int32_t ecx, int32_t a2, int32_t a3, int32_t a4, int32_t a5, int32_t* a6, int32_t* a7);

void fun_408d44(int32_t ecx, int32_t a2, int32_t a3, int32_t a4, int32_t* a5, int32_t* a6);

struct s153 {
    signed char[8] pad8;
    int32_t f8;
};

int32_t _onexit = 0xee58;

int32_t fun_408cac() {
    int32_t* v1;
    int32_t esi2;
    int32_t eax3;
    int32_t ebp4;
    int32_t ecx5;
    int32_t ebp6;
    int32_t* v7;
    int32_t eax8;
    int32_t ebp9;
    int32_t* v10;
    int32_t eax11;
    int32_t ebp12;
    int32_t v13;
    int32_t ebp14;
    int32_t v15;
    int32_t ebp16;
    int32_t v17;
    struct s152* ebp18;
    int32_t esi19;
    int32_t eax20;
    int32_t eax21;
    int32_t ebp22;
    int32_t v23;
    int32_t ebp24;
    int32_t* eax25;
    int32_t v26;
    int32_t ebp27;
    int32_t* eax28;
    int32_t ebp29;
    int32_t v30;
    struct s153* ebp31;

    fun_408e70(0x40e868, 20, __return_address());
    v1 = g4332a8;
    esi2 = DecodePointer;
    eax3 = reinterpret_cast<int32_t>(esi2());
    *reinterpret_cast<int32_t*>(ebp4 - 28) = eax3;
    if (eax3 != -1) {
        fun_4091ca();
        ecx5 = 8;
        *reinterpret_cast<uint32_t*>(ebp6 - 4) = 0;
        v7 = g4332a8;
        eax8 = reinterpret_cast<int32_t>(esi2(8, v7));
        *reinterpret_cast<int32_t*>(ebp9 - 28) = eax8;
        v10 = g4332a4;
        eax11 = reinterpret_cast<int32_t>(esi2(8, v10, v7));
        *reinterpret_cast<int32_t*>(ebp12 - 32) = eax11;
        v13 = ebp14 - 32;
        v15 = ebp16 - 28;
        v17 = ebp18->f8;
        esi19 = EncodePointer;
        eax20 = reinterpret_cast<int32_t>(esi19(8, v17, v15, v13, v10, v7));
        eax21 = fun_4091c4(8, eax20, v17, v15, v13, v10, v7);
        *reinterpret_cast<int32_t*>(ebp22 - 36) = eax21;
        v23 = *reinterpret_cast<int32_t*>(ebp24 - 28);
        eax25 = reinterpret_cast<int32_t*>(esi19(8, v23, v13, v10, v7));
        g4332a8 = eax25;
        v26 = *reinterpret_cast<int32_t*>(ebp27 - 32);
        eax28 = reinterpret_cast<int32_t*>(esi19(8, v26, v23, v13, v10, v7));
        g4332a4 = eax28;
        *reinterpret_cast<int32_t*>(ebp29 - 4) = -2;
        fun_408d44(8, v26, v23, v13, v10, v7);
    } else {
        v30 = ebp31->f8;
        _onexit();
        ecx5 = v30;
    }
    fun_408eb5(ecx5, v1, 0x40e868, 20, __return_address());
    goto v1;
}

void fun_409280(struct s0* ecx) {
    int32_t v2;
    void* esp3;
    void* ecx4;
    int32_t* ecx5;
    int32_t eax6;
    int32_t eax7;
    int32_t eax8;
    uint32_t eax9;
    int32_t eax10;
    void* eax11;
    int32_t* eax12;

    v2 = reinterpret_cast<int32_t>(__return_address());
    esp3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    ecx4 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esp3) + 4);
    ecx5 = reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(ecx4) - eax6 & ~(eax7 - (eax8 + reinterpret_cast<uint1_t>(eax9 < eax10 + reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(ecx4) < reinterpret_cast<uint32_t>(eax11))))));
    eax12 = reinterpret_cast<int32_t*>(reinterpret_cast<uint32_t>(esp3) & 0xfffff000);
    while (reinterpret_cast<uint32_t>(ecx5) < reinterpret_cast<uint32_t>(eax12)) {
        eax12 = eax12 - 0x400;
    }
    *ecx5 = v2;
    goto *ecx5;
}

struct s154 {
    signed char[4] pad4;
    int32_t f4;
};

struct s155 {
    signed char[20] pad20;
    void* f20;
};

struct s156 {
    signed char[24] pad24;
    void* f24;
};

unsigned char fun_401e10(struct s0* a1, struct s0* a2) {
    int32_t edi3;
    int32_t* eax4;
    struct s0* ecx5;
    void* edx6;
    void** eax7;
    void* esi8;
    void* eax9;
    struct s154* eax10;
    struct s155* eax11;
    struct s156* eax12;
    void* ecx13;
    void* ecx14;
    void* eax15;

    edi3 = *eax4;
    if (!edi3 || (ecx5 = reinterpret_cast<struct s0*>(edi3 * 8), reinterpret_cast<unsigned char>(ecx5) > reinterpret_cast<unsigned char>(a2))) {
        return 0;
    } else {
        edx6 = *reinterpret_cast<void**>(reinterpret_cast<unsigned char>(ecx5) + reinterpret_cast<uint32_t>(eax7));
        esi8 = *reinterpret_cast<void**>(reinterpret_cast<unsigned char>(ecx5) + reinterpret_cast<uint32_t>(eax9) - 4);
        if (!edx6 && (!esi8 && (edi3 == 4 && eax10->f4 == 48))) {
            esi8 = eax11->f20;
            edx6 = eax12->f24;
        }
        ecx13 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edx6) + reinterpret_cast<uint32_t>(esi8));
        ecx14 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ecx13) & 15);
        eax15 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ecx13) & 3);
        if (eax15) {
            eax15 = reinterpret_cast<void*>(4 - reinterpret_cast<uint32_t>(eax15));
        }
        if (ecx14) {
            ecx14 = reinterpret_cast<void*>(16 - reinterpret_cast<uint32_t>(ecx14));
        }
        if (!reinterpret_cast<int1_t>(reinterpret_cast<uint32_t>(eax15) + reinterpret_cast<uint32_t>(edx6) + reinterpret_cast<uint32_t>(esi8) == a1)) {
            return static_cast<unsigned char>(reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(ecx14) + reinterpret_cast<uint32_t>(edx6) + reinterpret_cast<uint32_t>(esi8) == a1));
        } else {
            return 1;
        }
    }
}

unsigned char fun_401ea0(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4) {
    struct s0* eax5;
    struct s0* edi6;
    struct s0* ecx7;
    uint32_t* ecx8;
    void* edx9;
    void* esi10;
    struct s0* ebx11;
    uint32_t* v12;
    struct s0** eax13;
    void* ecx14;

    eax5 = a2;
    edi6 = *reinterpret_cast<struct s0**>(&eax5->f0);
    if (!edi6 || (ecx7 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi6) * 4), reinterpret_cast<unsigned char>(ecx7) > reinterpret_cast<unsigned char>(a4))) {
        return 0;
    } else {
        ecx8 = &ecx7->f4;
        edx9 = reinterpret_cast<void*>(0);
        esi10 = reinterpret_cast<void*>(0);
        ebx11 = reinterpret_cast<struct s0*>(0);
        v12 = ecx8;
        if (reinterpret_cast<signed char>(edi6) >= reinterpret_cast<signed char>(2)) {
            eax13 = &eax5->f5;
            ecx14 = reinterpret_cast<void*>((reinterpret_cast<unsigned char>(edi6) + 0xfffffffe >> 1) + 1);
            ebx11 = reinterpret_cast<struct s0*>(reinterpret_cast<uint32_t>(ecx14) + reinterpret_cast<uint32_t>(ecx14));
            do {
                edx9 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edx9) + reinterpret_cast<uint32_t>(*reinterpret_cast<void**>(eax13 - 4)));
                esi10 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi10) + reinterpret_cast<unsigned char>(*eax13));
                eax13 = eax13 + 8;
                ecx14 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ecx14) - 1);
            } while (ecx14);
            ecx8 = v12;
            eax5 = a2;
        }
        if (reinterpret_cast<unsigned char>(ebx11) < reinterpret_cast<unsigned char>(edi6)) {
            ecx8 = reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(ecx8) + reinterpret_cast<uint32_t>(*reinterpret_cast<void**>(reinterpret_cast<unsigned char>(eax5) + reinterpret_cast<unsigned char>(ebx11) * 4 + 4)));
        }
        return static_cast<unsigned char>(reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(esi10) + reinterpret_cast<uint32_t>(edx9) + reinterpret_cast<uint32_t>(ecx8) == a3));
    }
}

signed char fun_401f20(struct s0* a1, struct s0* a2) {
    struct s0* ebx3;
    struct s0* esi4;
    struct s0** edi5;
    struct s0* ecx6;
    uint32_t ecx7;
    uint32_t edx8;
    struct s0** edi9;

    ebx3 = a1;
    esi4 = *edi5;
    ecx6 = esi4;
    if (ecx6 && (reinterpret_cast<unsigned char>(ecx6) <= reinterpret_cast<unsigned char>(a2) && (!(*reinterpret_cast<unsigned char*>(&ecx6) & 3) && ecx6 != 4))) {
        ecx7 = reinterpret_cast<unsigned char>(ecx6) >> 2;
        edx8 = 1;
        if (ecx7 <= 1) {
            addr_401f62_3:
            return 1;
        } else {
            do {
                if (reinterpret_cast<unsigned char>(edi9[edx8 * 4]) < reinterpret_cast<unsigned char>(esi4)) 
                    break;
                esi4 = edi9[edx8 * 4];
                if (reinterpret_cast<unsigned char>(edi9[edx8 * 4]) > reinterpret_cast<unsigned char>(ebx3)) 
                    break;
                ++edx8;
            } while (edx8 < ecx7);
            goto addr_401f62_3;
        }
    }
    return 0;
}

struct s157 {
    signed char[4] pad4;
    struct s0* f4;
};

struct s158 {
    signed char[8] pad8;
    struct s0* f8;
};

unsigned char fun_401f70(struct s0* ecx, struct s0* a2) {
    struct s0* ebx3;
    uint32_t edi4;
    uint32_t* eax5;
    struct s0* edx6;
    struct s157* eax7;
    uint32_t ecx8;
    struct s0** esi9;
    struct s158* eax10;

    ebx3 = a2;
    edi4 = *eax5;
    if (!edi4 || (edi4 == 1 || (edi4 > 0xff || ((edx6 = eax7->f4, reinterpret_cast<unsigned char>(edx6) > reinterpret_cast<unsigned char>(ebx3)) || !edx6)))) {
        return 0;
    }
    ecx8 = 1;
    if (edi4 <= 1) {
        return static_cast<unsigned char>(reinterpret_cast<uint1_t>(reinterpret_cast<unsigned char>(ecx) < reinterpret_cast<unsigned char>(ebx3)));
    }
    esi9 = &eax10->f8;
    do {
        if (!*esi9) 
            break;
        if (reinterpret_cast<unsigned char>(*esi9) < reinterpret_cast<unsigned char>(edx6)) 
            break;
        if (reinterpret_cast<unsigned char>(*esi9) > reinterpret_cast<unsigned char>(ebx3)) 
            break;
        ++ecx8;
        esi9 = esi9 + 4;
        edx6 = *esi9;
    } while (ecx8 < edi4);
    goto addr_401fbc_10;
    return 0;
    addr_401fbc_10:
    return static_cast<unsigned char>(reinterpret_cast<uint1_t>(reinterpret_cast<unsigned char>(*esi9) < reinterpret_cast<unsigned char>(ebx3)));
}

signed char fun_401cf0(struct s0* ecx, void* a2) {
    void* ebp3;
    uint32_t eax4;
    uint32_t v5;
    void* ebx6;
    struct s0* esi7;
    struct s0* v8;
    uint32_t edi9;
    struct s0* esi10;
    uint32_t eax11;
    struct s0* v12;
    struct s0* tmp32_13;
    uint1_t cf14;
    uint32_t tmp32_15;
    uint1_t cf16;
    struct s0* eax17;
    uint32_t esi18;
    struct s0* edi19;
    void* eax20;
    struct s0* v21;
    uint32_t tmp32_22;
    uint1_t cf23;
    void* tmp32_24;
    uint1_t cf25;
    signed char al26;
    signed char al27;
    struct s0* eax28;

    ebp3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax4 = g410020;
    v5 = eax4 ^ reinterpret_cast<uint32_t>(ebp3);
    ebx6 = a2;
    if (reinterpret_cast<signed char>(ecx) < reinterpret_cast<signed char>(0x100)) {
        esi7 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ecx) & 0xf0);
    } else {
        esi7 = reinterpret_cast<struct s0*>(0x100);
    }
    v8 = esi7;
    if (reinterpret_cast<signed char>(ecx) <= reinterpret_cast<signed char>(0x100)) {
        edi9 = reinterpret_cast<uint32_t>(ebx6) + reinterpret_cast<unsigned char>(ecx) - 16;
        ecx = reinterpret_cast<struct s0*>(0);
        esi10 = reinterpret_cast<struct s0*>(0);
        eax11 = 0;
        v12 = reinterpret_cast<struct s0*>(0);
        do {
            if (*reinterpret_cast<signed char*>(eax11 + edi9)) 
                break;
            tmp32_13 = reinterpret_cast<struct s0*>(&ecx->f1);
            cf14 = reinterpret_cast<uint1_t>(reinterpret_cast<unsigned char>(tmp32_13) < reinterpret_cast<unsigned char>(ecx));
            ecx = tmp32_13;
            esi10 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(static_cast<uint32_t>(reinterpret_cast<unsigned char>(esi10))) + cf14);
            tmp32_15 = eax11 + 1;
            cf16 = reinterpret_cast<uint1_t>(tmp32_15 < eax11);
            eax11 = tmp32_15;
            v12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(static_cast<uint32_t>(reinterpret_cast<unsigned char>(v12))) + cf16);
        } while (!v12 && eax11 < 16);
        if (!reinterpret_cast<int1_t>(ecx == 16)) 
            goto addr_401d97_9;
        if (!esi10) 
            goto addr_401d84_11;
        addr_401d97_9:
        ebx6 = a2;
        esi7 = v8;
    }
    eax17 = reinterpret_cast<struct s0*>(0);
    if (reinterpret_cast<signed char>(esi7) <= reinterpret_cast<signed char>(0)) {
        addr_401dcd_13:
        esi18 = 0;
        edi19 = reinterpret_cast<struct s0*>(0);
        eax20 = reinterpret_cast<void*>(0);
        v21 = reinterpret_cast<struct s0*>(0);
    } else {
        do {
            if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebx6) + reinterpret_cast<unsigned char>(eax17) + 1)) 
                goto addr_401db2_15;
            eax17 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax17) + 16);
        } while (reinterpret_cast<signed char>(eax17) < reinterpret_cast<signed char>(esi7));
        goto addr_401db0_17;
    }
    do {
        if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(eax20) + reinterpret_cast<uint32_t>(ebx6))) 
            break;
        tmp32_22 = esi18 + 1;
        cf23 = reinterpret_cast<uint1_t>(tmp32_22 < esi18);
        esi18 = tmp32_22;
        edi19 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(static_cast<uint32_t>(reinterpret_cast<unsigned char>(edi19))) + cf23);
        tmp32_24 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax20) + 1);
        cf25 = reinterpret_cast<uint1_t>(reinterpret_cast<uint32_t>(tmp32_24) < reinterpret_cast<uint32_t>(eax20));
        eax20 = tmp32_24;
        v21 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(static_cast<uint32_t>(reinterpret_cast<unsigned char>(v21))) + cf25);
    } while (!v21 && reinterpret_cast<uint32_t>(eax20) < 16);
    if (esi18 != 16 || edi19) {
        addr_401dfa_21:
        al26 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v8);
        return al26;
    } else {
        addr_401d84_11:
        al27 = fun_4088c5(v5 ^ reinterpret_cast<uint32_t>(ebp3), v8);
        return al27;
    }
    addr_401db2_15:
    eax28 = reinterpret_cast<struct s0*>(16);
    if (reinterpret_cast<signed char>(esi7) > reinterpret_cast<signed char>(16)) {
        do {
            if (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebx6) + reinterpret_cast<unsigned char>(eax28) + 1) != 2) 
                goto addr_401dfa_21;
            eax28 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax28) + 16);
        } while (reinterpret_cast<signed char>(eax28) < reinterpret_cast<signed char>(esi7));
        goto addr_401dcd_13;
    }
    addr_401db0_17:
    goto addr_401dcd_13;
}

struct s159 {
    signed char f0;
    signed char[2047] pad2048;
    signed char f2048;
};

signed char fun_401490(struct s0* ecx, struct s0* a2, struct s0* a3, struct s0* a4) {
    void* ebp5;
    uint32_t eax6;
    uint32_t v7;
    struct s0* v8;
    struct s0* edx9;
    struct s0* v10;
    struct s0* edi11;
    struct s0* esi12;
    struct s0* ebx13;
    struct s0* v14;
    struct s0* v15;
    struct s0* v16;
    struct s0* v17;
    struct s0* eax18;
    struct s0* v19;
    struct s0* v20;
    struct s0* v21;
    struct s0* ebx22;
    struct s0* eax23;
    struct s0* v24;
    struct s159* ecx25;
    struct s0* v26;
    void* v27;
    void* v28;
    void* v29;
    void* v30;
    void* v31;
    void** edx32;
    void* esi33;
    struct s0* v34;
    void** v35;
    struct s159* eax36;
    void* v37;
    void** edx38;
    void** v39;
    void* edx40;
    int32_t eax41;
    signed char* ecx42;
    uint32_t eax43;
    void** v44;
    void** esi45;
    int32_t ecx46;
    int32_t* edi47;
    int32_t ecx48;
    int32_t* edi49;
    void** eax50;
    void** ecx51;
    signed char v52;
    void* edi53;
    void** v54;
    void** v55;
    void** v56;
    uint32_t edx57;
    void* ecx58;
    signed char al59;
    void** v60;
    void** edx61;
    void** v62;
    struct s0* esi63;
    void** eax64;
    struct s0* ecx65;
    void* eax66;
    struct s0* esi67;
    struct s0* eax68;
    struct s0* cl69;
    struct s0* eax70;
    void** v71;
    void** eax72;
    int32_t eax73;
    uint32_t ecx74;
    int32_t ecx75;
    signed char al76;
    void* v77;
    void* eax78;
    struct s0* esi79;
    void** eax80;
    void** v81;
    void** v82;
    uint32_t v83;
    void** eax84;
    void* eax85;
    void* v86;
    void* eax87;

    ebp5 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax6 = g410020;
    v7 = eax6 ^ reinterpret_cast<uint32_t>(ebp5);
    v8 = edx9;
    v10 = a4;
    eax18 = fun_4088ba(0x1011, edi11, esi12, ebx13, v8, v10, v14, v15, v16, v17);
    v19 = ecx;
    v20 = ecx;
    v21 = ecx;
    ebx22 = eax18;
    eax23 = *reinterpret_cast<struct s0**>(&v10->f0);
    v24 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ecx) + reinterpret_cast<unsigned char>(a3));
    ecx25 = reinterpret_cast<struct s159*>(&ebx22->f2);
    v26 = edx9;
    v27 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25));
    v28 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25) + 3);
    v29 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25) + 4);
    v30 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25) + 5);
    v31 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25) + 6);
    edx32 = reinterpret_cast<void**>(0);
    esi33 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25));
    v34 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax23) + reinterpret_cast<unsigned char>(edx9));
    v35 = reinterpret_cast<void**>(0);
    eax36 = ecx25;
    v37 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(ebx22) - reinterpret_cast<uint32_t>(ecx25) + 7);
    while (*reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v27) + reinterpret_cast<uint32_t>(eax36)) = *reinterpret_cast<signed char*>(&edx32), *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v29) + reinterpret_cast<uint32_t>(eax36)) = *reinterpret_cast<signed char*>(&edx32), *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v31) + reinterpret_cast<uint32_t>(eax36)) = *reinterpret_cast<signed char*>(&edx32), *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v28) + reinterpret_cast<uint32_t>(eax36)) = 0, *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v30) + reinterpret_cast<uint32_t>(eax36)) = 0, eax36->f0 = *reinterpret_cast<signed char*>(&edx32), edx38 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(edx32) + 1), *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(esi33) + reinterpret_cast<uint32_t>(eax36) + 1) = 0, *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v37) + reinterpret_cast<uint32_t>(eax36)) = 0, eax36 = reinterpret_cast<struct s159*>(reinterpret_cast<uint32_t>(eax36) + 8), v39 = edx38, !reinterpret_cast<int1_t>(edx38 == 0x100)) {
        edx32 = v39;
    }
    edx40 = v27;
    eax41 = 0;
    ecx42 = &ecx25->f2048;
    do {
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(v29)) = *reinterpret_cast<signed char*>(&eax41);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(v31)) = *reinterpret_cast<signed char*>(&eax41);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(v28)) = -1;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(edx40)) = *reinterpret_cast<signed char*>(&eax41);
        *ecx42 = *reinterpret_cast<signed char*>(&eax41);
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(esi33) + 1) = -1;
        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx42) + reinterpret_cast<uint32_t>(v30)) = -1;
        ++eax41;
        ecx42 = ecx42 + 7;
    } while (eax41 != 0x100);
    fun_408ca0(ebx22 + 0x180, 0, 0x100);
    eax43 = reinterpret_cast<unsigned char>(a2) - 1;
    if (!eax43) {
        v44 = reinterpret_cast<void**>(18);
    } else {
        if (!(eax43 - 2)) {
            v44 = reinterpret_cast<void**>(17);
        } else {
            esi45 = reinterpret_cast<void**>(18);
            v44 = reinterpret_cast<void**>(18);
            goto addr_4015ed_11;
        }
    }
    esi45 = v44;
    addr_4015ed_11:
    ecx46 = 0x100;
    edi47 = reinterpret_cast<int32_t*>(0x430e54);
    while (ecx46) {
        --ecx46;
        *edi47 = 0x1000;
        ++edi47;
        ++esi45;
    }
    ecx48 = 0x1000;
    edi49 = reinterpret_cast<int32_t*>(0x423e40);
    while (ecx48) {
        --ecx48;
        *edi49 = 0x1000;
        ++edi49;
        ++esi45;
    }
    eax50 = reinterpret_cast<void**>(0);
    ecx51 = reinterpret_cast<void**>(0x1000 - reinterpret_cast<uint32_t>(esi45));
    v52 = 1;
    edi53 = reinterpret_cast<void*>(1);
    v54 = reinterpret_cast<void**>(0);
    v55 = ecx51;
    v56 = reinterpret_cast<void**>(0);
    if (reinterpret_cast<int32_t>(esi45) > reinterpret_cast<int32_t>(0)) {
        ebx22 = ebx22;
        do {
            if (reinterpret_cast<unsigned char>(v19) >= reinterpret_cast<unsigned char>(v24)) 
                break;
            edx57 = reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&v19->f0));
            v19 = reinterpret_cast<struct s0*>(&v19->f1);
            ecx58 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ecx51) + reinterpret_cast<uint32_t>(eax50));
            eax50 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(eax50) + 1);
            *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ecx58) + reinterpret_cast<unsigned char>(ebx22)) = *reinterpret_cast<signed char*>(&edx57);
            ecx51 = v55;
        } while (reinterpret_cast<int32_t>(eax50) < reinterpret_cast<int32_t>(esi45));
        v56 = eax50;
    }
    if (!eax50) {
        addr_40191b_24:
        _V_YAXPAX_Z(ebx22);
        al59 = fun_4088c5(v7 ^ reinterpret_cast<uint32_t>(ebp5), v8);
        return al59;
    } else {
        if (reinterpret_cast<int32_t>(esi45) >= reinterpret_cast<int32_t>(1)) {
            v60 = esi45;
            do {
                fun_401250(esi45, reinterpret_cast<uint32_t>(ebp5) + 0xffffffac, reinterpret_cast<uint32_t>(ebp5) + 0xffffffc0, ebx22);
                esi45 = v44;
                v60 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v60) - 1);
            } while (v60);
        }
        fun_401250(esi45, reinterpret_cast<uint32_t>(ebp5) + 0xffffffac, reinterpret_cast<uint32_t>(ebp5) + 0xffffffc0, ebx22);
        edx61 = v62;
        do {
            esi63 = a2;
            if (reinterpret_cast<signed char>(esi63) < reinterpret_cast<signed char>(3)) {
                eax64 = v35;
            } else {
                ecx65 = v20;
                eax66 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(v21) - reinterpret_cast<unsigned char>(ecx65));
                if (reinterpret_cast<uint1_t>(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(eax66) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(eax66 == 0))) {
                    esi67 = v24;
                    eax68 = reinterpret_cast<struct s0*>(&ecx65->f1);
                    v21 = eax68;
                    if (reinterpret_cast<unsigned char>(eax68) < reinterpret_cast<unsigned char>(esi67)) {
                        cl69 = *reinterpret_cast<struct s0**>(&ecx65->f0);
                        do {
                            if (*reinterpret_cast<struct s0**>(&v21->f0) != cl69) 
                                break;
                            eax70 = reinterpret_cast<struct s0*>(&v21->f1);
                            v21 = eax70;
                        } while (reinterpret_cast<unsigned char>(eax70) < reinterpret_cast<unsigned char>(esi67));
                    }
                    ecx65 = v20;
                    esi63 = a2;
                }
                eax64 = reinterpret_cast<void**>(reinterpret_cast<unsigned char>(v21) - reinterpret_cast<unsigned char>(ecx65));
                v35 = eax64;
            }
            if (reinterpret_cast<int32_t>(edx61) > reinterpret_cast<int32_t>(v56)) {
                edx61 = v56;
                v71 = edx61;
            }
            if (reinterpret_cast<signed char>(esi63) < reinterpret_cast<signed char>(3)) 
                goto addr_401726_42;
            if (reinterpret_cast<int32_t>(eax64) <= reinterpret_cast<int32_t>(0x112)) {
                if (reinterpret_cast<int32_t>(eax64) <= reinterpret_cast<int32_t>(3)) 
                    goto addr_401726_42;
            } else {
                v35 = reinterpret_cast<void**>(0x112);
                eax64 = reinterpret_cast<void**>(0x112);
            }
            if (reinterpret_cast<int32_t>(eax64) < reinterpret_cast<int32_t>(edx61)) {
                addr_401726_42:
                if (reinterpret_cast<int32_t>(edx61) >= reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(v24) - reinterpret_cast<unsigned char>(v19))) {
                    edx61 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(edx61) - 1);
                    v71 = edx61;
                }
            } else {
                if (reinterpret_cast<int32_t>(eax64) >= reinterpret_cast<int32_t>(reinterpret_cast<unsigned char>(v24) - reinterpret_cast<unsigned char>(v19))) {
                    eax64 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(eax64) - 1);
                    v35 = eax64;
                }
            }
            if (reinterpret_cast<signed char>(esi63) < reinterpret_cast<signed char>(3) || (reinterpret_cast<int32_t>(eax64) <= reinterpret_cast<int32_t>(3) || reinterpret_cast<int32_t>(eax64) < reinterpret_cast<int32_t>(edx61))) {
                if (reinterpret_cast<int32_t>(edx61) <= reinterpret_cast<int32_t>(2)) {
                    edx61 = reinterpret_cast<void**>(1);
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd0) = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v55) + reinterpret_cast<unsigned char>(ebx22));
                    v71 = reinterpret_cast<void**>(1);
                    edi53 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi53) + 1);
                } else {
                    eax72 = v39;
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd0) = *reinterpret_cast<signed char*>(&eax72);
                    eax73 = reinterpret_cast<int32_t>(eax72) >> 4;
                    ecx74 = reinterpret_cast<uint32_t>(edx61) + 0xfffffffd;
                    ecx75 = reinterpret_cast<int32_t>(v39) >> 4;
                    *reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd1) = reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(*reinterpret_cast<unsigned char*>(&eax73) ^ *reinterpret_cast<unsigned char*>(&ecx74)) & 15) ^ *reinterpret_cast<unsigned char*>(&ecx75));
                    edi53 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi53) + 2);
                }
            } else {
                edx61 = eax64;
                v71 = edx61;
                v39 = v55;
                if (reinterpret_cast<int32_t>(eax64) > reinterpret_cast<int32_t>(18)) {
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd0) = reinterpret_cast<signed char>(*reinterpret_cast<signed char*>(&eax64) - 19);
                    al76 = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v55) + reinterpret_cast<unsigned char>(ebx22));
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd1) = 15;
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd2) = al76;
                    edi53 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi53) + 3);
                } else {
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd0) = *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v55) + reinterpret_cast<unsigned char>(ebx22));
                    *reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(ebp5) + reinterpret_cast<uint32_t>(edi53) + 0xffffffd1) = reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(*reinterpret_cast<signed char*>(&eax64) - 3) << 4) | 15);
                    edi53 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(edi53) + 2);
                }
            }
            v52 = reinterpret_cast<signed char>(v52 << 1);
            v77 = edi53;
            if (!v52) {
                eax78 = reinterpret_cast<void*>(0);
                if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edi53) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edi53 == 0))) {
                    edi53 = edi53;
                    do {
                        esi79 = v26;
                        if (reinterpret_cast<unsigned char>(esi79) >= reinterpret_cast<unsigned char>(v34)) 
                            goto addr_40190d_61;
                        *reinterpret_cast<struct s0**>(&esi79->f0) = reinterpret_cast<struct s0*>(1);
                        eax78 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax78) + 1);
                        v26 = reinterpret_cast<struct s0*>(&esi79->f1);
                    } while (reinterpret_cast<int32_t>(eax78) < reinterpret_cast<int32_t>(edi53));
                }
                v77 = reinterpret_cast<void*>(1);
                edi53 = reinterpret_cast<void*>(1);
                v52 = 1;
            }
            eax80 = edx61;
            v81 = eax80;
            v82 = reinterpret_cast<void**>(0);
            if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edx61) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edx61 == 0))) {
                do {
                    if (reinterpret_cast<unsigned char>(v19) >= reinterpret_cast<unsigned char>(v24)) 
                        break;
                    v83 = reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&v19->f0));
                    v19 = reinterpret_cast<struct s0*>(&v19->f1);
                    fun_401390();
                    *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v54) + reinterpret_cast<unsigned char>(ebx22)) = *reinterpret_cast<signed char*>(&v83);
                    if (reinterpret_cast<int32_t>(v54) < reinterpret_cast<int32_t>(reinterpret_cast<uint32_t>(v44) + 0xffffffff)) {
                        *reinterpret_cast<signed char*>(reinterpret_cast<uint32_t>(v54) + reinterpret_cast<unsigned char>(ebx22) + 0x1000) = *reinterpret_cast<signed char*>(&v83);
                    }
                    v20 = reinterpret_cast<struct s0*>(&v20->f1);
                    v54 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v54) + 1 & 0xfff);
                    v55 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v55) + 1 & 0xfff);
                    fun_401250(v44, reinterpret_cast<uint32_t>(ebp5) + 0xffffffac, reinterpret_cast<uint32_t>(ebp5) + 0xffffffc0, ebx22);
                    edi53 = v77;
                    eax84 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v82) + 1);
                    v82 = eax84;
                    eax80 = v81;
                } while (reinterpret_cast<int32_t>(eax84) < reinterpret_cast<int32_t>(v81));
                edx61 = v71;
            }
            if (reinterpret_cast<int32_t>(v82) < reinterpret_cast<int32_t>(eax80)) {
                eax85 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax80) - reinterpret_cast<uint32_t>(v82));
                v20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(v20) + reinterpret_cast<uint32_t>(eax85));
                v86 = eax85;
                do {
                    fun_401390();
                    v56 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v56) - 1);
                    v54 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v54) + 1 & 0xfff);
                    v55 = reinterpret_cast<void**>(reinterpret_cast<uint32_t>(v55) + 1 & 0xfff);
                    if (v56) {
                        fun_401250(v44, reinterpret_cast<uint32_t>(ebp5) + 0xffffffac, reinterpret_cast<uint32_t>(ebp5) + 0xffffffc0, ebx22);
                    }
                    v86 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(v86) - 1);
                } while (v86);
                edx61 = v71;
                edi53 = v77;
            }
        } while (reinterpret_cast<int32_t>(v56) > reinterpret_cast<int32_t>(0));
    }
    if (reinterpret_cast<int32_t>(edi53) > reinterpret_cast<int32_t>(1) && (eax87 = reinterpret_cast<void*>(0), !(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edi53) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edi53 == 0)))) {
        do {
            if (reinterpret_cast<unsigned char>(v26) >= reinterpret_cast<unsigned char>(v34)) 
                break;
            *reinterpret_cast<struct s0**>(&v26->f0) = reinterpret_cast<struct s0*>(1);
            eax87 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(eax87) + 1);
            v26 = reinterpret_cast<struct s0*>(&v26->f1);
        } while (reinterpret_cast<int32_t>(eax87) < reinterpret_cast<int32_t>(edi53));
    }
    esi79 = v26;
    addr_40190d_61:
    *reinterpret_cast<struct s0**>(&v10->f0) = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi79) - reinterpret_cast<unsigned char>(v8));
    goto addr_40191b_24;
}

void fun_401110(int32_t* a1) {
    int32_t* ebx2;
    int32_t esi3;
    int32_t eax4;
    int32_t edx5;
    int32_t edi6;
    int32_t eax7;
    signed char* eax8;
    int32_t eax9;
    int32_t ecx10;
    int32_t esi11;

    ebx2 = a1;
    esi3 = eax4;
    edx5 = 0;
    edi6 = eax7 + 1;
    do {
        ++eax8;
    } while (*eax8);
    eax9 = reinterpret_cast<int32_t>(eax8) - edi6;
    ecx10 = 0;
    *ebx2 = 0;
    if (!(reinterpret_cast<uint1_t>(eax9 < 0) | reinterpret_cast<uint1_t>(eax9 == 0))) {
        do {
            ++edx5;
            if (*reinterpret_cast<signed char*>(ecx10 + esi3) == 46) {
                edx5 = 0;
            }
            ++ecx10;
        } while (ecx10 < eax9);
    }
    if (edx5 != eax9) {
        strncat(ebx2, esi3, eax9 - edx5 - 1);
        return;
    } else {
        esi11 = strncat;
        esi11(ebx2, esi3, eax9);
        esi11(ebx2, "_", 2, ebx2, esi3, eax9);
        return;
    }
}

int32_t fun_405e60(struct s0** ecx) {
    void* ebp2;
    int32_t eax3;
    void* v4;
    void* ecx5;

    ebp2 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4);
    eax3 = 0;
    if (ecx && (reinterpret_cast<uint32_t>(ecx) > 0xffffffff || (eax3 = reinterpret_cast<int32_t>(_2_YAPAXI_Z(ecx)), !eax3))) {
        v4 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(ebp2) - 4);
        _0exception_std_QAE_ABQBD_Z(reinterpret_cast<int32_t>(ebp2) - 16, v4);
        ecx5 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(ebp2) - 16);
        eax3 = fun_409268(ecx5, ecx5, 0x40e8e8, v4, 0x40e530);
    }
    return eax3;
}

unsigned char* fun_4085d0(struct s0* ecx, struct s0* a2) {
    struct s0* esi3;
    uint32_t eax4;
    int32_t eax5;
    uint32_t edi6;
    uint32_t eax7;
    uint32_t edx8;
    uint32_t eax9;
    uint32_t edx10;
    uint32_t eax11;
    uint32_t edx12;
    uint32_t eax13;
    uint32_t edx14;
    uint32_t edx15;
    uint32_t eax16;

    esi3 = a2;
    eax4 = reinterpret_cast<uint32_t>(~eax5);
    if (esi3) {
        ecx = ecx;
        do {
            if (!(*reinterpret_cast<unsigned char*>(&ecx) & 3)) 
                break;
            eax4 = eax4 >> 8 ^ *reinterpret_cast<uint32_t*>(((static_cast<uint32_t>(reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&ecx->f0))) ^ eax4) & 0xff) * 4 + 0x40a890);
            ecx = reinterpret_cast<struct s0*>(&ecx->f1);
            esi3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi3) - 1);
        } while (esi3);
    }
    if (reinterpret_cast<unsigned char>(esi3) >= reinterpret_cast<unsigned char>(32)) {
        edi6 = reinterpret_cast<unsigned char>(esi3) >> 5;
        do {
            eax7 = eax4 ^ reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&ecx->f0));
            edx8 = *reinterpret_cast<uint32_t*>((eax7 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((eax7 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((eax7 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((eax7 & 0xff) * 4 + 0x40b490) ^ ecx->f4;
            eax9 = *reinterpret_cast<uint32_t*>((edx8 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((edx8 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((edx8 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((edx8 & 0xff) * 4 + 0x40b490) ^ reinterpret_cast<unsigned char>(ecx->f5);
            edx10 = *reinterpret_cast<uint32_t*>((eax9 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((eax9 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((eax9 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((eax9 & 0xff) * 4 + 0x40b490) ^ *reinterpret_cast<uint32_t*>(reinterpret_cast<unsigned char>(ecx) + 12);
            eax11 = *reinterpret_cast<uint32_t*>((edx10 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((edx10 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((edx10 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((edx10 & 0xff) * 4 + 0x40b490) ^ reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(reinterpret_cast<unsigned char>(ecx) + 16));
            edx12 = *reinterpret_cast<uint32_t*>((eax11 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((eax11 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((eax11 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((eax11 & 0xff) * 4 + 0x40b490) ^ reinterpret_cast<unsigned char>((ecx + 2)->f0);
            ecx = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(ecx) + 32);
            eax13 = *reinterpret_cast<uint32_t*>((edx12 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((edx12 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((edx12 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((edx12 & 0xff) * 4 + 0x40b490) ^ *reinterpret_cast<uint32_t*>(reinterpret_cast<unsigned char>(ecx) + 0xfffffff8);
            esi3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi3) - 32);
            edx14 = *reinterpret_cast<uint32_t*>((eax13 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((eax13 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((eax13 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((eax13 & 0xff) * 4 + 0x40b490) ^ *reinterpret_cast<uint32_t*>(reinterpret_cast<unsigned char>(ecx) + 0xfffffffc);
            eax4 = *reinterpret_cast<uint32_t*>((edx14 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((edx14 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((edx14 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((edx14 & 0xff) * 4 + 0x40b490);
            --edi6;
        } while (edi6);
    }
    if (reinterpret_cast<unsigned char>(esi3) >= reinterpret_cast<unsigned char>(4)) {
        edx15 = reinterpret_cast<unsigned char>(esi3) >> 2;
        do {
            eax16 = eax4 ^ reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&ecx->f0));
            ecx = reinterpret_cast<struct s0*>(&ecx->f4);
            esi3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi3) - 4);
            --edx15;
            eax4 = *reinterpret_cast<uint32_t*>((eax16 >> 16 & 0xff) * 4 + 0x40ac90) ^ *reinterpret_cast<uint32_t*>((eax16 >> 8 & 0xff) * 4 + 0x40b090) ^ *reinterpret_cast<uint32_t*>((eax16 >> 24) * 4 + 0x40a890) ^ *reinterpret_cast<uint32_t*>((eax16 & 0xff) * 4 + 0x40b490);
        } while (edx15);
    }
    if (esi3) {
        do {
            eax4 = eax4 >> 8 ^ *reinterpret_cast<uint32_t*>(((static_cast<uint32_t>(reinterpret_cast<unsigned char>(*reinterpret_cast<struct s0**>(&ecx->f0))) ^ eax4) & 0xff) * 4 + 0x40a890);
            ecx = reinterpret_cast<struct s0*>(&ecx->f1);
            esi3 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(esi3) - 1);
        } while (esi3);
    }
    return ~eax4;
}

struct s161 {
    signed char[44] pad44;
    int32_t f44;
};

struct s162 {
    signed char[1] pad1;
    uint16_t* f1;
};

struct s163 {
    signed char[1] pad1;
    uint16_t* f1;
};

struct s160 {
    struct s161* f0;
    signed char[4] pad8;
    void* f8;
    signed char[8] pad20;
    uint16_t* f20;
    signed char[108] pad132;
    int32_t f132;
    int32_t f136;
    signed char[8] pad148;
    uint16_t f148;
    signed char[2290] pad2440;
    uint16_t f2440;
    signed char[398] pad2840;
    uint16_t* f2840;
    signed char[3] pad2844;
    struct s162* f2844;
    signed char[4] pad2852;
    uint16_t* f2852;
    signed char[3] pad2856;
    struct s163* f2856;
    signed char[2940] pad5800;
    int32_t f5800;
    int32_t f5804;
    signed char[8] pad5816;
    unsigned char f5816;
    unsigned char f5817;
    signed char[2] pad5820;
    uint16_t* f5820;
};

signed char fun_406fb0(uint16_t** ecx, uint16_t** a2, uint16_t** a3, uint16_t** a4, uint16_t** a5, uint16_t** a6);

uint16_t** fun_407810();

void fun_407e20(uint16_t* a1, uint16_t* a2, uint16_t** a3, uint16_t** a4, uint16_t** a5);

void fun_4078e0(uint16_t** ecx, uint16_t** a2, uint16_t** a3, uint16_t** a4);

void fun_406bc0(uint16_t* ecx);

void fun_407bd0(uint16_t** ecx, uint16_t** a2, uint16_t** a3) {
    int1_t less_or_equal4;
    struct s160* eax5;
    uint16_t** v6;
    uint32_t* edx7;
    struct s161* ebx8;
    int32_t eax9;
    uint16_t** v10;
    uint16_t** esi11;
    uint16_t** ebx12;
    uint16_t** ebp13;
    uint16_t** ecx14;
    uint16_t** eax15;
    uint32_t* ecx16;
    uint16_t* ecx17;
    int32_t eax18;
    int32_t edi19;
    uint16_t* ecx20;
    uint16_t* ecx21;
    uint32_t ebx22;
    uint32_t ebx23;
    uint16_t* edx24;
    uint16_t* ecx25;
    int32_t edx26;
    int32_t edi27;
    uint16_t* ecx28;
    uint32_t ebx29;
    uint32_t ebx30;
    uint16_t* ebx31;
    struct s163* ecx32;
    struct s162* edx33;
    uint16_t** v34;
    uint16_t** ecx35;
    uint16_t** v36;
    uint16_t* edi37;
    int32_t edi38;
    void* edx39;
    unsigned char bl40;

    less_or_equal4 = eax5->f132 <= 0;
    v6 = reinterpret_cast<uint16_t**>(0);
    if (less_or_equal4) {
        edx7 = reinterpret_cast<uint32_t*>(a3 + 5);
    } else {
        ebx8 = eax5->f0;
        if (ebx8->f44 == 2) {
            eax9 = fun_408230();
            ebx8->f44 = eax9;
        }
        v10 = reinterpret_cast<uint16_t**>(&eax5->f2840);
        fun_406fb0(ecx, v10, esi11, ebx12, 0, ebp13);
        ecx14 = reinterpret_cast<uint16_t**>(&eax5->f2852);
        fun_406fb0(ecx14, ecx14, v10, esi11, ebx12, 0);
        eax15 = fun_407810();
        ecx16 = reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(eax5->f5800 + 10) >> 3);
        edx7 = reinterpret_cast<uint32_t*>(reinterpret_cast<uint32_t>(eax5->f5804 + 10) >> 3);
        v6 = eax15;
        if (reinterpret_cast<uint32_t>(edx7) > reinterpret_cast<uint32_t>(ecx16)) 
            goto addr_407c43_6; else 
            goto addr_407c39_7;
    }
    addr_407c41_8:
    ecx16 = edx7;
    addr_407c43_6:
    if (reinterpret_cast<uint32_t>(a3 + 4) > reinterpret_cast<uint32_t>(ecx16) || !a2) {
        if (eax5->f136 == 4 || edx7 == ecx16) {
            ecx17 = eax5->f5820;
            eax18 = edi19 + 2;
            if (reinterpret_cast<int32_t>(ecx17) <= 13) {
                eax5->f5816 = reinterpret_cast<unsigned char>(eax5->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax18) << *reinterpret_cast<unsigned char*>(&ecx17)));
                ecx20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(ecx17) + 3);
                eax5->f5820 = ecx20;
            } else {
                ecx21 = eax5->f20;
                eax5->f5816 = reinterpret_cast<unsigned char>(eax5->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax18) << *reinterpret_cast<unsigned char*>(&ecx17)));
                ebx22 = eax5->f5816;
                *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(ecx21) + reinterpret_cast<int32_t>(eax5->f8)) = *reinterpret_cast<signed char*>(&ebx22);
                eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
                ebx23 = eax5->f5817;
                ecx20 = eax5->f20;
                *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(ecx20) + reinterpret_cast<int32_t>(eax5->f8)) = *reinterpret_cast<signed char*>(&ebx23);
                edx24 = eax5->f5820;
                eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
                *reinterpret_cast<signed char*>(&ecx20) = reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx24));
                eax5->f5820 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(edx24) - 13);
                eax5->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&eax18) >> *reinterpret_cast<signed char*>(&ecx20));
            }
            fun_407e20(0x40c9e0, 0x40ce60, esi11, ebx12, v6);
        } else {
            ecx25 = eax5->f5820;
            edx26 = edi27 + 4;
            if (reinterpret_cast<int32_t>(ecx25) <= 13) {
                eax5->f5816 = reinterpret_cast<unsigned char>(eax5->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx26) << *reinterpret_cast<unsigned char*>(&ecx25)));
                eax5->f5820 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(ecx25) + 3);
            } else {
                ecx28 = eax5->f20;
                eax5->f5816 = reinterpret_cast<unsigned char>(eax5->f5816 | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx26) << *reinterpret_cast<unsigned char*>(&ecx25)));
                ebx29 = eax5->f5816;
                *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(ecx28) + reinterpret_cast<int32_t>(eax5->f8)) = *reinterpret_cast<signed char*>(&ebx29);
                eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
                ebx30 = eax5->f5817;
                *reinterpret_cast<signed char*>(reinterpret_cast<int32_t>(eax5->f20) + reinterpret_cast<int32_t>(eax5->f8)) = *reinterpret_cast<signed char*>(&ebx30);
                ebx31 = eax5->f5820;
                eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
                eax5->f5820 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(ebx31) - 13);
                eax5->f5816 = reinterpret_cast<unsigned char>(*reinterpret_cast<uint16_t*>(&edx26) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&ebx31)));
            }
            ecx32 = eax5->f2856;
            edx33 = eax5->f2844;
            v34 = v6 + 1;
            ecx35 = reinterpret_cast<uint16_t**>(&ecx32->f1);
            v36 = reinterpret_cast<uint16_t**>(&edx33->f1);
            fun_4078e0(ecx35, v36, ecx35, v34);
            ecx20 = &eax5->f148;
            fun_407e20(ecx20, &eax5->f2440, v36, ecx35, v34);
            goto addr_407daa_18;
        }
    } else {
        ecx20 = edi37;
        fun_407b30(ecx20, a2, a3);
    }
    addr_407daa_18:
    fun_406bc0(ecx20);
    if (edi38) {
        if (reinterpret_cast<int32_t>(eax5->f5820) <= 8) {
            if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(eax5->f5820) < 0) | reinterpret_cast<uint1_t>(eax5->f5820 == 0))) {
                *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(eax5->f8) + reinterpret_cast<int32_t>(eax5->f20)) = eax5->f5816;
                eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
            }
        } else {
            *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(eax5->f20) + reinterpret_cast<int32_t>(eax5->f8)) = eax5->f5816;
            edx39 = eax5->f8;
            bl40 = eax5->f5817;
            eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
            *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(eax5->f20) + reinterpret_cast<int32_t>(edx39)) = bl40;
            eax5->f20 = reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(eax5->f20) + 1);
        }
        eax5->f5816 = reinterpret_cast<unsigned char>(0);
        eax5->f5820 = reinterpret_cast<uint16_t*>(0);
    }
    return;
    addr_407c39_7:
    goto addr_407c41_8;
}

struct s164 {
    signed char[8] pad8;
    struct s0* f8;
    signed char[7] pad16;
    struct s0* f16;
    signed char[3] pad20;
    struct s0* f20;
};

struct s165 {
    signed char[12] pad12;
    struct s0* f12;
    signed char[3] pad16;
    struct s0* f16;
    signed char[3] pad20;
    uint32_t f20;
    signed char[4] pad28;
    struct s164* f28;
};

void fun_405ed0() {
    struct s164* eax1;
    struct s165* eax2;
    struct s0* ecx3;
    struct s0* edi4;
    struct s0* eax5;
    struct s0* ecx6;
    struct s0* edi7;
    struct s0* esi8;
    struct s164* eax9;

    eax1 = eax2->f28;
    ecx3 = eax2->f16;
    edi4 = eax1->f20;
    if (reinterpret_cast<unsigned char>(edi4) > reinterpret_cast<unsigned char>(ecx3)) {
        edi4 = ecx3;
    }
    if (edi4 && (eax5 = eax1->f16, ecx6 = eax2->f12, fun_408ca6(ecx6, ecx6, eax5, edi4, edi7, esi8), eax9 = eax2->f28, eax2->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax2->f12) + reinterpret_cast<unsigned char>(edi4)), eax9->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax9->f16) + reinterpret_cast<unsigned char>(edi4)), eax2->f20 = eax2->f20 + reinterpret_cast<unsigned char>(edi4), eax2->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax2->f16) - reinterpret_cast<unsigned char>(edi4)), eax2->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax2->f28->f20) - reinterpret_cast<unsigned char>(edi4)), !eax2->f28->f20)) {
        eax2->f28->f16 = eax2->f28->f8;
    }
    return;
}

struct s166 {
    signed char[2] pad2;
    uint16_t f2;
    signed char[2] pad6;
    uint16_t f6;
};

void fun_4071b0(uint16_t** a1, uint16_t** a2, uint16_t** a3, uint16_t** a4) {
    uint32_t eax5;
    struct s166* eax6;
    uint32_t edx7;
    uint32_t v8;
    uint32_t ecx9;
    uint32_t esi10;
    uint16_t* v11;
    uint16_t** edi12;
    uint16_t** v13;
    uint32_t ebx14;
    uint32_t eax15;

    eax5 = eax6->f2;
    edx7 = 0;
    v8 = 0xffffffff;
    ecx9 = 7;
    esi10 = 4;
    if (!eax5) {
        ecx9 = 0x8a;
        esi10 = eax5 + 3;
    }
    *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(eax6) + reinterpret_cast<uint16_t>(a2) * 4 + 6) = -1;
    if (reinterpret_cast<int16_t>(a2) >= reinterpret_cast<int16_t>(0)) {
        v11 = &eax6->f6;
        edi12 = a1;
        v13 = a2 + 1;
        ebx14 = eax5;
        do {
            eax15 = ebx14;
            ebx14 = *v11;
            ++edx7;
            if (reinterpret_cast<int32_t>(edx7) >= reinterpret_cast<int32_t>(ecx9) || eax15 != ebx14) {
                if (reinterpret_cast<int32_t>(edx7) >= reinterpret_cast<int32_t>(esi10)) {
                    if (!eax15) {
                        if (reinterpret_cast<int32_t>(edx7) > reinterpret_cast<int32_t>(10)) {
                            *reinterpret_cast<int16_t*>(edi12 + 0xac4) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(edi12 + 0xac4) + 1);
                        } else {
                            *reinterpret_cast<int16_t*>(edi12 + 0xac0) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(edi12 + 0xac0) + 1);
                        }
                    } else {
                        if (eax15 != v8) {
                            *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(edi12 + eax15 * 4) + 0xa7c) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(edi12 + eax15 * 4) + 0xa7c) + 1);
                        }
                        *reinterpret_cast<int16_t*>(edi12 + 0xabc) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(edi12 + 0xabc) + 1);
                    }
                } else {
                    *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(edi12 + eax15 * 4) + 0xa7c) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(edi12 + eax15 * 4) + 0xa7c) + *reinterpret_cast<int16_t*>(&edx7));
                }
                edx7 = 0;
                v8 = eax15;
                if (ebx14) {
                    if (eax15 != ebx14) {
                        ecx9 = 7;
                        esi10 = 4;
                    } else {
                        ecx9 = 6;
                        esi10 = 3;
                    }
                } else {
                    ecx9 = 0x8a;
                    esi10 = 3;
                }
            }
            v11 = v11 + 2;
            --v13;
        } while (v13);
    }
    return;
}

struct s167 {
    signed char[2912] pad2912;
    int32_t f2912;
};

struct s168 {
    signed char[2912] pad2912;
    uint32_t f2912;
};

struct s169 {
    signed char[2912] pad2912;
    int32_t f2912;
};

struct s170 {
    signed char[2912] pad2912;
    uint32_t f2912;
};

struct s171 {
    signed char[2912] pad2912;
    int32_t f2912;
};

signed char fun_406fb0(uint16_t** ecx, uint16_t** a2, uint16_t** a3, uint16_t** a4, uint16_t** a5, uint16_t** a6) {
    uint16_t* edi7;
    uint32_t edx8;
    void* ebx9;
    uint32_t ecx10;
    uint32_t eax11;
    uint32_t v12;
    uint32_t v13;
    int32_t esi14;
    int32_t esi15;
    int32_t esi16;
    int32_t esi17;
    void* esi18;
    int32_t esi19;
    uint32_t esi20;
    int32_t esi21;
    uint32_t eax22;
    int32_t esi23;
    int32_t esi24;
    void* esi25;
    int32_t esi26;
    int32_t esi27;
    int32_t esi28;
    int32_t esi29;
    int32_t esi30;
    int32_t esi31;
    int32_t esi32;
    int32_t ebx33;
    int32_t esi34;
    uint32_t v35;
    uint32_t ecx36;
    void* esi37;
    int32_t esi38;
    int32_t ebx39;
    struct s167* esi40;
    int32_t esi41;
    struct s168* esi42;
    int32_t eax43;
    struct s169* esi44;
    int32_t esi45;
    int32_t esi46;
    void* esi47;
    int32_t esi48;
    int32_t esi49;
    int32_t esi50;
    void* esi51;
    int32_t esi52;
    uint32_t edx53;
    int32_t esi54;
    int32_t esi55;
    uint32_t ecx56;
    int32_t esi57;
    uint16_t** edx58;
    struct s170* esi59;
    uint32_t ecx60;
    int32_t esi61;
    int32_t esi62;
    int32_t esi63;
    void* esi64;
    int32_t esi65;
    struct s171* esi66;
    signed char al67;

    edi7 = *a2;
    edx8 = (*reinterpret_cast<struct s75**>(a2 + 8))->f12;
    ebx9 = (*reinterpret_cast<struct s75**>(a2 + 8))->f0;
    ecx10 = 0xffffffff;
    eax11 = 0;
    v12 = edx8;
    v13 = 0xffffffff;
    *reinterpret_cast<int32_t*>(esi14 + 0x1450) = 0;
    *reinterpret_cast<int32_t*>(esi15 + 0x1454) = 0x23d;
    if (!(reinterpret_cast<uint1_t>(reinterpret_cast<int32_t>(edx8) < reinterpret_cast<int32_t>(0)) | reinterpret_cast<uint1_t>(edx8 == 0))) {
        do {
            if (!*reinterpret_cast<uint16_t*>(edi7 + eax11 * 2)) {
                *reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(edi7 + eax11 * 2) + 2) = 0;
            } else {
                *reinterpret_cast<int32_t*>(esi16 + 0x1450) = *reinterpret_cast<int32_t*>(esi17 + 0x1450) + 1;
                *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi18) + *reinterpret_cast<int32_t*>(esi19 + 0x1450) * 4 + 0xb5c) = eax11;
                v13 = eax11;
                *reinterpret_cast<signed char*>(eax11 + esi20 + 0x1458) = 0;
                ecx10 = eax11;
            }
            ++eax11;
        } while (reinterpret_cast<int32_t>(eax11) < reinterpret_cast<int32_t>(v12));
    }
    if (*reinterpret_cast<int32_t*>(esi21 + 0x1450) < 2) {
        do {
            if (reinterpret_cast<int32_t>(ecx10) >= reinterpret_cast<int32_t>(2)) {
                eax22 = 0;
            } else {
                ++ecx10;
                eax22 = ecx10;
            }
            *reinterpret_cast<int32_t*>(esi23 + 0x1450) = *reinterpret_cast<int32_t*>(esi24 + 0x1450) + 1;
            *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi25) + *reinterpret_cast<int32_t*>(esi26 + 0x1450) * 4 + 0xb5c) = eax22;
            *reinterpret_cast<uint16_t*>(edi7 + eax22 * 2) = 1;
            *reinterpret_cast<signed char*>(esi27 + eax22 + 0x1458) = 0;
            *reinterpret_cast<int32_t*>(esi28 + 0x16a8) = *reinterpret_cast<int32_t*>(esi29 + 0x16a8) - 1;
            if (ebx9) {
                *reinterpret_cast<uint32_t*>(esi30 + 0x16ac) = *reinterpret_cast<int32_t*>(esi31 + 0x16ac) - *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(ebx9) + eax22 * 4 + 2);
            }
        } while (*reinterpret_cast<int32_t*>(esi32 + 0x1450) < 2);
        v13 = ecx10;
    }
    *reinterpret_cast<uint32_t*>(a2 + 4) = ecx10;
    __asm__("cdq ");
    ebx33 = reinterpret_cast<int32_t>(*reinterpret_cast<int32_t*>(esi34 + 0x1450) - reinterpret_cast<uint16_t>(a2)) >> 1;
    if (ebx33 >= 1) {
        do {
            fun_406c40(ecx10, ebx33);
            --ebx33;
        } while (ebx33 >= 1);
    }
    v35 = v12;
    do {
        ecx36 = *reinterpret_cast<uint32_t*>(reinterpret_cast<int32_t>(esi37) + *reinterpret_cast<int32_t*>(esi38 + 0x1450) * 4 + 0xb5c);
        ebx39 = esi40->f2912;
        *reinterpret_cast<int32_t*>(esi41 + 0x1450) = *reinterpret_cast<int32_t*>(esi38 + 0x1450) - 1;
        esi42->f2912 = ecx36;
        fun_406c40(ecx36, 1);
        eax43 = esi44->f2912;
        *reinterpret_cast<int32_t*>(esi45 + 0x1454) = *reinterpret_cast<int32_t*>(esi46 + 0x1454) - 1;
        *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi47) + *reinterpret_cast<int32_t*>(esi48 + 0x1454) * 4 + 0xb5c) = ebx39;
        *reinterpret_cast<int32_t*>(esi49 + 0x1454) = *reinterpret_cast<int32_t*>(esi50 + 0x1454) - 1;
        *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi51) + *reinterpret_cast<int32_t*>(esi52 + 0x1454) * 4 + 0xb5c) = eax43;
        *reinterpret_cast<uint16_t*>(edi7 + v35 * 2) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(edi7 + eax43 * 2) + *reinterpret_cast<uint16_t*>(edi7 + ebx39 * 2));
        edx53 = *reinterpret_cast<unsigned char*>(esi54 + ebx39 + 0x1458);
        if (*reinterpret_cast<unsigned char*>(esi54 + ebx39 + 0x1458) < *reinterpret_cast<unsigned char*>(esi55 + eax43 + 0x1458)) {
            edx53 = *reinterpret_cast<unsigned char*>(esi55 + eax43 + 0x1458);
        }
        ecx56 = v35;
        *reinterpret_cast<signed char*>(esi57 + ecx56 + 0x1458) = reinterpret_cast<signed char>(*reinterpret_cast<signed char*>(&edx53) + 1);
        edx58 = reinterpret_cast<uint16_t**>(static_cast<uint32_t>(*reinterpret_cast<uint16_t*>(&ecx56)));
        *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(edi7 + eax43 * 2) + 2) = *reinterpret_cast<int16_t*>(&edx58);
        *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(edi7 + ebx39 * 2) + 2) = *reinterpret_cast<int16_t*>(&edx58);
        esi59->f2912 = ecx56;
        ecx60 = ecx56 + 1;
        v35 = ecx60;
        fun_406c40(ecx60, 1);
    } while (*reinterpret_cast<int32_t*>(esi61 + 0x1450) >= 2);
    *reinterpret_cast<int32_t*>(esi62 + 0x1454) = *reinterpret_cast<int32_t*>(esi63 + 0x1454) - 1;
    *reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esi64) + *reinterpret_cast<int32_t*>(esi65 + 0x1454) * 4 + 0xb5c) = esi66->f2912;
    fun_406d20(a2);
    al67 = fun_406f20(a2, v13);
    return al67;
}

uint16_t** fun_407810() {
    uint16_t** esi1;
    uint16_t** eax2;
    uint16_t** v3;
    uint16_t** esi4;
    uint16_t** ecx5;
    uint16_t** eax6;
    uint16_t** eax7;
    uint16_t** eax8;

    esi1 = eax2;
    v3 = *reinterpret_cast<uint16_t***>(esi1 + 0xb1c);
    fun_4071b0(esi1, v3, esi4, __return_address());
    ecx5 = *reinterpret_cast<uint16_t***>(esi1 + 0xb28);
    fun_4071b0(esi1, ecx5, esi1, v3);
    fun_406fb0(ecx5, esi1 + 0xb30, esi1, ecx5, esi1, v3);
    eax6 = reinterpret_cast<uint16_t**>(18);
    do {
        if (*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(esi1 + *reinterpret_cast<unsigned char*>(eax6 + 0x40c9cc) * 4) + 0xa7e)) 
            break;
        if (*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(esi1 + *reinterpret_cast<unsigned char*>(eax6 + 0x40c9cb) * 4) + 0xa7e)) 
            goto addr_4078ac_4;
        if (*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(esi1 + *reinterpret_cast<unsigned char*>(eax6 + 0x40c9ca) * 4) + 0xa7e)) 
            goto addr_4078b9_6;
        if (*reinterpret_cast<int16_t*>(reinterpret_cast<uint32_t>(esi1 + *reinterpret_cast<unsigned char*>(eax6 + 0x40c9c9) * 4) + 0xa7e)) 
            goto addr_4078c8_8;
        eax6 = eax6 - 4;
    } while (reinterpret_cast<int16_t>(eax6) >= reinterpret_cast<int16_t>(3));
    goto addr_4078a0_10;
    addr_4078cb_11:
    *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) = *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) + (reinterpret_cast<uint32_t>(eax6 + reinterpret_cast<uint16_t>(eax6) * 2) + 17);
    return eax6;
    addr_4078ac_4:
    eax7 = eax6 - 1;
    *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) = *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) + (reinterpret_cast<uint32_t>(eax7 + reinterpret_cast<uint16_t>(eax7) * 2) + 17);
    return eax7;
    addr_4078b9_6:
    eax8 = eax6 - 2;
    *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) = *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) + (reinterpret_cast<uint32_t>(eax8 + reinterpret_cast<uint16_t>(eax8) * 2) + 17);
    return eax8;
    addr_4078c8_8:
    eax6 = eax6 - 3;
    goto addr_4078cb_11;
    addr_4078a0_10:
    *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) = *reinterpret_cast<uint32_t*>(esi1 + 0x16a8) + (reinterpret_cast<uint32_t>(eax6 + reinterpret_cast<uint16_t>(eax6) * 2) + 17);
    return eax6;
}

struct s172 {
    signed char[148] pad148;
    int16_t f148;
};

struct s173 {
    signed char[2440] pad2440;
    int16_t f2440;
};

struct s174 {
    signed char[2684] pad2684;
    int16_t f2684;
};

struct s175 {
    signed char[1172] pad1172;
    int16_t f1172;
};

void fun_406bc0(uint16_t* ecx) {
    int16_t* eax2;
    struct s172* edx3;
    int32_t ecx4;
    int16_t* eax5;
    struct s173* edx6;
    int32_t ecx7;
    int16_t* eax8;
    struct s174* edx9;
    int32_t ecx10;
    struct s175* edx11;
    int32_t edx12;
    int32_t edx13;
    int32_t edx14;
    int32_t edx15;

    eax2 = &edx3->f148;
    ecx4 = 0x11e;
    do {
        *eax2 = 0;
        eax2 = eax2 + 2;
        --ecx4;
    } while (ecx4);
    eax5 = &edx6->f2440;
    ecx7 = 30;
    do {
        *eax5 = 0;
        eax5 = eax5 + 2;
        --ecx7;
    } while (ecx7);
    eax8 = &edx9->f2684;
    ecx10 = 19;
    do {
        *eax8 = 0;
        eax8 = eax8 + 2;
        --ecx10;
    } while (ecx10);
    edx11->f1172 = 1;
    *reinterpret_cast<int32_t*>(edx12 + 0x16ac) = 0;
    *reinterpret_cast<int32_t*>(edx13 + 0x16a8) = 0;
    *reinterpret_cast<int32_t*>(edx14 + 0x16b0) = 0;
    *reinterpret_cast<int32_t*>(edx15 + 0x16a0) = 0;
    return;
}

struct s176 {
    signed char[20] pad20;
    int32_t f20;
};

struct s177 {
    signed char[8] pad8;
    int32_t f8;
};

struct s178 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s179 {
    signed char[20] pad20;
    int32_t f20;
};

struct s180 {
    signed char[20] pad20;
    int32_t f20;
};

struct s181 {
    signed char[8] pad8;
    int32_t f8;
};

struct s182 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s183 {
    signed char[20] pad20;
    int32_t f20;
};

struct s184 {
    signed char[20] pad20;
    int32_t f20;
};

struct s185 {
    signed char[8] pad8;
    int32_t f8;
};

struct s186 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s187 {
    signed char[20] pad20;
    int32_t f20;
};

struct s188 {
    signed char[20] pad20;
    int32_t f20;
};

struct s189 {
    signed char[8] pad8;
    int32_t f8;
};

struct s190 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s191 {
    signed char[20] pad20;
    int32_t f20;
};

struct s192 {
    signed char[20] pad20;
    int32_t f20;
};

struct s193 {
    signed char[8] pad8;
    int32_t f8;
};

struct s194 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s195 {
    signed char[20] pad20;
    int32_t f20;
};

struct s196 {
    signed char[20] pad20;
    int32_t f20;
};

struct s197 {
    signed char[8] pad8;
    int32_t f8;
};

struct s198 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s199 {
    signed char[20] pad20;
    int32_t f20;
};

struct s200 {
    signed char[20] pad20;
    int32_t f20;
};

struct s201 {
    signed char[8] pad8;
    int32_t f8;
};

struct s202 {
    signed char[20] pad20;
    int32_t f20;
};

struct s203 {
    signed char[20] pad20;
    int32_t f20;
};

struct s204 {
    signed char[20] pad20;
    int32_t f20;
};

struct s205 {
    signed char[8] pad8;
    int32_t f8;
};

struct s206 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s207 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_4078e0(uint16_t** ecx, uint16_t** a2, uint16_t** a3, uint16_t** a4) {
    int32_t ecx5;
    int32_t esi6;
    uint32_t eax7;
    struct s84* v8;
    struct s84* edi9;
    int32_t esi10;
    int32_t esi11;
    int32_t esi12;
    int32_t ecx13;
    struct s176* esi14;
    int32_t esi15;
    int32_t esi16;
    struct s177* esi17;
    int32_t esi18;
    struct s178* esi19;
    struct s179* esi20;
    uint32_t eax21;
    struct s180* esi22;
    struct s181* esi23;
    int32_t esi24;
    int32_t edx25;
    int32_t esi26;
    struct s182* esi27;
    struct s183* esi28;
    int32_t esi29;
    int32_t esi30;
    int32_t ecx31;
    int32_t esi32;
    uint32_t eax33;
    int32_t esi34;
    int32_t esi35;
    int32_t esi36;
    int32_t ecx37;
    struct s184* esi38;
    int32_t esi39;
    int32_t esi40;
    struct s185* esi41;
    int32_t esi42;
    struct s186* esi43;
    struct s187* esi44;
    uint32_t eax45;
    struct s188* esi46;
    struct s189* esi47;
    int32_t esi48;
    int32_t edx49;
    int32_t esi50;
    struct s190* esi51;
    struct s191* esi52;
    int32_t esi53;
    int32_t esi54;
    int32_t ecx55;
    int32_t esi56;
    uint32_t eax57;
    int32_t esi58;
    int32_t esi59;
    int32_t esi60;
    int32_t ecx61;
    struct s192* esi62;
    int32_t esi63;
    int32_t esi64;
    struct s193* esi65;
    int32_t esi66;
    struct s194* esi67;
    struct s195* esi68;
    uint32_t eax69;
    struct s196* esi70;
    struct s197* esi71;
    int32_t esi72;
    int32_t edx73;
    int32_t esi74;
    struct s198* esi75;
    struct s199* esi76;
    int32_t esi77;
    int32_t esi78;
    uint16_t** edi79;
    int32_t ecx80;
    int32_t esi81;
    int32_t esi82;
    int32_t esi83;
    void* esi84;
    int32_t esi85;
    uint32_t eax86;
    void* esi87;
    int32_t ecx88;
    struct s200* esi89;
    int32_t esi90;
    int32_t esi91;
    uint32_t ebx92;
    int32_t esi93;
    struct s201* esi94;
    struct s202* esi95;
    struct s203* esi96;
    uint32_t ebx97;
    int32_t esi98;
    struct s204* esi99;
    struct s205* esi100;
    int32_t edx101;
    int32_t esi102;
    struct s206* esi103;
    struct s207* esi104;
    int32_t esi105;
    int32_t esi106;
    struct s84* v107;
    void* esi108;
    void* esi109;

    ecx5 = *reinterpret_cast<int32_t*>(esi6 + 0x16bc);
    eax7 = reinterpret_cast<uint32_t>(a2 + 0xfffffeff);
    v8 = edi9;
    if (ecx5 <= 11) {
        *reinterpret_cast<uint16_t*>(esi10 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi11 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax7) << *reinterpret_cast<unsigned char*>(&ecx5)));
        *reinterpret_cast<int32_t*>(esi12 + 0x16bc) = ecx5 + 5;
    } else {
        ecx13 = esi14->f20;
        *reinterpret_cast<uint16_t*>(esi15 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi16 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax7) << *reinterpret_cast<unsigned char*>(&ecx5)));
        *reinterpret_cast<signed char*>(ecx13 + esi17->f8) = *reinterpret_cast<signed char*>(esi18 + 0x16b8);
        esi19->f20 = esi20->f20 + 1;
        eax21 = eax7;
        *reinterpret_cast<signed char*>(esi22->f20 + esi23->f8) = *reinterpret_cast<signed char*>(esi24 + 0x16b9);
        edx25 = *reinterpret_cast<int32_t*>(esi26 + 0x16bc);
        esi27->f20 = esi28->f20 + 1;
        *reinterpret_cast<int32_t*>(esi29 + 0x16bc) = edx25 - 11;
        *reinterpret_cast<uint16_t*>(esi30 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax21) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx25)));
    }
    ecx31 = *reinterpret_cast<int32_t*>(esi32 + 0x16bc);
    eax33 = reinterpret_cast<uint32_t>(a3 - 1);
    if (ecx31 <= 11) {
        *reinterpret_cast<uint16_t*>(esi34 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi35 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax33) << *reinterpret_cast<unsigned char*>(&ecx31)));
        *reinterpret_cast<int32_t*>(esi36 + 0x16bc) = ecx31 + 5;
    } else {
        ecx37 = esi38->f20;
        *reinterpret_cast<uint16_t*>(esi39 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi40 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax33) << *reinterpret_cast<unsigned char*>(&ecx31)));
        *reinterpret_cast<signed char*>(ecx37 + esi41->f8) = *reinterpret_cast<signed char*>(esi42 + 0x16b8);
        esi43->f20 = esi44->f20 + 1;
        eax45 = eax33;
        *reinterpret_cast<signed char*>(esi46->f20 + esi47->f8) = *reinterpret_cast<signed char*>(esi48 + 0x16b9);
        edx49 = *reinterpret_cast<int32_t*>(esi50 + 0x16bc);
        esi51->f20 = esi52->f20 + 1;
        *reinterpret_cast<int32_t*>(esi53 + 0x16bc) = edx49 - 11;
        *reinterpret_cast<uint16_t*>(esi54 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax45) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx49)));
    }
    ecx55 = *reinterpret_cast<int32_t*>(esi56 + 0x16bc);
    eax57 = reinterpret_cast<uint32_t>(a4 + 0xfffffffc);
    if (ecx55 <= 12) {
        *reinterpret_cast<uint16_t*>(esi58 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi59 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax57) << *reinterpret_cast<unsigned char*>(&ecx55)));
        *reinterpret_cast<int32_t*>(esi60 + 0x16bc) = ecx55 + 4;
    } else {
        ecx61 = esi62->f20;
        *reinterpret_cast<uint16_t*>(esi63 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi64 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax57) << *reinterpret_cast<unsigned char*>(&ecx55)));
        *reinterpret_cast<signed char*>(ecx61 + esi65->f8) = *reinterpret_cast<signed char*>(esi66 + 0x16b8);
        esi67->f20 = esi68->f20 + 1;
        eax69 = eax57;
        *reinterpret_cast<signed char*>(esi70->f20 + esi71->f8) = *reinterpret_cast<signed char*>(esi72 + 0x16b9);
        edx73 = *reinterpret_cast<int32_t*>(esi74 + 0x16bc);
        esi75->f20 = esi76->f20 + 1;
        *reinterpret_cast<int32_t*>(esi77 + 0x16bc) = edx73 - 12;
        *reinterpret_cast<uint16_t*>(esi78 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax69) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx73)));
    }
    edi79 = reinterpret_cast<uint16_t**>(0);
    if (reinterpret_cast<int16_t>(a4) > reinterpret_cast<int16_t>(0)) {
        do {
            ecx80 = *reinterpret_cast<int32_t*>(esi81 + 0x16bc);
            if (ecx80 <= 13) {
                *reinterpret_cast<uint16_t*>(esi82 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi83 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(esi84) + *reinterpret_cast<unsigned char*>(edi79 + 0x40c9cc) * 4 + 0xa7e) << *reinterpret_cast<unsigned char*>(&ecx80)));
                *reinterpret_cast<int32_t*>(esi85 + 0x16bc) = ecx80 + 3;
            } else {
                eax86 = *reinterpret_cast<uint16_t*>(reinterpret_cast<int32_t>(esi87) + *reinterpret_cast<unsigned char*>(edi79 + 0x40c9cc) * 4 + 0xa7e);
                ecx88 = esi89->f20;
                *reinterpret_cast<uint16_t*>(esi90 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(esi91 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax86) << *reinterpret_cast<unsigned char*>(&ecx80)));
                ebx92 = *reinterpret_cast<unsigned char*>(esi93 + 0x16b8);
                *reinterpret_cast<signed char*>(ecx88 + esi94->f8) = *reinterpret_cast<signed char*>(&ebx92);
                esi95->f20 = esi96->f20 + 1;
                ebx97 = *reinterpret_cast<unsigned char*>(esi98 + 0x16b9);
                *reinterpret_cast<signed char*>(esi99->f20 + esi100->f8) = *reinterpret_cast<signed char*>(&ebx97);
                edx101 = *reinterpret_cast<int32_t*>(esi102 + 0x16bc);
                esi103->f20 = esi104->f20 + 1;
                *reinterpret_cast<uint16_t*>(esi105 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&eax86) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx101)));
                *reinterpret_cast<int32_t*>(esi106 + 0x16bc) = edx101 - 13;
            }
            ++edi79;
        } while (reinterpret_cast<int16_t>(edi79) < reinterpret_cast<int16_t>(a4));
    }
    v107 = reinterpret_cast<struct s84*>(reinterpret_cast<int32_t>(esi108) + 0x94);
    fun_407290(a2 - 1, v107, v8);
    fun_407290(a3 - 1, reinterpret_cast<int32_t>(esi109) + 0x988, v107);
    return;
}

struct s208 {
    signed char[8] pad8;
    int32_t f8;
};

struct s209 {
    signed char[20] pad20;
    int32_t f20;
};

struct s210 {
    signed char[20] pad20;
    int32_t f20;
};

struct s211 {
    signed char[20] pad20;
    int32_t f20;
};

struct s212 {
    signed char[20] pad20;
    int32_t f20;
};

struct s213 {
    signed char[8] pad8;
    int32_t f8;
};

struct s214 {
    signed char[20] pad20;
    int32_t f20;
};

struct s215 {
    signed char[20] pad20;
    int32_t f20;
};

struct s216 {
    signed char[8] pad8;
    int32_t f8;
};

struct s217 {
    signed char[20] pad20;
    int32_t f20;
};

struct s218 {
    signed char[20] pad20;
    int32_t f20;
};

struct s219 {
    signed char[20] pad20;
    int32_t f20;
};

struct s220 {
    signed char[20] pad20;
    int32_t f20;
};

struct s221 {
    signed char[8] pad8;
    int32_t f8;
};

struct s222 {
    signed char[20] pad20;
    int32_t f20;
};

struct s223 {
    signed char[20] pad20;
    int32_t f20;
};

struct s224 {
    signed char[8] pad8;
    int32_t f8;
};

struct s225 {
    signed char[20] pad20;
    int32_t f20;
};

struct s226 {
    signed char[20] pad20;
    int32_t f20;
};

struct s227 {
    signed char[20] pad20;
    int32_t f20;
};

struct s228 {
    signed char[20] pad20;
    int32_t f20;
};

struct s229 {
    signed char[8] pad8;
    int32_t f8;
};

struct s230 {
    signed char[20] pad20;
    int32_t f20;
};

struct s231 {
    signed char[20] pad20;
    int32_t f20;
};

struct s232 {
    signed char[8] pad8;
    int32_t f8;
};

struct s233 {
    signed char[20] pad20;
    int32_t f20;
};

struct s234 {
    signed char[20] pad20;
    int32_t f20;
};

struct s235 {
    signed char[20] pad20;
    int32_t f20;
};

struct s236 {
    signed char[20] pad20;
    int32_t f20;
};

struct s237 {
    signed char[8] pad8;
    int32_t f8;
};

struct s238 {
    signed char[20] pad20;
    int32_t f20;
};

struct s239 {
    signed char[20] pad20;
    int32_t f20;
};

struct s240 {
    signed char[8] pad8;
    int32_t f8;
};

struct s241 {
    signed char[20] pad20;
    int32_t f20;
};

struct s242 {
    signed char[20] pad20;
    int32_t f20;
};

struct s243 {
    signed char[20] pad20;
    int32_t f20;
};

struct s244 {
    signed char[20] pad20;
    int32_t f20;
};

struct s245 {
    signed char[8] pad8;
    int32_t f8;
};

struct s246 {
    signed char[20] pad20;
    int32_t f20;
};

struct s247 {
    signed char[20] pad20;
    int32_t f20;
};

struct s248 {
    signed char[8] pad8;
    int32_t f8;
};

struct s249 {
    signed char[20] pad20;
    int32_t f20;
};

struct s250 {
    signed char[20] pad20;
    int32_t f20;
};

struct s251 {
    signed char[20] pad20;
    int32_t f20;
};

struct s252 {
    signed char[20] pad20;
    int32_t f20;
};

struct s253 {
    signed char[8] pad8;
    int32_t f8;
};

struct s254 {
    signed char[20] pad20;
    int32_t f20;
};

struct s255 {
    signed char[20] pad20;
    int32_t f20;
};

void fun_407e20(uint16_t* a1, uint16_t* a2, uint16_t** a3, uint16_t** a4, uint16_t** a5) {
    uint16_t* ebx6;
    uint32_t edx7;
    int32_t eax8;
    uint32_t ecx9;
    int32_t eax10;
    uint32_t esi11;
    int32_t eax12;
    uint32_t ecx13;
    int32_t eax14;
    uint32_t v15;
    uint32_t edi16;
    uint32_t edx17;
    int32_t eax18;
    int32_t eax19;
    int32_t eax20;
    uint32_t edx21;
    int32_t ecx22;
    struct s208* eax23;
    int32_t eax24;
    int32_t eax25;
    uint32_t ebx26;
    int32_t eax27;
    struct s209* eax28;
    struct s210* eax29;
    struct s211* eax30;
    uint32_t ebx31;
    int32_t eax32;
    struct s212* eax33;
    struct s213* eax34;
    int32_t edx35;
    int32_t eax36;
    uint32_t ebx37;
    struct s214* eax38;
    struct s215* eax39;
    int32_t eax40;
    int32_t eax41;
    int32_t ebx42;
    uint32_t esi43;
    int32_t ecx44;
    int32_t eax45;
    int32_t eax46;
    int32_t eax47;
    int32_t ecx48;
    int32_t ecx49;
    struct s216* eax50;
    int32_t eax51;
    int32_t eax52;
    uint32_t ebx53;
    int32_t eax54;
    struct s217* eax55;
    struct s218* eax56;
    struct s219* eax57;
    uint32_t ebx58;
    int32_t eax59;
    struct s220* eax60;
    struct s221* eax61;
    int32_t ebx62;
    int32_t eax63;
    struct s222* eax64;
    struct s223* eax65;
    int32_t eax66;
    int32_t eax67;
    uint32_t edx68;
    uint32_t esi69;
    uint32_t edi70;
    uint32_t ecx71;
    int32_t eax72;
    int32_t eax73;
    int32_t eax74;
    int32_t eax75;
    uint32_t edi76;
    int32_t ecx77;
    struct s224* eax78;
    int32_t eax79;
    int32_t eax80;
    uint32_t ebx81;
    int32_t eax82;
    struct s225* eax83;
    struct s226* eax84;
    struct s227* eax85;
    uint32_t ebx86;
    int32_t eax87;
    struct s228* eax88;
    struct s229* eax89;
    int32_t edx90;
    int32_t eax91;
    struct s230* eax92;
    struct s231* eax93;
    int32_t eax94;
    int32_t eax95;
    uint32_t edi96;
    uint32_t edx97;
    int32_t eax98;
    int32_t eax99;
    uint32_t ecx100;
    uint32_t esi101;
    int32_t ecx102;
    struct s232* eax103;
    int32_t eax104;
    int32_t eax105;
    struct s233* eax106;
    int32_t eax107;
    struct s234* eax108;
    struct s235* eax109;
    struct s236* eax110;
    struct s237* eax111;
    int32_t eax112;
    int32_t edx113;
    int32_t eax114;
    struct s238* eax115;
    struct s239* eax116;
    int32_t eax117;
    int32_t eax118;
    int32_t eax119;
    uint32_t edx120;
    uint32_t ecx121;
    int32_t eax122;
    int32_t eax123;
    int32_t eax124;
    int32_t ecx125;
    struct s240* eax126;
    int32_t eax127;
    int32_t eax128;
    uint32_t ebx129;
    int32_t eax130;
    struct s241* eax131;
    struct s242* eax132;
    struct s243* eax133;
    uint32_t ebx134;
    int32_t eax135;
    struct s244* eax136;
    struct s245* eax137;
    int32_t ebx138;
    int32_t eax139;
    struct s246* eax140;
    struct s247* eax141;
    int32_t eax142;
    int32_t eax143;
    int32_t eax144;
    uint32_t edx145;
    uint32_t ecx146;
    int32_t eax147;
    int32_t eax148;
    int32_t eax149;
    int32_t eax150;
    int32_t eax151;
    uint32_t esi152;
    int32_t ecx153;
    struct s248* eax154;
    int32_t eax155;
    int32_t eax156;
    struct s249* eax157;
    int32_t eax158;
    struct s250* eax159;
    struct s251* eax160;
    struct s252* eax161;
    struct s253* eax162;
    int32_t eax163;
    int32_t edx164;
    int32_t eax165;
    struct s254* eax166;
    struct s255* eax167;
    int32_t eax168;
    int32_t eax169;
    int32_t eax170;

    ebx6 = a1;
    edx7 = 0;
    if (*reinterpret_cast<uint32_t*>(eax8 + 0x16a0)) {
        while (1) {
            ecx9 = (*reinterpret_cast<uint16_t**>(eax10 + 0x16a4))[edx7];
            esi11 = *reinterpret_cast<unsigned char*>(edx7 + reinterpret_cast<int32_t>(*reinterpret_cast<void**>(eax12 + 0x1698)));
            ecx13 = *reinterpret_cast<uint32_t*>(eax14 + 0x16bc);
            v15 = edx7 + 1;
            if (ecx9) {
                edi16 = *reinterpret_cast<unsigned char*>(esi11 + 0x40d0d8);
                edx17 = (ebx6 + edi16 * 2)[0x203];
                if (reinterpret_cast<int32_t>(ecx13) <= reinterpret_cast<int32_t>(16 - edx17)) {
                    *reinterpret_cast<uint16_t*>(eax18 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax19 + 0x16b8) | reinterpret_cast<uint16_t>((a1 + edi16 * 2)[0x202] << *reinterpret_cast<unsigned char*>(&ecx13)));
                    *reinterpret_cast<uint32_t*>(eax20 + 0x16bc) = ecx13 + edx17;
                } else {
                    edx21 = (a1 + edi16 * 2)[0x202];
                    ecx22 = eax23->f8;
                    *reinterpret_cast<uint16_t*>(eax24 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax25 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx21) << *reinterpret_cast<unsigned char*>(&ecx13)));
                    ebx26 = *reinterpret_cast<unsigned char*>(eax27 + 0x16b8);
                    *reinterpret_cast<signed char*>(ecx22 + eax28->f20) = *reinterpret_cast<signed char*>(&ebx26);
                    eax29->f20 = eax30->f20 + 1;
                    ebx31 = *reinterpret_cast<unsigned char*>(eax32 + 0x16b9);
                    *reinterpret_cast<signed char*>(eax33->f20 + eax34->f8) = *reinterpret_cast<signed char*>(&ebx31);
                    edx35 = *reinterpret_cast<int32_t*>(eax36 + 0x16bc);
                    ebx37 = edx21;
                    eax38->f20 = eax39->f20 + 1;
                    *reinterpret_cast<uint32_t*>(eax40 + 0x16bc) = edx35 + edx17 - 16;
                    *reinterpret_cast<uint16_t*>(eax41 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&ebx37) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx35)));
                }
                ebx42 = *reinterpret_cast<int32_t*>(edi16 * 4 + 0x40c890);
                if (ebx42) {
                    esi43 = esi11 - *reinterpret_cast<int32_t*>(edi16 * 4 + 0x40d1d8);
                    ecx44 = *reinterpret_cast<int32_t*>(eax45 + 0x16bc);
                    if (ecx44 <= 16 - ebx42) {
                        *reinterpret_cast<uint16_t*>(eax46 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax47 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi43) << *reinterpret_cast<unsigned char*>(&ecx44)));
                        ecx48 = ecx44 + ebx42;
                    } else {
                        ecx49 = eax50->f8;
                        *reinterpret_cast<uint16_t*>(eax51 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax52 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi43) << *reinterpret_cast<unsigned char*>(&ecx44)));
                        ebx53 = *reinterpret_cast<unsigned char*>(eax54 + 0x16b8);
                        *reinterpret_cast<signed char*>(ecx49 + eax55->f20) = *reinterpret_cast<signed char*>(&ebx53);
                        eax56->f20 = eax57->f20 + 1;
                        ebx58 = *reinterpret_cast<unsigned char*>(eax59 + 0x16b9);
                        *reinterpret_cast<signed char*>(eax60->f20 + eax61->f8) = *reinterpret_cast<signed char*>(&ebx58);
                        ebx62 = *reinterpret_cast<int32_t*>(eax63 + 0x16bc);
                        eax64->f20 = eax65->f20 + 1;
                        ecx48 = ebx62 + ebx42 - 16;
                        *reinterpret_cast<uint16_t*>(eax66 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi43) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&ebx62)));
                    }
                    *reinterpret_cast<int32_t*>(eax67 + 0x16bc) = ecx48;
                }
                edx68 = ecx9 - 1;
                if (edx68 >= 0x100) {
                    esi69 = *reinterpret_cast<unsigned char*>((edx68 >> 7) + 0x40cfd8);
                } else {
                    esi69 = *reinterpret_cast<unsigned char*>(edx68 + 0x40ced8);
                }
                edi70 = (a2 + esi69 * 2)[1];
                ecx71 = *reinterpret_cast<uint32_t*>(eax72 + 0x16bc);
                if (reinterpret_cast<int32_t>(ecx71) <= reinterpret_cast<int32_t>(16 - edi70)) {
                    *reinterpret_cast<uint16_t*>(eax73 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax74 + 0x16b8) | reinterpret_cast<uint16_t>(a2[esi69 * 2] << *reinterpret_cast<unsigned char*>(&ecx71)));
                    *reinterpret_cast<uint32_t*>(eax75 + 0x16bc) = ecx71 + edi70;
                } else {
                    edi76 = a2[esi69 * 2];
                    ecx77 = eax78->f8;
                    *reinterpret_cast<uint16_t*>(eax79 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax80 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edi76) << *reinterpret_cast<unsigned char*>(&ecx71)));
                    ebx81 = *reinterpret_cast<unsigned char*>(eax82 + 0x16b8);
                    *reinterpret_cast<signed char*>(ecx77 + eax83->f20) = *reinterpret_cast<signed char*>(&ebx81);
                    eax84->f20 = eax85->f20 + 1;
                    ebx86 = *reinterpret_cast<unsigned char*>(eax87 + 0x16b9);
                    *reinterpret_cast<signed char*>(eax88->f20 + eax89->f8) = *reinterpret_cast<signed char*>(&ebx86);
                    edx90 = *reinterpret_cast<int32_t*>(eax91 + 0x16bc);
                    eax92->f20 = eax93->f20 + 1;
                    *reinterpret_cast<uint32_t*>(eax94 + 0x16bc) = edx90 + edi70 - 16;
                    edx68 = edx68;
                    *reinterpret_cast<uint16_t*>(eax95 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edi76) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx90)));
                }
                edi96 = *reinterpret_cast<uint32_t*>(esi69 * 4 + 0x40c908);
                ebx6 = a1;
                if (edi96) 
                    goto addr_4080e4_19;
            } else {
                edx97 = (ebx6 + esi11 * 2)[1];
                if (reinterpret_cast<int32_t>(ecx13) <= reinterpret_cast<int32_t>(16 - edx97)) {
                    *reinterpret_cast<uint16_t*>(eax98 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax99 + 0x16b8) | reinterpret_cast<uint16_t>(ebx6[esi11 * 2] << *reinterpret_cast<unsigned char*>(&ecx13)));
                    ecx100 = ecx13 + edx97;
                    goto addr_40815e_22;
                } else {
                    esi101 = ebx6[esi11 * 2];
                    ecx102 = eax103->f8;
                    *reinterpret_cast<uint16_t*>(eax104 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax105 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi101) << *reinterpret_cast<unsigned char*>(&ecx13)));
                    *reinterpret_cast<signed char*>(ecx102 + eax106->f20) = *reinterpret_cast<signed char*>(eax107 + 0x16b8);
                    eax108->f20 = eax109->f20 + 1;
                    ebx6 = ebx6;
                    *reinterpret_cast<signed char*>(eax110->f20 + eax111->f8) = *reinterpret_cast<signed char*>(eax112 + 0x16b9);
                    edx113 = *reinterpret_cast<int32_t*>(eax114 + 0x16bc);
                    eax115->f20 = eax116->f20 + 1;
                    *reinterpret_cast<uint32_t*>(eax117 + 0x16bc) = edx113 + edx97 - 16;
                    *reinterpret_cast<uint16_t*>(eax118 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi101) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx113)));
                }
            }
            addr_408164_24:
            if (v15 >= *reinterpret_cast<uint32_t*>(eax119 + 0x16a0)) 
                break;
            edx7 = v15;
            continue;
            addr_4080e4_19:
            edx120 = edx68 - *reinterpret_cast<int32_t*>(esi69 * 4 + 0x40d250);
            ecx121 = *reinterpret_cast<uint32_t*>(eax122 + 0x16bc);
            if (reinterpret_cast<int32_t>(ecx121) <= reinterpret_cast<int32_t>(16 - edi96)) {
                *reinterpret_cast<uint16_t*>(eax123 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax124 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx120) << *reinterpret_cast<unsigned char*>(&ecx121)));
                ecx100 = ecx121 + edi96;
            } else {
                ecx125 = eax126->f8;
                *reinterpret_cast<uint16_t*>(eax127 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax128 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx120) << *reinterpret_cast<unsigned char*>(&ecx121)));
                ebx129 = *reinterpret_cast<unsigned char*>(eax130 + 0x16b8);
                *reinterpret_cast<signed char*>(ecx125 + eax131->f20) = *reinterpret_cast<signed char*>(&ebx129);
                eax132->f20 = eax133->f20 + 1;
                ebx134 = *reinterpret_cast<unsigned char*>(eax135 + 0x16b9);
                *reinterpret_cast<signed char*>(eax136->f20 + eax137->f8) = *reinterpret_cast<signed char*>(&ebx134);
                ebx138 = *reinterpret_cast<int32_t*>(eax139 + 0x16bc);
                eax140->f20 = eax141->f20 + 1;
                *reinterpret_cast<uint16_t*>(eax142 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&edx120) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&ebx138)));
                ebx6 = a1;
                *reinterpret_cast<uint32_t*>(eax143 + 0x16bc) = ebx138 + edi96 - 16;
                goto addr_408164_24;
            }
            addr_40815e_22:
            *reinterpret_cast<uint32_t*>(eax144 + 0x16bc) = ecx100;
            goto addr_408164_24;
        }
    }
    edx145 = ebx6[0x201];
    ecx146 = *reinterpret_cast<uint32_t*>(eax147 + 0x16bc);
    if (reinterpret_cast<int32_t>(ecx146) <= reinterpret_cast<int32_t>(16 - edx145)) {
        *reinterpret_cast<uint16_t*>(eax148 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax149 + 0x16b8) | reinterpret_cast<uint16_t>(ebx6[0x200] << *reinterpret_cast<unsigned char*>(&ecx146)));
        *reinterpret_cast<uint32_t*>(eax150 + 0x16bc) = ecx146 + edx145;
        *reinterpret_cast<uint32_t*>(eax151 + 0x16b4) = ebx6[0x201];
        return;
    } else {
        esi152 = ebx6[0x200];
        ecx153 = eax154->f8;
        *reinterpret_cast<uint16_t*>(eax155 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(eax156 + 0x16b8) | reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi152) << *reinterpret_cast<unsigned char*>(&ecx146)));
        *reinterpret_cast<signed char*>(ecx153 + eax157->f20) = *reinterpret_cast<signed char*>(eax158 + 0x16b8);
        eax159->f20 = eax160->f20 + 1;
        *reinterpret_cast<signed char*>(eax161->f20 + eax162->f8) = *reinterpret_cast<signed char*>(eax163 + 0x16b9);
        edx164 = *reinterpret_cast<int32_t*>(eax165 + 0x16bc);
        eax166->f20 = eax167->f20 + 1;
        *reinterpret_cast<uint32_t*>(eax168 + 0x16bc) = edx164 + edx145 - 16;
        *reinterpret_cast<uint16_t*>(eax169 + 0x16b8) = reinterpret_cast<uint16_t>(*reinterpret_cast<uint16_t*>(&esi152) >> reinterpret_cast<signed char>(16 - *reinterpret_cast<signed char*>(&edx164)));
        *reinterpret_cast<uint32_t*>(eax170 + 0x16b4) = ebx6[0x201];
        return;
    }
}

struct s256 {
    signed char[20] pad20;
    int32_t f20;
};

struct s257 {
    signed char[16] pad16;
    int32_t f16;
};

struct s258 {
    signed char[12] pad12;
    int32_t f12;
};

struct s259 {
    signed char[8] pad8;
    int32_t* f8;
};

void fun_408989(int32_t ecx) {
    int32_t ebp2;
    int32_t v3;
    struct s256* ebp4;
    int32_t v5;
    struct s257* ebp6;
    int32_t v7;
    struct s258* ebp8;
    int32_t* v9;
    struct s259* ebp10;

    if (!*reinterpret_cast<int32_t*>(ebp2 - 28)) {
        v3 = ebp4->f20;
        v5 = ebp6->f16;
        v7 = ebp8->f12;
        v9 = ebp10->f8;
        fun_4088e0(v9, v7, v5, v3);
    }
    return;
}

void fun_408eb5(int32_t ecx, int32_t* a2, int32_t* a3, int32_t* a4, int32_t* a5) {
    int32_t ebp6;
    int32_t* esp7;
    void* ebp8;

    g0 = *reinterpret_cast<void**>(ebp6 - 16);
    esp7 = reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(ebp8) + 4 - 4);
    *esp7 = reinterpret_cast<int32_t>(__return_address());
    goto *esp7;
}

void fun_408e70(int32_t* a1, int32_t* a2, int32_t* a3) {
    void* esp4;
    void* ebp5;
    int32_t* esp6;
    int32_t ebx7;
    int32_t* esp8;
    int32_t esi9;
    int32_t* esp10;
    int32_t edi11;
    uint32_t eax12;
    uint32_t* esp13;
    int32_t* esp14;

    esp4 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4 - 4);
    ebp5 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esp4) + 16);
    esp6 = reinterpret_cast<int32_t*>(reinterpret_cast<int32_t>(esp4) - reinterpret_cast<int32_t>(a2) - 4);
    *esp6 = ebx7;
    esp8 = esp6 - 1;
    *esp8 = esi9;
    esp10 = esp8 - 1;
    *esp10 = edi11;
    eax12 = g410020;
    esp13 = reinterpret_cast<uint32_t*>(esp10 - 1);
    *esp13 = eax12 ^ reinterpret_cast<uint32_t>(ebp5);
    esp14 = reinterpret_cast<int32_t*>(esp13 - 1);
    *esp14 = reinterpret_cast<int32_t>(__return_address());
    g0 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(ebp5) - 16);
    goto *esp14;
}

void fun_408f44() {
    int32_t* edi1;
    int32_t eax2;

    edi1 = reinterpret_cast<int32_t*>(0x40e7fc);
    if (!1) {
        do {
            eax2 = *edi1;
            if (eax2) {
                eax2();
            }
            ++edi1;
        } while (reinterpret_cast<uint32_t>(edi1) < 0x40e7fc);
    }
    return;
}

struct s260 {
    int32_t f0;
    signed char[20] pad24;
    int16_t f24;
};

int32_t fun_408fa0(struct s148* a1) {
    struct s260* eax2;
    int32_t edx3;

    if (a1->f0 != 0x5a4d || (eax2 = reinterpret_cast<struct s260*>(a1->f60 + reinterpret_cast<int32_t>(a1)), eax2->f0 != 0x4550)) {
        return 0;
    } else {
        edx3 = 0;
        *reinterpret_cast<unsigned char*>(&edx3) = reinterpret_cast<uint1_t>(eax2->f24 == 0x10b);
        return edx3;
    }
}

struct s261 {
    signed char[4] pad4;
    signed char* f4;
    struct s0* f8;
    signed char[3] pad12;
    struct s0* f12;
};

int32_t setlocale = 0xed16;

int32_t fun_401c70(int32_t* ecx, int32_t a2, struct s261* a3, int32_t a4, int32_t a5, int32_t a6, int32_t a7, int32_t* a8, int32_t* a9, int32_t* a10) {
    int32_t* v11;
    struct s0* ecx12;
    struct s0* edx13;
    signed char* eax14;
    int32_t esi15;

    v11 = ecx;
    setlocale(0, "Russian", v11);
    if (a2 >= 3) {
        *reinterpret_cast<int16_t*>(&v11) = 48;
        ecx12 = reinterpret_cast<struct s0*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4 + 0xfffffffc);
        if (a2 >= 4) {
            ecx12 = a3->f12;
        }
        edx13 = a3->f8;
        eax14 = a3->f4;
        fun_405900(ecx12, eax14, edx13, ecx12, v11);
        printf("\n", eax14, edx13, ecx12, v11);
        return 0;
    } else {
        esi15 = printf;
        esi15("\nUsage: *.exe  unpack/pack  *.BIN *.TBL");
        esi15("\nUsage: *.exe  unmglk/mglk  *.mglk", "\nUsage: *.exe  unpack/pack  *.BIN *.TBL");
        esi15("\n", "\nUsage: *.exe  unmglk/mglk  *.mglk", "\nUsage: *.exe  unpack/pack  *.BIN *.TBL");
        return -1;
    }
}

int32_t _controlfp_s = 0xeeda;

int32_t fun_4091e8(int32_t a1, int32_t a2, int32_t a3) {
    goto _controlfp_s;
}

void fun_4091be();

void fun_408d44(int32_t ecx, int32_t a2, int32_t a3, int32_t a4, int32_t* a5, int32_t* a6) {
    fun_4091be();
    return;
}

int32_t _lock = 0xee50;

void fun_4091ca() {
    goto _lock;
}

int32_t __dllonexit = 0xee42;

int32_t fun_4091c4(int32_t ecx, int32_t a2, int32_t a3, int32_t a4, int32_t a5, int32_t* a6, int32_t* a7) {
    goto __dllonexit;
}

int32_t _except_handler4_common = 0xee78;

void fun_4091d6(int32_t a1, int32_t a2, int32_t a3, int32_t a4, int32_t a5, int32_t a6) {
    goto _except_handler4_common;
}

int32_t GetSystemTimeAsFileTime = 0xf028;

int32_t GetCurrentProcessId = 0xf012;

int32_t GetCurrentThreadId = 0xeffc;

int32_t GetTickCount = 0xefec;

int32_t QueryPerformanceCounter = 0xefd2;

void fun_409123(int32_t* a1) {
    uint32_t eax2;
    void* v3;
    int32_t esi4;
    uint32_t eax5;
    uint32_t eax6;
    uint32_t eax7;
    uint32_t esi8;
    uint32_t v9;
    uint32_t v10;

    eax2 = g410020;
    if (eax2 == 0xbb40e64e || !(0xffff0000 & eax2)) {
        v3 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(__zero_stack_offset()) - 4 - 8);
        GetSystemTimeAsFileTime(v3, esi4);
        eax5 = reinterpret_cast<uint32_t>(GetCurrentProcessId(v3, esi4));
        eax6 = reinterpret_cast<uint32_t>(GetCurrentThreadId(v3, esi4));
        eax7 = reinterpret_cast<uint32_t>(GetTickCount(v3, esi4));
        QueryPerformanceCounter();
        esi8 = eax5 ^ eax6 ^ eax7 ^ (v9 ^ v10);
        if (esi8 != 0xbb40e64e) {
            if (!(0xffff0000 & esi8)) {
                esi8 = esi8 | (esi8 | 0x4711) << 16;
            }
        } else {
            esi8 = 0xbb40e64f;
        }
        g410020 = esi8;
        g410024 = reinterpret_cast<int32_t>(~esi8);
    } else {
        g410024 = reinterpret_cast<int32_t>(~eax2);
    }
    return;
}

int32_t _unlock = 0xee38;

void fun_4091be() {
    goto _unlock;
}

/*
 * ?_type_info_dtor_internal_method@type_info@@QAEXXZ
 * public: void __thiscall type_info::_type_info_dtor_internal_method(void)
 */
int32_t _type_info_dtor_internal_method_type_info_QAEXXZ = 0xee92;

void fun_4091dc() {
    goto _type_info_dtor_internal_method_type_info_QAEXXZ;
}

int32_t InterlockedIncrement = 0xf042;

void fun_4091ee(int32_t ecx) {
    int32_t v2;
    int32_t edi3;
    int32_t eax4;
    int32_t esi5;
    int32_t v6;

    v2 = edi3;
    eax4 = reinterpret_cast<int32_t>(InterlockedIncrement());
    if (!eax4) {
        esi5 = 0x423dd8;
        do {
            v6 = esi5;
            fun_409248(ecx, v6);
            esi5 = esi5 + 24;
            ecx = v6;
        } while (esi5 < 0x423e38);
    }
    goto v2;
}

struct s262 {
    signed char[20] pad20;
    struct s0* f20;
};

struct s263 {
    signed char[16] pad16;
    void* f16;
};

struct s264 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s265 {
    signed char[16] pad16;
    int32_t f16;
};

struct s266 {
    signed char[16] pad16;
    struct s0* f16;
};

struct s267 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s268 {
    signed char[20] pad20;
    uint32_t f20;
};

struct s269 {
    signed char[16] pad16;
    int32_t f16;
};

struct s0* fun_405b90(struct s0* a1) {
    struct s0* ecx2;
    struct s262* esi3;
    struct s0* eax4;
    struct s0* esi5;
    struct s0** esi6;
    void* eax7;
    void* esi8;
    void** esi9;
    struct s263* esi10;
    struct s0* esi11;
    struct s0* esi12;
    uint32_t esi13;
    struct s0* eax14;
    struct s0* v15;
    uint32_t* esi16;
    struct s0* esi17;
    struct s0* esi18;
    struct s0* eax19;
    uint32_t edi20;
    uint32_t eax21;
    struct s264* esi22;
    uint32_t edi23;
    int32_t edi24;
    struct s265* esi25;
    int32_t edi26;
    struct s0* esi27;
    signed char** esi28;
    struct s0* esi29;
    struct s0* v30;
    struct s266* esi31;
    struct s0* esi32;
    struct s0* edi33;
    int32_t edi34;
    struct s0* esi35;
    struct s267* esi36;
    struct s0* eax37;
    struct s0* esi38;
    struct s0** esi39;
    struct s0* edi40;
    struct s0* ebx41;
    struct s0* ebp42;
    int1_t cf43;
    struct s268* esi44;
    struct s269* esi45;
    int32_t edi46;
    int32_t esi47;
    int32_t edi48;
    int32_t* esi49;
    int32_t edi50;
    struct s0* esi51;

    if (a1) {
        ecx2 = esi3->f20;
        if (reinterpret_cast<unsigned char>(ecx2) < reinterpret_cast<unsigned char>(16)) {
            eax4 = esi5;
        } else {
            eax4 = *esi6;
        }
        if (reinterpret_cast<unsigned char>(a1) >= reinterpret_cast<unsigned char>(eax4)) {
            if (reinterpret_cast<unsigned char>(ecx2) < reinterpret_cast<unsigned char>(16)) {
                eax7 = esi8;
            } else {
                eax7 = *esi9;
            }
            if (reinterpret_cast<unsigned char>(reinterpret_cast<int32_t>(esi10->f16) + reinterpret_cast<uint32_t>(eax7)) > reinterpret_cast<unsigned char>(a1)) {
                if (reinterpret_cast<unsigned char>(ecx2) < reinterpret_cast<unsigned char>(16)) {
                    eax14 = fun_405aa0(esi11, esi12, reinterpret_cast<unsigned char>(a1) - esi13);
                    return eax14;
                } else {
                    v15 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(a1) - *esi16);
                    eax19 = fun_405aa0(esi17, esi18, v15);
                    return eax19;
                }
            }
        }
    }
    if (edi20 > 0xfffffffe) {
        _Xlength_error_std_YAXPBD_Z("string too long");
    }
    eax21 = esi22->f20;
    if (eax21 >= edi23) {
        if (!edi24) {
            esi25->f16 = edi26;
            if (eax21 < 16) {
                *reinterpret_cast<struct s0**>(&esi27->f0) = reinterpret_cast<struct s0*>(0);
                return esi27;
            } else {
                **esi28 = 0;
                return esi29;
            }
        }
    } else {
        v30 = esi31->f16;
        fun_405cf0(esi32, edi33, v30);
        if (!edi34) {
            addr_405c69_21:
            return esi35;
        } else {
            if (esi36->f20 < 16) {
                eax37 = esi38;
            } else {
                eax37 = *esi39;
            }
        }
        fun_408ca6(ecx2, eax37, a1, edi40, ebx41, ebp42);
        cf43 = esi44->f20 < 16;
        esi45->f16 = edi46;
        if (cf43) {
            *reinterpret_cast<signed char*>(esi47 + edi48) = 0;
            goto addr_405c69_21;
        } else {
            *reinterpret_cast<signed char*>(*esi49 + edi50) = 0;
            return esi51;
        }
    }
}

/*
 * ??1exception@std@@UAE@XZ
 * public: virtual __thiscall std::exception::~exception(void)
 */
int32_t _1exception_std_UAE_XZ = 0xec14;

void fun_401000(int32_t* ecx) {
    *ecx = 0x40e530;
    goto _1exception_std_UAE_XZ;
}

int32_t* fun_401010(int32_t* ecx, unsigned char a2) {
    *ecx = 0x40e530;
    _1exception_std_UAE_XZ();
    if (a2 & 1) {
        _3_YAXPAX_Z(ecx);
    }
    return ecx;
}

void fun_4019ca() {
}

void fun_401f4d(int32_t ecx) {
}

void fun_402289() {
}

void fun_40334d(int32_t ecx) {
}

void fun_403a6a() {
}

void fun_403c4d(int32_t ecx) {
}

void fun_404865() {
}

void fun_404cb9() {
}

void fun_404d19() {
}

void fun_404d6a() {
}

void fun_404dc8() {
}

void fun_405195() {
}

void fun_4054a9() {
}

void fun_40584a() {
}

void fun_40592a() {
}

void fun_40598a() {
}

void fun_4059ea() {
}

void fun_405a48() {
}

void fun_4070a9() {
}

void fun_407e3c() {
}

signed char fun_408890() {
    return 0;
}

int32_t fun_408903() {
    int32_t ebp1;
    int32_t ebp2;
    int32_t ebp3;
    int32_t ebp4;
    int32_t ebp5;
    int32_t ebp6;
    int32_t ebp7;

    *reinterpret_cast<int32_t*>(ebp1 - 28) = *reinterpret_cast<int32_t*>(ebp2 - 20);
    *reinterpret_cast<int32_t*>(ebp3 - 32) = **reinterpret_cast<int32_t**>(ebp4 - 28);
    if (**reinterpret_cast<int32_t**>(ebp5 - 32) == 0xe06d7363) {
        fun_408e6a();
    } else {
        *reinterpret_cast<int32_t*>(ebp6 - 36) = 0;
        return *reinterpret_cast<int32_t*>(ebp7 - 36);
    }
}

int32_t g423a98 = 0;

int32_t g423a8c = 0;

struct s270 {
    int32_t f0;
    int32_t* f4;
    int32_t* f8;
    int32_t* f12;
    int32_t* f16;
};

struct s271 {
    int32_t f0;
    int32_t* f4;
};

int32_t _exit = 0xedaa;

int32_t g423a9c = 0;

int32_t _cexit = 0xeda0;

void fun_408b92(int32_t ecx) {
    int32_t** esp2;
    int32_t ebp3;
    int32_t eax4;
    int32_t ebp5;
    int1_t zf6;
    struct s270* esp7;
    struct s271* esp8;
    int1_t zf9;
    struct s270* esp10;
    int32_t ebp11;
    struct s270* esp12;

    esp2 = *reinterpret_cast<int32_t***>(ebp3 - 24);
    eax4 = *reinterpret_cast<int32_t*>(ebp5 - 32);
    g423a98 = eax4;
    zf6 = g423a8c == 0;
    if (zf6) {
        esp7 = reinterpret_cast<struct s270*>(esp2 - 1);
        esp7->f0 = eax4;
        esp8 = reinterpret_cast<struct s271*>(reinterpret_cast<int32_t>(esp7) - 4);
        esp8->f0 = 0x408bae;
        _exit();
        esp2 = &esp8->f4;
    }
    zf9 = g423a9c == 0;
    if (zf9) {
        esp10 = reinterpret_cast<struct s270*>(esp2 - 1);
        esp10->f0 = 0x408bbc;
        _cexit();
        esp2 = &esp10->f4;
    }
    *reinterpret_cast<int32_t*>(ebp11 - 4) = -2;
    esp12 = reinterpret_cast<struct s270*>(esp2 - 1);
    esp12->f0 = 0x408bcd;
    fun_408eb5(ecx, esp12->f4, esp12->f8, esp12->f12, esp12->f16);
    goto esp12->f4;
}

void fun_408f6a() {
    int32_t* edi1;
    int32_t eax2;

    edi1 = reinterpret_cast<int32_t*>(0x40e804);
    if (!1) {
        do {
            eax2 = *edi1;
            if (eax2) {
                eax2();
            }
            ++edi1;
        } while (reinterpret_cast<uint32_t>(edi1) < 0x40e804);
    }
    return;
}

int32_t fun_4090bb() {
    int32_t edx1;
    int32_t ebp2;

    edx1 = 0;
    *reinterpret_cast<unsigned char*>(&edx1) = reinterpret_cast<uint1_t>(***reinterpret_cast<int32_t***>(ebp2 - 20) == 0xc0000005);
    return edx1;
}

uint32_t g4239f0 = 15;

int32_t g4239dc = 0;

int32_t g4239ec = 0;

void fun_4093e0() {
    int1_t cf1;
    int32_t eax2;

    cf1 = g4239f0 < 16;
    if (!cf1) {
        eax2 = g4239dc;
        _3_YAXPAX_Z(eax2);
    }
    g4239f0 = 15;
    g4239ec = 0;
    *reinterpret_cast<signed char*>(&g4239dc) = 0;
    return;
}

int32_t** g433294;

void fun_409410() {
    int32_t** ecx1;
    int32_t edx2;

    ecx1 = g433294;
    if (ecx1) {
        edx2 = **ecx1;
        edx2(1);
    }
    g433294 = reinterpret_cast<int32_t**>(0);
    return;
}

int32_t InterlockedDecrement = 0xf05a;

void fun_40942d() {
    int32_t ecx1;
    int32_t eax2;
    int32_t esi3;
    int32_t v4;

    ecx1 = 0x423e38;
    eax2 = reinterpret_cast<int32_t>(InterlockedDecrement(0x423e38));
    if (eax2 < 0) {
        esi3 = 0x423dd8;
        do {
            v4 = esi3;
            fun_409258(ecx1, v4);
            esi3 = esi3 + 24;
            ecx1 = v4;
        } while (esi3 < 0x423e38);
    }
    goto 0x410040;
}

int32_t malloc = 0xec84;

void fun_401210() {
    int32_t v1;

    if (v1) {
        malloc(v1);
        return;
    } else {
        return;
    }
}

int32_t free = 0xec7c;

void fun_401230() {
    int32_t v1;

    free(v1);
    return;
}

void fun_401c03() {
}

void fun_401bda() {
}

void fun_4023f5() {
}

void fun_405a2d(int32_t ecx) {
}

void fun_405dc1() {
}

struct s272 {
    signed char f0;
    signed char[15] pad16;
    int32_t f16;
    uint32_t f20;
};

struct s273 {
    signed char[8] pad8;
    struct s272* f8;
};

void fun_405e27(void* ecx, struct s0* a2) {
    struct s272* esi3;
    struct s273* ebp4;
    signed char v5;

    esi3 = ebp4->f8;
    if (esi3->f20 >= 16) {
        v5 = esi3->f0;
        _3_YAXPAX_Z(v5, __return_address());
    }
    esi3->f20 = 15;
    esi3->f16 = 0;
    esi3->f0 = 0;
    fun_409268(ecx, 0, 0, __return_address(), a2);
}

/*
 * ??0exception@std@@QAE@ABV01@@Z
 * public: __thiscall std::exception::exception(class std::exception const &)
 */
int32_t _0exception_std_QAE_ABV01_Z = 0xec50;

void fun_405eb0(int32_t* ecx, int32_t a2) {
    int32_t ebp3;

    _0exception_std_QAE_ABV01_Z();
    *ecx = 0x40e530;
    goto ebp3;
}

struct s276 {
    signed char[8] pad8;
    struct s0* f8;
    signed char[7] pad16;
    struct s0* f16;
    signed char[3] pad20;
    struct s0* f20;
};

struct s275 {
    signed char[12] pad12;
    struct s0* f12;
    signed char[3] pad16;
    struct s0* f16;
    signed char[3] pad20;
    uint32_t f20;
    signed char[4] pad28;
    struct s276* f28;
};

struct s274 {
    struct s275* f0;
    signed char[8] pad12;
    void* f12;
    signed char[28] pad44;
    void* f44;
    signed char[8] pad56;
    void* f56;
    signed char[32] pad92;
    uint16_t** f92;
    signed char[14] pad108;
    uint16_t** f108;
    signed char[6] pad116;
    void* f116;
};

void* fun_406240(int32_t ecx, struct s274* a2, int32_t a3) {
    struct s0* v4;
    struct s0* esi5;
    struct s274* esi6;
    void* eax7;
    struct s0* v8;
    struct s0* edi9;
    void* v10;
    void* eax11;
    int1_t zf12;
    uint16_t** ecx13;
    uint16_t** edx14;
    uint16_t** eax15;
    uint16_t** edx16;
    struct s275* edi17;
    struct s0* ebx18;
    struct s0* ecx19;
    struct s0* edx20;
    struct s0* eax21;
    struct s276* eax22;
    uint16_t** ecx23;
    uint16_t** eax24;
    struct s275* edi25;
    struct s0* ebx26;
    struct s0* ecx27;
    struct s0* edx28;
    struct s0* eax29;
    struct s276* eax30;
    uint16_t** ecx31;
    uint16_t** eax32;
    uint16_t** v33;
    struct s0* eax34;

    v4 = esi5;
    esi6 = a2;
    eax7 = reinterpret_cast<void*>(reinterpret_cast<int32_t>(esi6->f12) + 0xfffffffb);
    v8 = edi9;
    v10 = reinterpret_cast<void*>(0xffff);
    if (reinterpret_cast<uint32_t>(eax7) < 0xffff) {
        v10 = eax7;
    }
    do {
        addr_406261_3:
        eax11 = esi6->f116;
        if (reinterpret_cast<uint32_t>(eax11) > 1) 
            goto addr_406279_4;
        fun_406080();
        eax11 = esi6->f116;
        if (!eax11) 
            break;
        addr_406279_4:
        esi6->f108 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi6->f108) + reinterpret_cast<uint32_t>(eax11));
        zf12 = esi6->f108 == 0;
        ecx13 = esi6->f92;
        edx14 = esi6->f108;
        esi6->f116 = reinterpret_cast<void*>(0);
        eax15 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(ecx13) + reinterpret_cast<uint32_t>(v10));
        if (zf12 || reinterpret_cast<uint16_t>(edx14) >= reinterpret_cast<uint16_t>(eax15)) {
            esi6->f116 = reinterpret_cast<void*>(reinterpret_cast<uint16_t>(edx14) - reinterpret_cast<uint16_t>(eax15));
            esi6->f108 = eax15;
            if (reinterpret_cast<int16_t>(ecx13) < reinterpret_cast<int16_t>(0)) {
                edx16 = reinterpret_cast<uint16_t**>(0);
            } else {
                edx16 = reinterpret_cast<uint16_t**>(reinterpret_cast<int32_t>(esi6->f56) + reinterpret_cast<uint16_t>(ecx13));
            }
            fun_407bd0(ecx13, edx16, reinterpret_cast<uint16_t>(eax15) - reinterpret_cast<uint16_t>(ecx13));
            edi17 = esi6->f0;
            esi6->f92 = esi6->f108;
            ebx18 = edi17->f28->f20;
            ecx19 = edi17->f16;
            if (reinterpret_cast<unsigned char>(ebx18) > reinterpret_cast<unsigned char>(ecx19)) {
                ebx18 = ecx19;
            }
            if (ebx18 && (edx20 = edi17->f28->f16, eax21 = edi17->f12, fun_408ca6(ecx19, eax21, edx20, ebx18, v8, v4), eax22 = edi17->f28, edi17->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi17->f12) + reinterpret_cast<unsigned char>(ebx18)), eax22->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax22->f16) + reinterpret_cast<unsigned char>(ebx18)), edi17->f20 = edi17->f20 + reinterpret_cast<unsigned char>(ebx18), edi17->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi17->f16) - reinterpret_cast<unsigned char>(ebx18)), edi17->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi17->f28->f20) - reinterpret_cast<unsigned char>(ebx18)), !edi17->f28->f20)) {
                edi17->f28->f16 = edi17->f28->f8;
            }
            if (!esi6->f0->f16) 
                goto addr_4063a9_14;
        }
        ecx23 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi6->f108) - reinterpret_cast<uint16_t>(esi6->f92));
        if (reinterpret_cast<uint16_t>(ecx23) < reinterpret_cast<uint16_t>(reinterpret_cast<int32_t>(esi6->f44) - 0x106)) 
            goto addr_406261_3;
        if (reinterpret_cast<int16_t>(esi6->f92) < reinterpret_cast<int16_t>(0)) {
            eax24 = reinterpret_cast<uint16_t**>(0);
        } else {
            eax24 = reinterpret_cast<uint16_t**>(reinterpret_cast<int32_t>(esi6->f56) + reinterpret_cast<uint16_t>(esi6->f92));
        }
        fun_407bd0(ecx23, eax24, ecx23);
        edi25 = esi6->f0;
        esi6->f92 = esi6->f108;
        ebx26 = edi25->f28->f20;
        ecx27 = edi25->f16;
        if (reinterpret_cast<unsigned char>(ebx26) > reinterpret_cast<unsigned char>(ecx27)) {
            ebx26 = ecx27;
        }
        if (ebx26 && (edx28 = edi25->f28->f16, eax29 = edi25->f12, fun_408ca6(ecx27, eax29, edx28, ebx26, v8, v4), eax30 = edi25->f28, edi25->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi25->f12) + reinterpret_cast<unsigned char>(ebx26)), eax30->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax30->f16) + reinterpret_cast<unsigned char>(ebx26)), edi25->f20 = edi25->f20 + reinterpret_cast<unsigned char>(ebx26), edi25->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi25->f16) - reinterpret_cast<unsigned char>(ebx26)), edi25->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi25->f28->f20) - reinterpret_cast<unsigned char>(ebx26)), !edi25->f28->f20)) {
            edi25->f28->f16 = edi25->f28->f8;
        }
    } while (esi6->f0->f16);
    goto addr_4063a9_14;
    if (a3) {
        ecx31 = esi6->f92;
        if (reinterpret_cast<int16_t>(ecx31) < reinterpret_cast<int16_t>(0)) {
            eax32 = reinterpret_cast<uint16_t**>(0);
        } else {
            eax32 = reinterpret_cast<uint16_t**>(reinterpret_cast<int32_t>(esi6->f56) + reinterpret_cast<uint16_t>(ecx31));
        }
        v33 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi6->f108) - reinterpret_cast<uint16_t>(ecx31));
        fun_407bd0(ecx31, eax32, v33);
        esi6->f92 = esi6->f108;
        fun_405ed0();
        eax34 = reinterpret_cast<struct s0*>(0);
        if (esi6->f0->f16) {
            *reinterpret_cast<unsigned char*>(&eax34) = reinterpret_cast<uint1_t>(a3 == 4);
            return reinterpret_cast<unsigned char>(eax34) + reinterpret_cast<unsigned char>(eax34) + 1;
        } else {
            *reinterpret_cast<unsigned char*>(&eax34) = reinterpret_cast<uint1_t>(a3 != 4);
            return reinterpret_cast<unsigned char>(eax34) - 1 & 2;
        }
    }
    addr_4063a9_14:
    return 0;
}

struct s279 {
    signed char[8] pad8;
    struct s0* f8;
    signed char[7] pad16;
    struct s0* f16;
    signed char[3] pad20;
    struct s0* f20;
};

struct s278 {
    signed char[12] pad12;
    struct s0* f12;
    signed char[3] pad16;
    struct s0* f16;
    signed char[3] pad20;
    uint32_t f20;
    signed char[4] pad28;
    struct s279* f28;
};

struct s277 {
    struct s278* f0;
    signed char[40] pad44;
    void* f44;
    signed char[4] pad52;
    uint32_t f52;
    void* f56;
    signed char[4] pad64;
    uint16_t*** f64;
    uint16_t*** f68;
    uint32_t f72;
    signed char[8] pad84;
    uint32_t f84;
    int32_t f88;
    uint16_t** f92;
    signed char[2] pad96;
    void* f96;
    signed char[11] pad108;
    uint16_t** f108;
    signed char[2] pad112;
    uint16_t f112;
    signed char[2] pad116;
    uint32_t f116;
    signed char[8] pad128;
    void* f128;
    signed char[5655] pad5784;
    void* f5784;
    void* f5788;
    void* f5792;
    int16_t* f5796;
};

struct s280 {
    unsigned char f0;
    unsigned char f1;
};

void* fun_406420(struct s277* a1, int32_t a2) {
    struct s0* v3;
    struct s0* esi4;
    struct s277* esi5;
    struct s0* v6;
    struct s0* edi7;
    uint32_t eax8;
    int32_t ecx9;
    uint32_t eax10;
    uint16_t*** ecx11;
    uint32_t edi12;
    uint16_t*** edx13;
    void* eax14;
    void* eax15;
    unsigned char al16;
    uint32_t eax17;
    int32_t ebx18;
    void* al19;
    uint32_t ecx20;
    unsigned char al21;
    uint32_t edx22;
    uint32_t ecx23;
    uint32_t eax24;
    void* eax25;
    uint32_t ecx26;
    int32_t v27;
    struct s280* edx28;
    int32_t ecx29;
    uint32_t eax30;
    uint16_t** edx31;
    int32_t ecx32;
    uint16_t*** ecx33;
    uint32_t eax34;
    uint32_t ebx35;
    uint32_t eax36;
    uint32_t eax37;
    uint16_t** ecx38;
    uint16_t** eax39;
    uint16_t** v40;
    struct s278* edi41;
    struct s0* ebx42;
    struct s0* ecx43;
    struct s0* edx44;
    struct s279* eax45;
    uint16_t** ecx46;
    uint16_t** eax47;
    uint16_t** v48;
    struct s0* eax49;

    v3 = esi4;
    esi5 = a1;
    v6 = edi7;
    do {
        addr_406430_2:
        eax8 = esi5->f116;
        if (eax8 < 0x106) {
            fun_406080();
            eax8 = esi5->f116;
            if (eax8 >= 0x106) 
                goto addr_406454_4;
            if (!a2) 
                break;
            addr_406454_4:
            if (!eax8) 
                goto addr_4066f6_6;
        }
        if (eax8 >= 3 && ((ecx9 = esi5->f88, eax10 = (esi5->f72 << *reinterpret_cast<unsigned char*>(&ecx9) ^ static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(esi5->f108) + 2))) & esi5->f84, ecx11 = esi5->f68, edi12 = esi5->f52 & reinterpret_cast<uint16_t>(esi5->f108), edx13 = esi5->f64, esi5->f72 = eax10, edx13[edi12] = ecx11[eax10], eax14 = reinterpret_cast<void*>(static_cast<uint32_t>(reinterpret_cast<uint16_t>(esi5->f64[reinterpret_cast<uint16_t>(esi5->f108) & esi5->f52]))), esi5->f68[esi5->f72] = esi5->f108, !!eax14) && reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint32_t>(eax14) <= reinterpret_cast<uint32_t>(reinterpret_cast<int32_t>(esi5->f44) - 0x106))) {
            eax15 = fun_405f20(eax14);
            esi5->f96 = eax15;
        }
        if (reinterpret_cast<unsigned char>(esi5->f96) < reinterpret_cast<unsigned char>(3)) {
            al16 = *reinterpret_cast<unsigned char*>(reinterpret_cast<uint16_t>(esi5->f108) + reinterpret_cast<uint32_t>(esi5->f56));
            esi5->f5796[static_cast<uint32_t>(esi5->f5792)] = 0;
            *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi5->f5784) + reinterpret_cast<uint32_t>(esi5->f5792)) = al16;
            esi5->f5792 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f5792) + 1);
            eax17 = al16;
            *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax17 * 4 + 0x94) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax17 * 4 + 0x94) + 1);
            ebx18 = 0;
            *reinterpret_cast<unsigned char*>(&ebx18) = reinterpret_cast<uint1_t>(esi5->f5792 == reinterpret_cast<int32_t>(esi5->f5788) - 1);
            esi5->f116 = esi5->f116 - 1;
            esi5->f108 = esi5->f108 + 1;
        } else {
            al19 = esi5->f96;
            ecx20 = reinterpret_cast<uint16_t>(esi5->f108) - esi5->f112;
            esi5->f5796[static_cast<uint32_t>(esi5->f5792)] = *reinterpret_cast<int16_t*>(&ecx20);
            al21 = reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(al19) - 3);
            *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi5->f5784) + reinterpret_cast<uint32_t>(esi5->f5792)) = al21;
            esi5->f5792 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f5792) + 1);
            edx22 = *reinterpret_cast<unsigned char*>(al21 + 0x40d0d8);
            *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + edx22 * 4 + 0x498) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + edx22 * 4 + 0x498) + 1);
            ecx23 = ecx20 + 0xffff;
            if (*reinterpret_cast<uint16_t*>(&ecx23) >= 0x100) {
                eax24 = *reinterpret_cast<unsigned char*>((static_cast<uint32_t>(*reinterpret_cast<uint16_t*>(&ecx23)) >> 7) + 0x40cfd8);
            } else {
                eax24 = *reinterpret_cast<unsigned char*>(*reinterpret_cast<uint16_t*>(&ecx23) + 0x40ced8);
            }
            *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax24 * 4 + 0x988) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax24 * 4 + 0x988) + 1);
            ebx18 = 0;
            eax25 = esi5->f96;
            *reinterpret_cast<unsigned char*>(&ebx18) = reinterpret_cast<uint1_t>(esi5->f5792 == reinterpret_cast<int32_t>(esi5->f5788) - 1);
            esi5->f116 = esi5->f116 - reinterpret_cast<unsigned char>(eax25);
            ecx26 = esi5->f116;
            v27 = ebx18;
            if (reinterpret_cast<unsigned char>(eax25) > reinterpret_cast<unsigned char>(esi5->f128) || ecx26 < 3) {
                esi5->f108 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) + reinterpret_cast<unsigned char>(eax25));
                edx28 = reinterpret_cast<struct s280*>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(esi5->f108));
                ecx29 = esi5->f88;
                esi5->f96 = reinterpret_cast<void*>(0);
                eax30 = edx28->f0;
                esi5->f72 = eax30;
                esi5->f72 = (eax30 << *reinterpret_cast<unsigned char*>(&ecx29) ^ static_cast<uint32_t>(edx28->f1)) & esi5->f84;
            } else {
                esi5->f96 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(eax25) - 1);
                do {
                    esi5->f108 = esi5->f108 + 1;
                    edx31 = esi5->f108;
                    ecx32 = esi5->f88;
                    ecx33 = esi5->f68;
                    eax34 = (static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<uint16_t>(edx31) + reinterpret_cast<uint32_t>(esi5->f56) + 2)) ^ esi5->f72 << *reinterpret_cast<unsigned char*>(&ecx32)) & esi5->f84;
                    ebx35 = esi5->f52;
                    esi5->f72 = eax34;
                    eax36 = reinterpret_cast<uint16_t>(ecx33[eax34]);
                    esi5->f64[ebx35 & reinterpret_cast<uint16_t>(edx31)] = *reinterpret_cast<uint16_t***>(&eax36);
                    eax37 = reinterpret_cast<uint16_t>(esi5->f108);
                    esi5->f68[esi5->f72] = *reinterpret_cast<uint16_t***>(&eax37);
                    esi5->f96 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(esi5->f96) - 1);
                } while (esi5->f96);
                esi5->f108 = esi5->f108 + 1;
                ebx18 = v27;
            }
        }
        if (!ebx18) 
            goto addr_406430_2;
        ecx38 = esi5->f92;
        if (reinterpret_cast<int16_t>(ecx38) < reinterpret_cast<int16_t>(0)) {
            eax39 = reinterpret_cast<uint16_t**>(0);
        } else {
            eax39 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(ecx38));
        }
        v40 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint16_t>(ecx38));
        fun_407bd0(ecx38, eax39, v40);
        edi41 = esi5->f0;
        esi5->f92 = esi5->f108;
        ebx42 = edi41->f28->f20;
        if (reinterpret_cast<unsigned char>(ebx42) > reinterpret_cast<unsigned char>(edi41->f16)) {
            ebx42 = edi41->f16;
        }
        if (ebx42 && (ecx43 = edi41->f28->f16, edx44 = edi41->f12, fun_408ca6(ecx43, edx44, ecx43, ebx42, v6, v3), eax45 = edi41->f28, edi41->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi41->f12) + reinterpret_cast<unsigned char>(ebx42)), eax45->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax45->f16) + reinterpret_cast<unsigned char>(ebx42)), edi41->f20 = edi41->f20 + reinterpret_cast<unsigned char>(ebx42), edi41->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi41->f16) - reinterpret_cast<unsigned char>(ebx42)), edi41->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi41->f28->f20) - reinterpret_cast<unsigned char>(ebx42)), !edi41->f28->f20)) {
            edi41->f28->f16 = edi41->f28->f8;
        }
    } while (esi5->f0->f16);
    return 0;
    addr_4066f6_6:
    ecx46 = esi5->f92;
    if (reinterpret_cast<int16_t>(ecx46) < reinterpret_cast<int16_t>(0)) {
        eax47 = reinterpret_cast<uint16_t**>(0);
    } else {
        eax47 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(ecx46));
    }
    v48 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint16_t>(ecx46));
    fun_407bd0(ecx46, eax47, v48);
    esi5->f92 = esi5->f108;
    fun_405ed0();
    eax49 = reinterpret_cast<struct s0*>(0);
    if (esi5->f0->f16) {
        *reinterpret_cast<unsigned char*>(&eax49) = reinterpret_cast<uint1_t>(a2 == 4);
        return reinterpret_cast<unsigned char>(eax49) + reinterpret_cast<unsigned char>(eax49) + 1;
    } else {
        *reinterpret_cast<unsigned char*>(&eax49) = reinterpret_cast<uint1_t>(a2 != 4);
        return reinterpret_cast<unsigned char>(eax49) - 1 & 2;
    }
}

struct s283 {
    signed char[8] pad8;
    struct s0* f8;
    signed char[7] pad16;
    struct s0* f16;
    signed char[3] pad20;
    struct s0* f20;
};

struct s282 {
    signed char[12] pad12;
    struct s0* f12;
    signed char[3] pad16;
    struct s0* f16;
    signed char[3] pad20;
    uint32_t f20;
    signed char[4] pad28;
    struct s283* f28;
};

struct s281 {
    struct s282* f0;
    signed char[40] pad44;
    void* f44;
    signed char[4] pad52;
    uint32_t f52;
    void* f56;
    signed char[4] pad64;
    uint16_t*** f64;
    uint16_t*** f68;
    uint32_t f72;
    signed char[8] pad84;
    uint32_t f84;
    int32_t f88;
    uint16_t** f92;
    signed char[2] pad96;
    void* f96;
    signed char[3] pad100;
    uint16_t f100;
    signed char[2] pad104;
    void* f104;
    uint16_t** f108;
    signed char[2] pad112;
    uint16_t f112;
    signed char[2] pad116;
    void* f116;
    void* f120;
    signed char[7] pad128;
    void* f128;
    signed char[7] pad136;
    void* f136;
    signed char[5644] pad5784;
    void* f5784;
    void* f5788;
    void* f5792;
    int16_t* f5796;
};

void* fun_406760(struct s281* a1, int32_t a2) {
    struct s0* v3;
    struct s0* esi4;
    struct s281* esi5;
    struct s0* v6;
    struct s0* edi7;
    void* ecx8;
    void* eax9;
    int32_t ecx10;
    uint32_t eax11;
    uint16_t*** ecx12;
    uint32_t edi13;
    uint16_t*** edx14;
    void* ecx15;
    uint16_t edx16;
    void* eax17;
    unsigned char al18;
    uint32_t eax19;
    uint16_t** ecx20;
    uint16_t** eax21;
    uint16_t** v22;
    struct s282* edi23;
    struct s0* ebx24;
    struct s0* ecx25;
    struct s0* edx26;
    struct s283* eax27;
    struct s282* ecx28;
    int1_t zf29;
    uint16_t** edi30;
    void* al31;
    uint32_t ecx32;
    unsigned char al33;
    uint32_t edx34;
    uint32_t ecx35;
    uint32_t eax36;
    int32_t ecx37;
    void* eax38;
    int32_t v39;
    uint16_t** edx40;
    int32_t ecx41;
    uint32_t ebx42;
    uint32_t eax43;
    uint16_t*** ecx44;
    uint32_t eax45;
    uint32_t eax46;
    uint16_t** eax47;
    uint16_t** ecx48;
    uint16_t** v49;
    struct s282* edi50;
    struct s0* ebx51;
    struct s0* ecx52;
    struct s0* edx53;
    struct s0* eax54;
    struct s283* eax55;
    unsigned char al56;
    uint32_t eax57;
    uint16_t** ecx58;
    uint16_t** eax59;
    uint16_t** v60;
    struct s0* eax61;

    v3 = esi4;
    esi5 = a1;
    v6 = edi7;
    do {
        addr_406770_2:
        ecx8 = esi5->f116;
        if (reinterpret_cast<uint32_t>(ecx8) < 0x106) {
            fun_406080();
            ecx8 = esi5->f116;
            if (reinterpret_cast<uint32_t>(ecx8) >= 0x106) 
                goto addr_406796_4;
            if (!a2) 
                break;
            addr_406796_4:
            if (!ecx8) 
                goto addr_406b12_6;
        }
        eax9 = reinterpret_cast<void*>(0);
        if (reinterpret_cast<uint32_t>(ecx8) >= 3) {
            ecx10 = esi5->f88;
            eax11 = (esi5->f72 << *reinterpret_cast<unsigned char*>(&ecx10) ^ static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(esi5->f108) + 2))) & esi5->f84;
            ecx12 = esi5->f68;
            edi13 = esi5->f52 & reinterpret_cast<uint16_t>(esi5->f108);
            edx14 = esi5->f64;
            esi5->f72 = eax11;
            edx14[edi13] = ecx12[eax11];
            eax9 = reinterpret_cast<void*>(static_cast<uint32_t>(reinterpret_cast<uint16_t>(esi5->f64[reinterpret_cast<uint16_t>(esi5->f108) & esi5->f52])));
            esi5->f68[esi5->f72] = esi5->f108;
        }
        ecx15 = esi5->f96;
        edx16 = esi5->f112;
        esi5->f120 = ecx15;
        esi5->f100 = edx16;
        esi5->f96 = reinterpret_cast<void*>(2);
        if (!(!eax9 || (reinterpret_cast<unsigned char>(ecx15) >= reinterpret_cast<unsigned char>(esi5->f128) || (reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint32_t>(eax9) > reinterpret_cast<uint32_t>(reinterpret_cast<int32_t>(esi5->f44) - 0x106) || (eax17 = fun_405f20(eax9), esi5->f96 = eax17, reinterpret_cast<unsigned char>(eax17) > reinterpret_cast<unsigned char>(5)))))) {
            if (esi5->f136 == 1 || reinterpret_cast<int1_t>(eax17 == 3) && reinterpret_cast<uint16_t>(esi5->f108) - esi5->f112 > 0x1000) {
                esi5->f96 = reinterpret_cast<void*>(2);
            }
        }
        if (reinterpret_cast<unsigned char>(esi5->f120) < reinterpret_cast<unsigned char>(3) || reinterpret_cast<unsigned char>(esi5->f96) > reinterpret_cast<unsigned char>(esi5->f120)) {
            if (!esi5->f104) {
                esi5->f108 = esi5->f108 + 1;
                esi5->f116 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f116) - 1);
                esi5->f104 = reinterpret_cast<void*>(1);
                goto addr_406770_2;
            } else {
                al18 = *reinterpret_cast<unsigned char*>(reinterpret_cast<uint16_t>(esi5->f108) + reinterpret_cast<uint32_t>(esi5->f56) + 0xffffffff);
                esi5->f5796[static_cast<uint32_t>(esi5->f5792)] = 0;
                *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi5->f5784) + reinterpret_cast<uint32_t>(esi5->f5792)) = al18;
                esi5->f5792 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f5792) + 1);
                eax19 = al18;
                *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax19 * 4 + 0x94) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax19 * 4 + 0x94) + 1);
                if (reinterpret_cast<int1_t>(esi5->f5792 == reinterpret_cast<int32_t>(esi5->f5788) - 1)) {
                    ecx20 = esi5->f92;
                    if (reinterpret_cast<int16_t>(ecx20) < reinterpret_cast<int16_t>(0)) {
                        eax21 = reinterpret_cast<uint16_t**>(0);
                    } else {
                        eax21 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(ecx20));
                    }
                    v22 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint16_t>(ecx20));
                    fun_407bd0(ecx20, eax21, v22);
                    edi23 = esi5->f0;
                    esi5->f92 = esi5->f108;
                    ebx24 = edi23->f28->f20;
                    if (reinterpret_cast<unsigned char>(ebx24) > reinterpret_cast<unsigned char>(edi23->f16)) {
                        ebx24 = edi23->f16;
                    }
                    if (ebx24 && (ecx25 = edi23->f28->f16, edx26 = edi23->f12, fun_408ca6(ecx25, edx26, ecx25, ebx24, v6, v3), eax27 = edi23->f28, edi23->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi23->f12) + reinterpret_cast<unsigned char>(ebx24)), eax27->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax27->f16) + reinterpret_cast<unsigned char>(ebx24)), edi23->f20 = edi23->f20 + reinterpret_cast<unsigned char>(ebx24), edi23->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi23->f16) - reinterpret_cast<unsigned char>(ebx24)), edi23->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi23->f28->f20) - reinterpret_cast<unsigned char>(ebx24)), !edi23->f28->f20)) {
                        edi23->f28->f16 = edi23->f28->f8;
                    }
                }
                esi5->f108 = esi5->f108 + 1;
                ecx28 = esi5->f0;
                esi5->f116 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f116) - 1);
                zf29 = ecx28->f16 == 0;
            }
        } else {
            edi30 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) + reinterpret_cast<uint32_t>(esi5->f116) + 0xfffffffd);
            al31 = esi5->f120;
            ecx32 = reinterpret_cast<uint16_t>(reinterpret_cast<uint16_t>(esi5->f108) - esi5->f100) - 1;
            esi5->f5796[static_cast<uint32_t>(esi5->f5792)] = *reinterpret_cast<int16_t*>(&ecx32);
            al33 = reinterpret_cast<unsigned char>(reinterpret_cast<unsigned char>(al31) - 3);
            *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi5->f5784) + reinterpret_cast<uint32_t>(esi5->f5792)) = al33;
            esi5->f5792 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f5792) + 1);
            edx34 = *reinterpret_cast<unsigned char*>(al33 + 0x40d0d8);
            *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + edx34 * 4 + 0x498) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + edx34 * 4 + 0x498) + 1);
            ecx35 = ecx32 + 0xffff;
            if (*reinterpret_cast<uint16_t*>(&ecx35) >= 0x100) {
                eax36 = *reinterpret_cast<unsigned char*>((static_cast<uint32_t>(*reinterpret_cast<uint16_t*>(&ecx35)) >> 7) + 0x40cfd8);
            } else {
                eax36 = *reinterpret_cast<unsigned char*>(*reinterpret_cast<uint16_t*>(&ecx35) + 0x40ced8);
            }
            *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax36 * 4 + 0x988) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax36 * 4 + 0x988) + 1);
            ecx37 = 0;
            eax38 = esi5->f120;
            *reinterpret_cast<unsigned char*>(&ecx37) = reinterpret_cast<uint1_t>(esi5->f5792 == reinterpret_cast<int32_t>(esi5->f5788) - 1);
            esi5->f116 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f116) + (1 - reinterpret_cast<unsigned char>(eax38)));
            esi5->f120 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(eax38) + 0xfffffffe);
            v39 = ecx37;
            do {
                esi5->f108 = esi5->f108 + 1;
                edx40 = esi5->f108;
                if (reinterpret_cast<uint16_t>(edx40) <= reinterpret_cast<uint16_t>(edi30)) {
                    ecx41 = esi5->f88;
                    ebx42 = esi5->f52;
                    eax43 = (esi5->f72 << *reinterpret_cast<unsigned char*>(&ecx41) ^ static_cast<uint32_t>(*reinterpret_cast<unsigned char*>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(edx40) + 2))) & esi5->f84;
                    ecx44 = esi5->f68;
                    esi5->f72 = eax43;
                    eax45 = reinterpret_cast<uint16_t>(ecx44[eax43]);
                    esi5->f64[ebx42 & reinterpret_cast<uint16_t>(edx40)] = *reinterpret_cast<uint16_t***>(&eax45);
                    eax46 = reinterpret_cast<uint16_t>(esi5->f108);
                    esi5->f68[esi5->f72] = *reinterpret_cast<uint16_t***>(&eax46);
                }
                esi5->f120 = reinterpret_cast<void*>(reinterpret_cast<unsigned char>(esi5->f120) - 1);
            } while (esi5->f120);
            esi5->f108 = esi5->f108 + 1;
            eax47 = esi5->f108;
            esi5->f104 = reinterpret_cast<void*>(0);
            esi5->f96 = reinterpret_cast<void*>(2);
            if (!v39) 
                goto addr_406770_2;
            if (reinterpret_cast<int16_t>(esi5->f92) < reinterpret_cast<int16_t>(0)) {
                ecx48 = reinterpret_cast<uint16_t**>(0);
            } else {
                ecx48 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(esi5->f92));
            }
            v49 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(eax47) - reinterpret_cast<uint16_t>(esi5->f92));
            fun_407bd0(ecx48, ecx48, v49);
            edi50 = esi5->f0;
            esi5->f92 = esi5->f108;
            ebx51 = edi50->f28->f20;
            ecx52 = edi50->f16;
            if (reinterpret_cast<unsigned char>(ebx51) > reinterpret_cast<unsigned char>(ecx52)) {
                ebx51 = ecx52;
            }
            if (ebx51 && (edx53 = edi50->f28->f16, eax54 = edi50->f12, fun_408ca6(ecx52, eax54, edx53, ebx51, v6, v3), eax55 = edi50->f28, edi50->f12 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi50->f12) + reinterpret_cast<unsigned char>(ebx51)), eax55->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(eax55->f16) + reinterpret_cast<unsigned char>(ebx51)), edi50->f20 = edi50->f20 + reinterpret_cast<unsigned char>(ebx51), edi50->f16 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi50->f16) - reinterpret_cast<unsigned char>(ebx51)), edi50->f28->f20 = reinterpret_cast<struct s0*>(reinterpret_cast<unsigned char>(edi50->f28->f20) - reinterpret_cast<unsigned char>(ebx51)), !edi50->f28->f20)) {
                edi50->f28->f16 = edi50->f28->f8;
            }
            zf29 = esi5->f0->f16 == 0;
        }
    } while (!zf29);
    return 0;
    addr_406b12_6:
    if (esi5->f104) {
        al56 = *reinterpret_cast<unsigned char*>(reinterpret_cast<uint16_t>(esi5->f108) + reinterpret_cast<uint32_t>(esi5->f56) + 0xffffffff);
        esi5->f5796[static_cast<uint32_t>(esi5->f5792)] = 0;
        *reinterpret_cast<unsigned char*>(reinterpret_cast<int32_t>(esi5->f5784) + reinterpret_cast<uint32_t>(esi5->f5792)) = al56;
        esi5->f5792 = reinterpret_cast<void*>(reinterpret_cast<uint32_t>(esi5->f5792) + 1);
        eax57 = al56;
        *reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax57 * 4 + 0x94) = reinterpret_cast<int16_t>(*reinterpret_cast<int16_t*>(reinterpret_cast<int32_t>(esi5) + eax57 * 4 + 0x94) + 1);
        esi5->f104 = reinterpret_cast<void*>(0);
    }
    ecx58 = esi5->f92;
    if (reinterpret_cast<int16_t>(ecx58) < reinterpret_cast<int16_t>(0)) {
        eax59 = reinterpret_cast<uint16_t**>(0);
    } else {
        eax59 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint32_t>(esi5->f56) + reinterpret_cast<uint16_t>(ecx58));
    }
    v60 = reinterpret_cast<uint16_t**>(reinterpret_cast<uint16_t>(esi5->f108) - reinterpret_cast<uint16_t>(ecx58));
    fun_407bd0(ecx58, eax59, v60);
    esi5->f92 = esi5->f108;
    fun_405ed0();
    eax61 = reinterpret_cast<struct s0*>(0);
    if (esi5->f0->f16) {
        *reinterpret_cast<unsigned char*>(&eax61) = reinterpret_cast<uint1_t>(a2 == 4);
        return reinterpret_cast<unsigned char>(eax61) + reinterpret_cast<unsigned char>(eax61) + 1;
    } else {
        *reinterpret_cast<unsigned char*>(&eax61) = reinterpret_cast<uint1_t>(a2 != 4);
        return reinterpret_cast<unsigned char>(eax61) - 1 & 2;
    }
}

int32_t fun_4088a0(int32_t ecx, unsigned char a2) {
    if (a2 & 1) {
        _3_YAXPAX_Z(ecx);
    }
    return ecx;
}

/*
 * ?what@exception@std@@UBEPBDXZ
 * public: virtual char const * __thiscall std::exception::what(void)const
 */
int32_t what_exception_std_UBEPBDXZ = 0xebf4;

void fun_4088d4() {
    goto what_exception_std_UBEPBDXZ;
}

int32_t* fun_4089a8(int32_t* ecx, unsigned char a2) {
    int32_t* eax3;
    int32_t* esi4;
    int32_t v5;

    if (!(a2 & 2)) {
        fun_4091dc();
        if (a2 & 1) {
            fun_4089a2();
        }
        eax3 = ecx;
    } else {
        esi4 = ecx - 1;
        v5 = *esi4;
        fun_40893e(ecx, 12, v5, fun_4091dc);
        if (a2 & 1) {
            fun_4089a2();
        }
        eax3 = esi4;
    }
    return eax3;
}

int32_t g423dc8;

int32_t g423dc4;

int32_t g423a94 = 0;

int32_t __getmainargs = 0xed90;

int32_t g423a90 = 0;

void fun_4089fa(int32_t ecx) {
    int32_t eax2;
    int32_t v3;
    int32_t eax4;

    fun_408d4d(ecx, fun_408f6a);
    eax2 = g423dc8;
    v3 = g423dc4;
    g423a94 = eax2;
    eax4 = reinterpret_cast<int32_t>(__getmainargs(0x423a80, 0x423a88, 0x423a84, v3, 0x423a94));
    g423a90 = eax4;
    if (eax4 < 0) {
        fun_408f3e();
    }
    return;
}

/* (image base) */
int16_t image_base_;

int32_t g40003c;

int32_t __set_app_type = 0xee26;

int32_t g423dd0;

int32_t* _fmode = reinterpret_cast<int32_t*>(0xee1c);

int32_t* _commode = reinterpret_cast<int32_t*>(0xee10);

int32_t g423dcc;

int32_t g41003c = 1;

int32_t __setusermatherr = 0xedfc;

int32_t g410038 = -2;

int32_t _configthreadlocale = 0xede6;

void fun_408bce() {
    int1_t zf1;
    int32_t eax2;
    int32_t eax3;
    int32_t ecx4;
    int32_t* eax5;
    int32_t ecx6;
    int32_t* eax7;
    int32_t* eax8;
    int32_t ecx9;
    int1_t zf10;
    int1_t zf11;

    zf1 = image_base_ == 0x5a4d;
    if (!zf1 || ((eax2 = g40003c, *reinterpret_cast<int32_t*>(eax2 + 0x400000) != 0x4550) || (*reinterpret_cast<int16_t*>(eax2 + 0x400018) != 0x10b || *reinterpret_cast<uint32_t*>(eax2 + 0x400074) <= 14))) {
        eax3 = 0;
    } else {
        ecx4 = 0;
        *reinterpret_cast<unsigned char*>(&ecx4) = reinterpret_cast<uint1_t>(!!*reinterpret_cast<int32_t*>(eax2 + 0x4000e8));
        eax3 = ecx4;
    }
    g423a8c = eax3;
    __set_app_type();
    eax5 = reinterpret_cast<int32_t*>(EncodePointer(1));
    ecx6 = g423dd0;
    g4332a4 = eax5;
    g4332a8 = eax5;
    eax7 = _fmode;
    *eax7 = ecx6;
    eax8 = _commode;
    ecx9 = g423dcc;
    *eax8 = ecx9;
    fun_408f44();
    fun_409120();
    zf10 = g41003c == 0;
    if (zf10) {
        __setusermatherr();
        ecx9 = reinterpret_cast<int32_t>(fun_409120);
    }
    fun_4090f8(ecx9);
    zf11 = g410038 == -1;
    if (zf11) {
        _configthreadlocale(ecx9);
    }
    goto 0xff;
}

int32_t g4332ac;

int32_t HeapSetInformation = 0xef26;

struct s284 {
    signed char[4] pad4;
    int32_t f4;
};

struct s284* g18;

int32_t InterlockedCompareExchange = 0xef08;

int32_t Sleep = 0xef00;

int32_t g43329c;

int32_t InterlockedExchange = 0xeeea;

int32_t g4332b0;

int32_t g423a84 = 0;

int32_t* __initenv = reinterpret_cast<int32_t*>(0xedc0);

struct s261* g423a88 = reinterpret_cast<struct s261*>(0);

int32_t g423a80 = 0;

int32_t exit = 0xed34;

void fun_408c88() {
    int32_t* v1;
    int1_t zf2;
    int32_t ebp3;
    struct s284* eax4;
    int32_t esi5;
    int32_t ebp6;
    int32_t eax7;
    int32_t eax8;
    int32_t eax9;
    int32_t eax10;
    int32_t ecx11;
    int32_t ebp12;
    int32_t eax13;
    int32_t ebp14;
    int1_t zf15;
    uint32_t eax16;
    int32_t eax17;
    int32_t* ecx18;
    int32_t v19;
    struct s261* v20;
    int32_t v21;
    int32_t eax22;
    int1_t zf23;
    int32_t ebp24;
    int32_t ebp25;
    int32_t ebp26;

    v1 = reinterpret_cast<int32_t*>(__return_address());
    fun_409123(v1);
    fun_408e70(0x40e848, 16, v1);
    zf2 = g4332ac == 0;
    if (zf2) {
        HeapSetInformation(0, 1, 0, 0, 0x40e848, 16, v1);
    }
    *reinterpret_cast<int32_t*>(ebp3 - 4) = 0;
    eax4 = g18;
    esi5 = eax4->f4;
    *reinterpret_cast<int32_t*>(ebp6 - 28) = 0;
    while (eax7 = reinterpret_cast<int32_t>(InterlockedCompareExchange(0x4332a0, esi5, 0, 0x40e848, 16, v1)), !!eax7) {
        if (eax7 == esi5) 
            goto addr_408a8b_7;
        Sleep(0x3e8, 0x4332a0, esi5, 0, 0x40e848, 16, v1);
    }
    addr_408aa3_10:
    eax8 = g43329c;
    if (eax8 != 1) {
        eax9 = g43329c;
        if (eax9) {
            g423a9c = 1;
        } else {
            g43329c = 1;
            eax10 = fun_4090f2();
            ecx11 = 0x40a17c;
            if (eax10) {
                *reinterpret_cast<int32_t*>(ebp12 - 4) = -2;
                goto 0x408bc8;
            }
        }
    } else {
        fun_408f3e();
        ecx11 = 31;
    }
    eax13 = g43329c;
    if (eax13 == 1) {
        fun_4090ec(ecx11);
        ecx11 = 0x40a16c;
        g43329c = 2;
    }
    if (!*reinterpret_cast<int32_t*>(ebp14 - 28)) {
        InterlockedExchange(ecx11, 0x4332a0, 0, 0x4332a0, esi5, 0, 0x40e848, 16, v1);
    }
    zf15 = g4332b0 == 0;
    if (!zf15 && (eax16 = fun_409030(ecx11, 0x4332b0, 0x4332a0, esi5, 0, 0x40e848, 16, v1), !!eax16)) {
        g4332b0(0x4332b0, 0, 2, 0, 0x4332a0, esi5, 0, 0x40e848, 16, v1);
    }
    eax17 = g423a84;
    ecx18 = __initenv;
    *ecx18 = eax17;
    v19 = g423a84;
    v20 = g423a88;
    v21 = g423a80;
    eax22 = fun_401c70(ecx18, v21, v20, v19, 0x4332a0, esi5, 0, 0x40e848, 16, v1);
    g423a98 = eax22;
    zf23 = g423a8c == 0;
    if (!zf23) 
        goto 0x408bae;
    exit();
    *reinterpret_cast<int32_t*>(ebp24 - 32) = ***reinterpret_cast<int32_t***>(ebp25 - 20);
    fun_408f90();
    goto eax22;
    addr_408a8b_7:
    *reinterpret_cast<int32_t*>(ebp26 - 28) = 1;
    goto addr_408aa3_10;
}

struct s285 {
    int32_t f0;
    signed char[12] pad16;
    int32_t f16;
    int32_t f20;
};

int32_t fun_408eee(struct s285** a1);

void fun_408f30() {
    SetUnhandledExceptionFilter();
    goto fun_408eee;
}

void fun_4090ce() {
}

void fun_4092b0(int32_t ecx) {
    goto fun_409280;
}

int32_t** g433298;

void fun_409380() {
    int32_t** eax1;

    eax1 = g433294;
    g433298 = eax1;
    return;
}

void fun_409437() {
    signed char* eax1;
    signed char* eax2;
    signed char al3;
    signed char* eax4;
    signed char* eax5;
    signed char al6;
    signed char* eax7;
    signed char* eax8;
    signed char al9;
    signed char* eax10;
    signed char* eax11;
    signed char al12;
    signed char* eax13;
    signed char* eax14;
    signed char al15;
    signed char* eax16;
    signed char* eax17;
    signed char al18;
    signed char* eax19;
    signed char* eax20;
    signed char al21;
    signed char* eax22;
    signed char* eax23;
    signed char al24;
    signed char* eax25;
    signed char* eax26;
    signed char al27;
    signed char* eax28;
    signed char* eax29;
    signed char al30;
    signed char* eax31;
    signed char* eax32;
    signed char al33;
    signed char* eax34;
    signed char* eax35;
    signed char al36;
    signed char* eax37;
    signed char* eax38;
    signed char al39;
    signed char* eax40;
    signed char* eax41;
    signed char al42;
    signed char* eax43;
    signed char* eax44;
    signed char al45;
    signed char* eax46;
    signed char* eax47;
    signed char al48;
    signed char* eax49;
    signed char* eax50;
    signed char al51;
    signed char* eax52;
    signed char* eax53;
    signed char al54;
    signed char* eax55;
    signed char* eax56;
    signed char al57;
    signed char* eax58;
    signed char* eax59;
    signed char al60;
    signed char* eax61;
    signed char* eax62;
    signed char al63;
    signed char* eax64;
    signed char* eax65;
    signed char al66;
    signed char* eax67;
    signed char* eax68;
    signed char al69;
    signed char* eax70;
    signed char* eax71;
    signed char al72;
    signed char* eax73;
    signed char* eax74;
    signed char al75;
    signed char* eax76;
    signed char* eax77;
    signed char al78;
    signed char* eax79;
    signed char* eax80;
    signed char al81;
    signed char* eax82;
    signed char* eax83;
    signed char al84;
    signed char* eax85;
    signed char* eax86;
    signed char al87;
    signed char* eax88;
    signed char* eax89;
    signed char al90;
    signed char* eax91;
    signed char* eax92;
    signed char al93;
    signed char* eax94;
    signed char* eax95;
    signed char al96;
    signed char* eax97;
    signed char* eax98;
    signed char al99;
    signed char* eax100;
    signed char* eax101;
    signed char al102;
    signed char* eax103;
    signed char* eax104;
    signed char al105;
    signed char* eax106;
    signed char* eax107;
    signed char al108;
    signed char* eax109;
    signed char* eax110;
    signed char al111;
    signed char* eax112;
    signed char* eax113;
    signed char al114;
    signed char* eax115;
    signed char* eax116;
    signed char al117;
    signed char* eax118;
    signed char* eax119;
    signed char al120;
    signed char* eax121;
    signed char* eax122;
    signed char al123;
    signed char* eax124;
    signed char* eax125;
    signed char al126;
    signed char* eax127;
    signed char* eax128;
    signed char al129;
    signed char* eax130;
    signed char* eax131;
    signed char al132;
    signed char* eax133;
    signed char* eax134;
    signed char al135;
    signed char* eax136;
    signed char* eax137;
    signed char al138;
    signed char* eax139;
    signed char* eax140;
    signed char al141;
    signed char* eax142;
    signed char* eax143;
    signed char al144;
    signed char* eax145;
    signed char* eax146;
    signed char al147;
    signed char* eax148;
    signed char* eax149;
    signed char al150;
    signed char* eax151;
    signed char* eax152;
    signed char al153;
    signed char* eax154;
    signed char* eax155;
    signed char al156;
    signed char* eax157;
    signed char* eax158;
    signed char al159;
    signed char* eax160;
    signed char* eax161;
    signed char al162;
    signed char* eax163;
    signed char* eax164;
    signed char al165;
    signed char* eax166;
    signed char* eax167;
    signed char al168;
    signed char* eax169;
    signed char* eax170;
    signed char al171;
    signed char* eax172;
    signed char* eax173;
    signed char al174;
    signed char* eax175;
    signed char* eax176;
    signed char al177;
    signed char* eax178;
    signed char* eax179;
    signed char al180;
    signed char* eax181;
    signed char* eax182;
    signed char al183;
    signed char* eax184;
    signed char* eax185;
    signed char al186;
    signed char* eax187;
    signed char* eax188;
    signed char al189;
    signed char* eax190;
    signed char* eax191;
    signed char al192;
    signed char* eax193;
    signed char* eax194;
    signed char al195;
    signed char* eax196;
    signed char* eax197;
    signed char al198;
    signed char* eax199;
    signed char* eax200;
    signed char al201;
    signed char* eax202;
    signed char* eax203;
    signed char al204;
    signed char* eax205;
    signed char* eax206;
    signed char al207;
    signed char* eax208;
    signed char* eax209;
    signed char al210;
    signed char* eax211;
    signed char* eax212;
    signed char al213;
    signed char* eax214;
    signed char* eax215;
    signed char al216;
    signed char* eax217;
    signed char* eax218;
    signed char al219;
    signed char* eax220;
    signed char* eax221;
    signed char al222;
    signed char* eax223;
    signed char* eax224;
    signed char al225;
    signed char* eax226;
    signed char* eax227;
    signed char al228;
    signed char* eax229;
    signed char* eax230;
    signed char al231;
    signed char* eax232;
    signed char* eax233;
    signed char al234;
    signed char* eax235;
    signed char* eax236;
    signed char al237;
    signed char* eax238;
    signed char* eax239;
    signed char al240;
    signed char* eax241;
    signed char* eax242;
    signed char al243;
    signed char* eax244;
    signed char* eax245;
    signed char al246;
    signed char* eax247;
    signed char* eax248;
    signed char al249;
    signed char* eax250;
    signed char* eax251;
    signed char al252;
    signed char* eax253;
    signed char* eax254;
    signed char al255;
    signed char* eax256;
    signed char* eax257;
    signed char al258;
    signed char* eax259;
    signed char* eax260;
    signed char al261;
    signed char* eax262;
    signed char* eax263;
    signed char al264;
    signed char* eax265;
    signed char* eax266;
    signed char al267;
    signed char* eax268;
    signed char* eax269;
    signed char al270;
    signed char* eax271;
    signed char* eax272;
    signed char al273;
    signed char* eax274;
    signed char* eax275;
    signed char al276;
    signed char* eax277;
    signed char* eax278;
    signed char al279;
    signed char* eax280;
    signed char* eax281;
    signed char al282;
    signed char* eax283;
    signed char* eax284;
    signed char al285;
    signed char* eax286;
    signed char* eax287;
    signed char al288;
    signed char* eax289;
    signed char* eax290;
    signed char al291;
    signed char* eax292;
    signed char* eax293;
    signed char al294;
    signed char* eax295;
    signed char* eax296;
    signed char al297;
    signed char* eax298;
    signed char* eax299;
    signed char al300;
    signed char* eax301;
    signed char* eax302;
    signed char al303;
    signed char* eax304;
    signed char* eax305;
    signed char al306;
    signed char* eax307;
    signed char* eax308;
    signed char al309;
    signed char* eax310;
    signed char* eax311;
    signed char al312;
    signed char* eax313;
    signed char* eax314;
    signed char al315;
    signed char* eax316;
    signed char* eax317;
    signed char al318;
    signed char* eax319;
    signed char* eax320;
    signed char al321;
    signed char* eax322;
    signed char* eax323;
    signed char al324;
    signed char* eax325;
    signed char* eax326;
    signed char al327;
    signed char* eax328;
    signed char* eax329;
    signed char al330;
    signed char* eax331;
    signed char* eax332;
    signed char al333;
    signed char* eax334;
    signed char* eax335;
    signed char al336;
    signed char* eax337;
    signed char* eax338;
    signed char al339;
    signed char* eax340;
    signed char* eax341;
    signed char al342;
    signed char* eax343;
    signed char* eax344;
    signed char al345;
    signed char* eax346;
    signed char* eax347;
    signed char al348;
    signed char* eax349;
    signed char* eax350;
    signed char al351;
    signed char* eax352;
    signed char* eax353;
    signed char al354;
    signed char* eax355;
    signed char* eax356;
    signed char al357;
    signed char* eax358;
    signed char* eax359;
    signed char al360;
    signed char* eax361;
    signed char* eax362;
    signed char al363;
    signed char* eax364;
    signed char* eax365;
    signed char al366;
    signed char* eax367;
    signed char* eax368;
    signed char al369;
    signed char* eax370;
    signed char* eax371;
    signed char al372;
    signed char* eax373;
    signed char* eax374;
    signed char al375;
    signed char* eax376;
    signed char* eax377;
    signed char al378;
    signed char* eax379;
    signed char* eax380;
    signed char al381;
    signed char* eax382;
    signed char* eax383;
    signed char al384;
    signed char* eax385;
    signed char* eax386;
    signed char al387;
    signed char* eax388;
    signed char* eax389;
    signed char al390;
    signed char* eax391;
    signed char* eax392;
    signed char al393;
    signed char* eax394;
    signed char* eax395;
    signed char al396;
    signed char* eax397;
    signed char* eax398;
    signed char al399;
    signed char* eax400;
    signed char* eax401;
    signed char al402;
    signed char* eax403;
    signed char* eax404;
    signed char al405;
    signed char* eax406;
    signed char* eax407;
    signed char al408;
    signed char* eax409;
    signed char* eax410;
    signed char al411;
    signed char* eax412;
    signed char* eax413;
    signed char al414;
    signed char* eax415;
    signed char* eax416;
    signed char al417;
    signed char* eax418;
    signed char* eax419;
    signed char al420;
    signed char* eax421;
    signed char* eax422;
    signed char al423;
    signed char* eax424;
    signed char* eax425;
    signed char al426;
    signed char* eax427;
    signed char* eax428;
    signed char al429;
    signed char* eax430;
    signed char* eax431;
    signed char al432;
    signed char* eax433;
    signed char* eax434;
    signed char al435;
    signed char* eax436;
    signed char* eax437;
    signed char al438;
    signed char* eax439;
    signed char* eax440;
    signed char al441;
    signed char* eax442;
    signed char* eax443;
    signed char al444;
    signed char* eax445;
    signed char* eax446;
    signed char al447;
    signed char* eax448;
    signed char* eax449;
    signed char al450;
    signed char* eax451;
    signed char* eax452;
    signed char al453;
    signed char* eax454;
    signed char* eax455;
    signed char al456;
    signed char* eax457;
    signed char* eax458;
    signed char al459;
    signed char* eax460;
    signed char* eax461;
    signed char al462;
    signed char* eax463;
    signed char* eax464;
    signed char al465;
    signed char* eax466;
    signed char* eax467;
    signed char al468;
    signed char* eax469;
    signed char* eax470;
    signed char al471;
    signed char* eax472;
    signed char* eax473;
    signed char al474;
    signed char* eax475;
    signed char* eax476;
    signed char al477;
    signed char* eax478;
    signed char* eax479;
    signed char al480;
    signed char* eax481;
    signed char* eax482;
    signed char al483;
    signed char* eax484;
    signed char* eax485;
    signed char al486;
    signed char* eax487;
    signed char* eax488;
    signed char al489;
    signed char* eax490;
    signed char* eax491;
    signed char al492;
    signed char* eax493;
    signed char* eax494;
    signed char al495;
    signed char* eax496;
    signed char* eax497;
    signed char al498;
    signed char* eax499;
    signed char* eax500;
    signed char al501;
    signed char* eax502;
    signed char* eax503;
    signed char al504;
    signed char* eax505;
    signed char* eax506;
    signed char al507;
    signed char* eax508;
    signed char* eax509;
    signed char al510;
    signed char* eax511;
    signed char* eax512;
    signed char al513;
    signed char* eax514;
    signed char* eax515;
    signed char al516;
    signed char* eax517;
    signed char* eax518;
    signed char al519;
    signed char* eax520;
    signed char* eax521;
    signed char al522;
    signed char* eax523;
    signed char* eax524;
    signed char al525;
    signed char* eax526;
    signed char* eax527;
    signed char al528;
    signed char* eax529;
    signed char* eax530;
    signed char al531;
    signed char* eax532;
    signed char* eax533;
    signed char al534;
    signed char* eax535;
    signed char* eax536;
    signed char al537;
    signed char* eax538;
    signed char* eax539;
    signed char al540;
    signed char* eax541;
    signed char* eax542;
    signed char al543;
    signed char* eax544;
    signed char* eax545;
    signed char al546;
    signed char* eax547;
    signed char* eax548;
    signed char al549;
    signed char* eax550;
    signed char* eax551;
    signed char al552;
    signed char* eax553;
    signed char* eax554;
    signed char al555;
    signed char* eax556;
    signed char* eax557;
    signed char al558;
    signed char* eax559;
    signed char* eax560;
    signed char al561;
    signed char* eax562;
    signed char* eax563;
    signed char al564;
    signed char* eax565;
    signed char* eax566;
    signed char al567;
    signed char* eax568;
    signed char* eax569;
    signed char al570;
    signed char* eax571;
    signed char* eax572;
    signed char al573;
    signed char* eax574;
    signed char* eax575;
    signed char al576;
    signed char* eax577;
    signed char* eax578;
    signed char al579;
    signed char* eax580;
    signed char* eax581;
    signed char al582;
    signed char* eax583;
    signed char* eax584;
    signed char al585;
    signed char* eax586;
    signed char* eax587;
    signed char al588;
    signed char* eax589;
    signed char* eax590;
    signed char al591;
    signed char* eax592;
    signed char* eax593;
    signed char al594;
    signed char* eax595;
    signed char* eax596;
    signed char al597;
    signed char* eax598;
    signed char* eax599;
    signed char al600;
    signed char* eax601;
    signed char* eax602;
    signed char al603;
    signed char* eax604;
    signed char* eax605;
    signed char al606;
    signed char* eax607;
    signed char* eax608;
    signed char al609;
    signed char* eax610;
    signed char* eax611;
    signed char al612;
    signed char* eax613;
    signed char* eax614;
    signed char al615;
    signed char* eax616;
    signed char* eax617;
    signed char al618;
    signed char* eax619;
    signed char* eax620;
    signed char al621;
    signed char* eax622;
    signed char* eax623;
    signed char al624;
    signed char* eax625;
    signed char* eax626;
    signed char al627;
    signed char* eax628;
    signed char* eax629;
    signed char al630;
    signed char* eax631;
    signed char* eax632;
    signed char al633;
    signed char* eax634;
    signed char* eax635;
    signed char al636;
    signed char* eax637;
    signed char* eax638;
    signed char al639;
    signed char* eax640;
    signed char* eax641;
    signed char al642;
    signed char* eax643;
    signed char* eax644;
    signed char al645;
    signed char* eax646;
    signed char* eax647;
    signed char al648;
    signed char* eax649;
    signed char* eax650;
    signed char al651;
    signed char* eax652;
    signed char* eax653;
    signed char al654;
    signed char* eax655;
    signed char* eax656;
    signed char al657;
    signed char* eax658;
    signed char* eax659;
    signed char al660;
    signed char* eax661;
    signed char* eax662;
    signed char al663;
    signed char* eax664;
    signed char* eax665;
    signed char al666;
    signed char* eax667;
    signed char* eax668;
    signed char al669;
    signed char* eax670;
    signed char* eax671;
    signed char al672;
    signed char* eax673;
    signed char* eax674;
    signed char al675;
    signed char* eax676;
    signed char* eax677;
    signed char al678;
    signed char* eax679;
    signed char* eax680;
    signed char al681;
    signed char* eax682;
    signed char* eax683;
    signed char al684;

    *eax1 = reinterpret_cast<signed char>(*eax2 + al3);
    *eax4 = reinterpret_cast<signed char>(*eax5 + al6);
    *eax7 = reinterpret_cast<signed char>(*eax8 + al9);
    *eax10 = reinterpret_cast<signed char>(*eax11 + al12);
    *eax13 = reinterpret_cast<signed char>(*eax14 + al15);
    *eax16 = reinterpret_cast<signed char>(*eax17 + al18);
    *eax19 = reinterpret_cast<signed char>(*eax20 + al21);
    *eax22 = reinterpret_cast<signed char>(*eax23 + al24);
    *eax25 = reinterpret_cast<signed char>(*eax26 + al27);
    *eax28 = reinterpret_cast<signed char>(*eax29 + al30);
    *eax31 = reinterpret_cast<signed char>(*eax32 + al33);
    *eax34 = reinterpret_cast<signed char>(*eax35 + al36);
    *eax37 = reinterpret_cast<signed char>(*eax38 + al39);
    *eax40 = reinterpret_cast<signed char>(*eax41 + al42);
    *eax43 = reinterpret_cast<signed char>(*eax44 + al45);
    *eax46 = reinterpret_cast<signed char>(*eax47 + al48);
    *eax49 = reinterpret_cast<signed char>(*eax50 + al51);
    *eax52 = reinterpret_cast<signed char>(*eax53 + al54);
    *eax55 = reinterpret_cast<signed char>(*eax56 + al57);
    *eax58 = reinterpret_cast<signed char>(*eax59 + al60);
    *eax61 = reinterpret_cast<signed char>(*eax62 + al63);
    *eax64 = reinterpret_cast<signed char>(*eax65 + al66);
    *eax67 = reinterpret_cast<signed char>(*eax68 + al69);
    *eax70 = reinterpret_cast<signed char>(*eax71 + al72);
    *eax73 = reinterpret_cast<signed char>(*eax74 + al75);
    *eax76 = reinterpret_cast<signed char>(*eax77 + al78);
    *eax79 = reinterpret_cast<signed char>(*eax80 + al81);
    *eax82 = reinterpret_cast<signed char>(*eax83 + al84);
    *eax85 = reinterpret_cast<signed char>(*eax86 + al87);
    *eax88 = reinterpret_cast<signed char>(*eax89 + al90);
    *eax91 = reinterpret_cast<signed char>(*eax92 + al93);
    *eax94 = reinterpret_cast<signed char>(*eax95 + al96);
    *eax97 = reinterpret_cast<signed char>(*eax98 + al99);
    *eax100 = reinterpret_cast<signed char>(*eax101 + al102);
    *eax103 = reinterpret_cast<signed char>(*eax104 + al105);
    *eax106 = reinterpret_cast<signed char>(*eax107 + al108);
    *eax109 = reinterpret_cast<signed char>(*eax110 + al111);
    *eax112 = reinterpret_cast<signed char>(*eax113 + al114);
    *eax115 = reinterpret_cast<signed char>(*eax116 + al117);
    *eax118 = reinterpret_cast<signed char>(*eax119 + al120);
    *eax121 = reinterpret_cast<signed char>(*eax122 + al123);
    *eax124 = reinterpret_cast<signed char>(*eax125 + al126);
    *eax127 = reinterpret_cast<signed char>(*eax128 + al129);
    *eax130 = reinterpret_cast<signed char>(*eax131 + al132);
    *eax133 = reinterpret_cast<signed char>(*eax134 + al135);
    *eax136 = reinterpret_cast<signed char>(*eax137 + al138);
    *eax139 = reinterpret_cast<signed char>(*eax140 + al141);
    *eax142 = reinterpret_cast<signed char>(*eax143 + al144);
    *eax145 = reinterpret_cast<signed char>(*eax146 + al147);
    *eax148 = reinterpret_cast<signed char>(*eax149 + al150);
    *eax151 = reinterpret_cast<signed char>(*eax152 + al153);
    *eax154 = reinterpret_cast<signed char>(*eax155 + al156);
    *eax157 = reinterpret_cast<signed char>(*eax158 + al159);
    *eax160 = reinterpret_cast<signed char>(*eax161 + al162);
    *eax163 = reinterpret_cast<signed char>(*eax164 + al165);
    *eax166 = reinterpret_cast<signed char>(*eax167 + al168);
    *eax169 = reinterpret_cast<signed char>(*eax170 + al171);
    *eax172 = reinterpret_cast<signed char>(*eax173 + al174);
    *eax175 = reinterpret_cast<signed char>(*eax176 + al177);
    *eax178 = reinterpret_cast<signed char>(*eax179 + al180);
    *eax181 = reinterpret_cast<signed char>(*eax182 + al183);
    *eax184 = reinterpret_cast<signed char>(*eax185 + al186);
    *eax187 = reinterpret_cast<signed char>(*eax188 + al189);
    *eax190 = reinterpret_cast<signed char>(*eax191 + al192);
    *eax193 = reinterpret_cast<signed char>(*eax194 + al195);
    *eax196 = reinterpret_cast<signed char>(*eax197 + al198);
    *eax199 = reinterpret_cast<signed char>(*eax200 + al201);
    *eax202 = reinterpret_cast<signed char>(*eax203 + al204);
    *eax205 = reinterpret_cast<signed char>(*eax206 + al207);
    *eax208 = reinterpret_cast<signed char>(*eax209 + al210);
    *eax211 = reinterpret_cast<signed char>(*eax212 + al213);
    *eax214 = reinterpret_cast<signed char>(*eax215 + al216);
    *eax217 = reinterpret_cast<signed char>(*eax218 + al219);
    *eax220 = reinterpret_cast<signed char>(*eax221 + al222);
    *eax223 = reinterpret_cast<signed char>(*eax224 + al225);
    *eax226 = reinterpret_cast<signed char>(*eax227 + al228);
    *eax229 = reinterpret_cast<signed char>(*eax230 + al231);
    *eax232 = reinterpret_cast<signed char>(*eax233 + al234);
    *eax235 = reinterpret_cast<signed char>(*eax236 + al237);
    *eax238 = reinterpret_cast<signed char>(*eax239 + al240);
    *eax241 = reinterpret_cast<signed char>(*eax242 + al243);
    *eax244 = reinterpret_cast<signed char>(*eax245 + al246);
    *eax247 = reinterpret_cast<signed char>(*eax248 + al249);
    *eax250 = reinterpret_cast<signed char>(*eax251 + al252);
    *eax253 = reinterpret_cast<signed char>(*eax254 + al255);
    *eax256 = reinterpret_cast<signed char>(*eax257 + al258);
    *eax259 = reinterpret_cast<signed char>(*eax260 + al261);
    *eax262 = reinterpret_cast<signed char>(*eax263 + al264);
    *eax265 = reinterpret_cast<signed char>(*eax266 + al267);
    *eax268 = reinterpret_cast<signed char>(*eax269 + al270);
    *eax271 = reinterpret_cast<signed char>(*eax272 + al273);
    *eax274 = reinterpret_cast<signed char>(*eax275 + al276);
    *eax277 = reinterpret_cast<signed char>(*eax278 + al279);
    *eax280 = reinterpret_cast<signed char>(*eax281 + al282);
    *eax283 = reinterpret_cast<signed char>(*eax284 + al285);
    *eax286 = reinterpret_cast<signed char>(*eax287 + al288);
    *eax289 = reinterpret_cast<signed char>(*eax290 + al291);
    *eax292 = reinterpret_cast<signed char>(*eax293 + al294);
    *eax295 = reinterpret_cast<signed char>(*eax296 + al297);
    *eax298 = reinterpret_cast<signed char>(*eax299 + al300);
    *eax301 = reinterpret_cast<signed char>(*eax302 + al303);
    *eax304 = reinterpret_cast<signed char>(*eax305 + al306);
    *eax307 = reinterpret_cast<signed char>(*eax308 + al309);
    *eax310 = reinterpret_cast<signed char>(*eax311 + al312);
    *eax313 = reinterpret_cast<signed char>(*eax314 + al315);
    *eax316 = reinterpret_cast<signed char>(*eax317 + al318);
    *eax319 = reinterpret_cast<signed char>(*eax320 + al321);
    *eax322 = reinterpret_cast<signed char>(*eax323 + al324);
    *eax325 = reinterpret_cast<signed char>(*eax326 + al327);
    *eax328 = reinterpret_cast<signed char>(*eax329 + al330);
    *eax331 = reinterpret_cast<signed char>(*eax332 + al333);
    *eax334 = reinterpret_cast<signed char>(*eax335 + al336);
    *eax337 = reinterpret_cast<signed char>(*eax338 + al339);
    *eax340 = reinterpret_cast<signed char>(*eax341 + al342);
    *eax343 = reinterpret_cast<signed char>(*eax344 + al345);
    *eax346 = reinterpret_cast<signed char>(*eax347 + al348);
    *eax349 = reinterpret_cast<signed char>(*eax350 + al351);
    *eax352 = reinterpret_cast<signed char>(*eax353 + al354);
    *eax355 = reinterpret_cast<signed char>(*eax356 + al357);
    *eax358 = reinterpret_cast<signed char>(*eax359 + al360);
    *eax361 = reinterpret_cast<signed char>(*eax362 + al363);
    *eax364 = reinterpret_cast<signed char>(*eax365 + al366);
    *eax367 = reinterpret_cast<signed char>(*eax368 + al369);
    *eax370 = reinterpret_cast<signed char>(*eax371 + al372);
    *eax373 = reinterpret_cast<signed char>(*eax374 + al375);
    *eax376 = reinterpret_cast<signed char>(*eax377 + al378);
    *eax379 = reinterpret_cast<signed char>(*eax380 + al381);
    *eax382 = reinterpret_cast<signed char>(*eax383 + al384);
    *eax385 = reinterpret_cast<signed char>(*eax386 + al387);
    *eax388 = reinterpret_cast<signed char>(*eax389 + al390);
    *eax391 = reinterpret_cast<signed char>(*eax392 + al393);
    *eax394 = reinterpret_cast<signed char>(*eax395 + al396);
    *eax397 = reinterpret_cast<signed char>(*eax398 + al399);
    *eax400 = reinterpret_cast<signed char>(*eax401 + al402);
    *eax403 = reinterpret_cast<signed char>(*eax404 + al405);
    *eax406 = reinterpret_cast<signed char>(*eax407 + al408);
    *eax409 = reinterpret_cast<signed char>(*eax410 + al411);
    *eax412 = reinterpret_cast<signed char>(*eax413 + al414);
    *eax415 = reinterpret_cast<signed char>(*eax416 + al417);
    *eax418 = reinterpret_cast<signed char>(*eax419 + al420);
    *eax421 = reinterpret_cast<signed char>(*eax422 + al423);
    *eax424 = reinterpret_cast<signed char>(*eax425 + al426);
    *eax427 = reinterpret_cast<signed char>(*eax428 + al429);
    *eax430 = reinterpret_cast<signed char>(*eax431 + al432);
    *eax433 = reinterpret_cast<signed char>(*eax434 + al435);
    *eax436 = reinterpret_cast<signed char>(*eax437 + al438);
    *eax439 = reinterpret_cast<signed char>(*eax440 + al441);
    *eax442 = reinterpret_cast<signed char>(*eax443 + al444);
    *eax445 = reinterpret_cast<signed char>(*eax446 + al447);
    *eax448 = reinterpret_cast<signed char>(*eax449 + al450);
    *eax451 = reinterpret_cast<signed char>(*eax452 + al453);
    *eax454 = reinterpret_cast<signed char>(*eax455 + al456);
    *eax457 = reinterpret_cast<signed char>(*eax458 + al459);
    *eax460 = reinterpret_cast<signed char>(*eax461 + al462);
    *eax463 = reinterpret_cast<signed char>(*eax464 + al465);
    *eax466 = reinterpret_cast<signed char>(*eax467 + al468);
    *eax469 = reinterpret_cast<signed char>(*eax470 + al471);
    *eax472 = reinterpret_cast<signed char>(*eax473 + al474);
    *eax475 = reinterpret_cast<signed char>(*eax476 + al477);
    *eax478 = reinterpret_cast<signed char>(*eax479 + al480);
    *eax481 = reinterpret_cast<signed char>(*eax482 + al483);
    *eax484 = reinterpret_cast<signed char>(*eax485 + al486);
    *eax487 = reinterpret_cast<signed char>(*eax488 + al489);
    *eax490 = reinterpret_cast<signed char>(*eax491 + al492);
    *eax493 = reinterpret_cast<signed char>(*eax494 + al495);
    *eax496 = reinterpret_cast<signed char>(*eax497 + al498);
    *eax499 = reinterpret_cast<signed char>(*eax500 + al501);
    *eax502 = reinterpret_cast<signed char>(*eax503 + al504);
    *eax505 = reinterpret_cast<signed char>(*eax506 + al507);
    *eax508 = reinterpret_cast<signed char>(*eax509 + al510);
    *eax511 = reinterpret_cast<signed char>(*eax512 + al513);
    *eax514 = reinterpret_cast<signed char>(*eax515 + al516);
    *eax517 = reinterpret_cast<signed char>(*eax518 + al519);
    *eax520 = reinterpret_cast<signed char>(*eax521 + al522);
    *eax523 = reinterpret_cast<signed char>(*eax524 + al525);
    *eax526 = reinterpret_cast<signed char>(*eax527 + al528);
    *eax529 = reinterpret_cast<signed char>(*eax530 + al531);
    *eax532 = reinterpret_cast<signed char>(*eax533 + al534);
    *eax535 = reinterpret_cast<signed char>(*eax536 + al537);
    *eax538 = reinterpret_cast<signed char>(*eax539 + al540);
    *eax541 = reinterpret_cast<signed char>(*eax542 + al543);
    *eax544 = reinterpret_cast<signed char>(*eax545 + al546);
    *eax547 = reinterpret_cast<signed char>(*eax548 + al549);
    *eax550 = reinterpret_cast<signed char>(*eax551 + al552);
    *eax553 = reinterpret_cast<signed char>(*eax554 + al555);
    *eax556 = reinterpret_cast<signed char>(*eax557 + al558);
    *eax559 = reinterpret_cast<signed char>(*eax560 + al561);
    *eax562 = reinterpret_cast<signed char>(*eax563 + al564);
    *eax565 = reinterpret_cast<signed char>(*eax566 + al567);
    *eax568 = reinterpret_cast<signed char>(*eax569 + al570);
    *eax571 = reinterpret_cast<signed char>(*eax572 + al573);
    *eax574 = reinterpret_cast<signed char>(*eax575 + al576);
    *eax577 = reinterpret_cast<signed char>(*eax578 + al579);
    *eax580 = reinterpret_cast<signed char>(*eax581 + al582);
    *eax583 = reinterpret_cast<signed char>(*eax584 + al585);
    *eax586 = reinterpret_cast<signed char>(*eax587 + al588);
    *eax589 = reinterpret_cast<signed char>(*eax590 + al591);
    *eax592 = reinterpret_cast<signed char>(*eax593 + al594);
    *eax595 = reinterpret_cast<signed char>(*eax596 + al597);
    *eax598 = reinterpret_cast<signed char>(*eax599 + al600);
    *eax601 = reinterpret_cast<signed char>(*eax602 + al603);
    *eax604 = reinterpret_cast<signed char>(*eax605 + al606);
    *eax607 = reinterpret_cast<signed char>(*eax608 + al609);
    *eax610 = reinterpret_cast<signed char>(*eax611 + al612);
    *eax613 = reinterpret_cast<signed char>(*eax614 + al615);
    *eax616 = reinterpret_cast<signed char>(*eax617 + al618);
    *eax619 = reinterpret_cast<signed char>(*eax620 + al621);
    *eax622 = reinterpret_cast<signed char>(*eax623 + al624);
    *eax625 = reinterpret_cast<signed char>(*eax626 + al627);
    *eax628 = reinterpret_cast<signed char>(*eax629 + al630);
    *eax631 = reinterpret_cast<signed char>(*eax632 + al633);
    *eax634 = reinterpret_cast<signed char>(*eax635 + al636);
    *eax637 = reinterpret_cast<signed char>(*eax638 + al639);
    *eax640 = reinterpret_cast<signed char>(*eax641 + al642);
    *eax643 = reinterpret_cast<signed char>(*eax644 + al645);
    *eax646 = reinterpret_cast<signed char>(*eax647 + al648);
    *eax649 = reinterpret_cast<signed char>(*eax650 + al651);
    *eax652 = reinterpret_cast<signed char>(*eax653 + al654);
    *eax655 = reinterpret_cast<signed char>(*eax656 + al657);
    *eax658 = reinterpret_cast<signed char>(*eax659 + al660);
    *eax661 = reinterpret_cast<signed char>(*eax662 + al663);
    *eax664 = reinterpret_cast<signed char>(*eax665 + al666);
    *eax667 = reinterpret_cast<signed char>(*eax668 + al669);
    *eax670 = reinterpret_cast<signed char>(*eax671 + al672);
    *eax673 = reinterpret_cast<signed char>(*eax674 + al675);
    *eax676 = reinterpret_cast<signed char>(*eax677 + al678);
    *eax679 = reinterpret_cast<signed char>(*eax680 + al681);
    *eax682 = reinterpret_cast<signed char>(*eax683 + al684);
}

void fun_4088da() {
    goto _0exception_std_QAE_ABV01_Z;
}

void fun_408ec9(int32_t a1, int32_t a2, int32_t a3, int32_t a4) {
    fun_4091d6(0x410020, fun_4088c5, a1, a2, a3, a4);
    return;
}

void fun_4092c6(int32_t ecx) {
    goto fun_409280;
}

int32_t fun_40938b() {
    int32_t eax1;

    fun_4091ee(0x423e38);
    eax1 = fun_408d4d(0x423e38, fun_40942d);
    return eax1;
}

int32_t fun_408eee(struct s285** a1) {
    if ((*a1)->f0 == 0xe06d7363 && ((*a1)->f16 == 3 && ((*a1)->f20 == 0x19930520 || ((*a1)->f20 == 0x19930521 || ((*a1)->f20 == 0x19930522 || (*a1)->f20 == 0x1994000))))) {
        fun_408e6a();
    }
    return 0;
}

int32_t __CxxFrameHandler3 = 0xf092;

void fun_4092e0() {
    uint32_t ecx1;
    int32_t v2;

    ecx1 = *reinterpret_cast<uint32_t*>(v2 - 40) ^ reinterpret_cast<uint32_t>(v2 + 12);
    fun_4088c5(ecx1, __return_address());
    goto __CxxFrameHandler3;
}

uint32_t g4239d4 = 15;

int32_t g4239c0 = 0;

int32_t g4239d0 = 0;

void fun_4093b0() {
    int1_t cf1;
    int32_t eax2;

    cf1 = g4239d4 < 16;
    if (!cf1) {
        eax2 = g4239c0;
        _3_YAXPAX_Z(eax2);
    }
    g4239d4 = 15;
    g4239d0 = 0;
    *reinterpret_cast<signed char*>(&g4239c0) = 0;
    return;
}

int32_t fun_409300(int32_t ecx) {
    int32_t eax2;

    eax2 = fun_408d4d(ecx, fun_4093b0);
    return eax2;
}

int32_t fun_409310(int32_t ecx) {
    int32_t eax2;

    fun_405b90("AAD");
    eax2 = fun_408d4d(ecx, fun_4093e0);
    return eax2;
}

int32_t fun_409340(int32_t ecx) {
    int32_t** eax2;
    int32_t eax3;
    int32_t eax4;

    eax2 = reinterpret_cast<int32_t**>(_2_YAPAXI_Z(4));
    if (!eax2) {
        g433294 = reinterpret_cast<int32_t**>(0);
        eax3 = fun_408d4d(ecx, fun_409410);
        return eax3;
    } else {
        *eax2 = reinterpret_cast<int32_t*>(0x40e5c0);
        g433294 = eax2;
        eax4 = fun_408d4d(ecx, fun_409410);
        return eax4;
    }
}
