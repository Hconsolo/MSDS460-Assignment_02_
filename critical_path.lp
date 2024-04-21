\* Critical_Path *\
Minimize
OBJ: end_A + end_B + end_C + end_D + end_D1 + end_D2 + end_D3 + end_D4.0
 + end_D4.1 + end_D4.2 + end_D4.3 + end_D4.4 + end_D4.5 + end_D5 + end_D6
 + end_D7 + end_D8 + end_E + end_F + end_G + end_H
Subject To
A_duration: end_A - start_A = 20
B_duration: end_B - start_B = 40
C_duration: end_C - start_C = 20
C_predecessor_A: - end_A + start_C >= 0
D1_duration: end_D1 - start_D1 = 40
D1_predecessor_D: - end_D + start_D1 >= 0
D2_duration: end_D2 - start_D2 = 40
D2_predecessor_D1: - end_D1 + start_D2 >= 0
D3_duration: end_D3 - start_D3 = 40
D3_predecessor_D1: - end_D1 + start_D3 >= 0
D4.0_duration: end_D4.0 - start_D4.0 = 0
D4.0_predecessor_D2: - end_D2 + start_D4.0 >= 0
D4.0_predecessor_D3: - end_D3 + start_D4.0 >= 0
D4.1_duration: end_D4.1 - start_D4.1 = 150
D4.1_predecessor_D4.0: - end_D4.0 + start_D4.1 >= 0
D4.2_duration: end_D4.2 - start_D4.2 = 180
D4.2_predecessor_D4.0: - end_D4.0 + start_D4.2 >= 0
D4.3_duration: end_D4.3 - start_D4.3 = 80
D4.3_predecessor_D4.0: - end_D4.0 + start_D4.3 >= 0
D4.4_duration: end_D4.4 - start_D4.4 = 160
D4.4_predecessor_D4.0: - end_D4.0 + start_D4.4 >= 0
D4.5_duration: end_D4.5 - start_D4.5 = 0
D4.5_predecessor_D4.1: - end_D4.1 + start_D4.5 >= 0
D4.5_predecessor_D4.2: - end_D4.2 + start_D4.5 >= 0
D4.5_predecessor_D4.3: - end_D4.3 + start_D4.5 >= 0
D4.5_predecessor_D4.4: - end_D4.4 + start_D4.5 >= 0
D5_duration: end_D5 - start_D5 = 20
D5_predecessor_D4.5: - end_D4.5 + start_D5 >= 0
D6_duration: end_D6 - start_D6 = 40
D6_predecessor_D5: - end_D5 + start_D6 >= 0
D7_duration: end_D7 - start_D7 = 40
D7_predecessor_D6: - end_D6 + start_D7 >= 0
D8_duration: end_D8 - start_D8 = 20
D8_predecessor_D5: - end_D5 + start_D8 >= 0
D8_predecessor_D7: - end_D7 + start_D8 >= 0
D_duration: end_D - start_D = 0
D_predecessor_A: - end_A + start_D >= 0
E_duration: end_E - start_E = 30
E_predecessor_B: - end_B + start_E >= 0
E_predecessor_C: - end_C + start_E >= 0
F_duration: end_F - start_F = 15
F_predecessor_D8: - end_D8 + start_F >= 0
F_predecessor_E: - end_E + start_F >= 0
G_duration: end_G - start_G = 30
G_predecessor_A: - end_A + start_G >= 0
G_predecessor_D8: - end_D8 + start_G >= 0
H_duration: end_H - start_H = 15
H_predecessor_F: - end_F + start_H >= 0
H_predecessor_G: - end_G + start_H >= 0
End
