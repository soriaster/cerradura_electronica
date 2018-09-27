
_main:

;cerradura_electronica.c,46 :: 		void main() {
;cerradura_electronica.c,48 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;cerradura_electronica.c,49 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;cerradura_electronica.c,50 :: 		TRISB = 0xF0;
	MOVLW      240
	MOVWF      TRISB+0
;cerradura_electronica.c,51 :: 		TRISD = 0;
	CLRF       TRISD+0
;cerradura_electronica.c,52 :: 		PORTD.RD0=0;
	BCF        PORTD+0, 0
;cerradura_electronica.c,53 :: 		PORTD.RD1=0;
	BCF        PORTD+0, 1
;cerradura_electronica.c,54 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;cerradura_electronica.c,55 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;cerradura_electronica.c,56 :: 		km=0;
	CLRF       _km+0
;cerradura_electronica.c,58 :: 		Lcd_Init();                      // Initialize Lcd
	CALL       _Lcd_Init+0
;cerradura_electronica.c,59 :: 		Lcd_Cmd(_LCD_CLEAR);             // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,60 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);        // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,62 :: 		Lcd_Out(1,5,"Cerradura");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,63 :: 		Lcd_Out(2,4,"Electronica");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,65 :: 		delay_ms(1000);//durante 4 segundos esta activo
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;cerradura_electronica.c,67 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,68 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,69 :: 		Lcd_Out(1,2,"A Continuacion");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,70 :: 		Lcd_Out(2,3,"Ingrese Clave");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,71 :: 		delay_ms(1000);//durante 4 segundos esta activo
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;cerradura_electronica.c,74 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,75 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,77 :: 		Lcd_Out(1,1,"Tamanio de clave");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,78 :: 		Lcd_Out(2,3,"5 caracteres");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,79 :: 		delay_ms(1000);//durante 4 segundos esta activo
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;cerradura_electronica.c,81 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,82 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,84 :: 		while(km==0){
L_main3:
	MOVF       _km+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;cerradura_electronica.c,85 :: 		km=teclado();
	CALL       _teclado+0
	MOVF       R0+0, 0
	MOVWF      _km+0
;cerradura_electronica.c,86 :: 		km=elect(km);
	MOVF       R0+0, 0
	MOVWF      FARG_elect_pres+0
	CALL       _elect+0
	MOVF       R0+0, 0
	MOVWF      _km+0
;cerradura_electronica.c,87 :: 		Lcd_Out(1,5,"Presione");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,88 :: 		Lcd_Out(2,2,"Cualquier Tecla");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,89 :: 		km=teclado();
	CALL       _teclado+0
	MOVF       R0+0, 0
	MOVWF      _km+0
;cerradura_electronica.c,90 :: 		km=elect(km);
	MOVF       R0+0, 0
	MOVWF      FARG_elect_pres+0
	CALL       _elect+0
	MOVF       R0+0, 0
	MOVWF      _km+0
;cerradura_electronica.c,91 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;cerradura_electronica.c,92 :: 		}
	GOTO       L_main3
L_main4:
;cerradura_electronica.c,94 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,95 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,96 :: 		delay_ms(170);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      186
	MOVWF      R12+0
	MOVLW      139
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;cerradura_electronica.c,97 :: 		kp=0;
	CLRF       _kp+0
;cerradura_electronica.c,99 :: 		do {
L_main7:
;cerradura_electronica.c,100 :: 		validez:                        //etiqueta para mostrar clave
___main_validez:
;cerradura_electronica.c,101 :: 		Lcd_Out(1, 1,"Clave:");     // Write message text on Lcd
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,102 :: 		Lcd_Out(2, 1,"OK   :");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,105 :: 		do{
L_main10:
;cerradura_electronica.c,107 :: 		kp=teclado();
	CALL       _teclado+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;cerradura_electronica.c,108 :: 		delay_ms(75);//750
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
;cerradura_electronica.c,110 :: 		delay_ms(75);
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
;cerradura_electronica.c,114 :: 		}while(!kp); //evita que la tecla se quede pegada
	MOVF       _kp+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main10
;cerradura_electronica.c,116 :: 		kp=elect(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_elect_pres+0
	CALL       _elect+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;cerradura_electronica.c,119 :: 		if(kp!=0){
	MOVF       R0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main15
;cerradura_electronica.c,120 :: 		EEPROM_Write(i,kp);
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _kp+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;cerradura_electronica.c,121 :: 		p1=EEPROM_Read(i);     //se lee la direccion de la memoria EEPROM y se almacena en una bandera
	MOVF       _i+0, 0
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p1+0
;cerradura_electronica.c,122 :: 		Lcd_Chr(1,7+i,p1);     //se presenta el contenido de la bandera en el LCD                       //para diferentes direcciones de memoria EEPROM
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _i+0, 0
	ADDLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,124 :: 		delay_ms(200);//2000
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
;cerradura_electronica.c,125 :: 		}         //retardo que evita procesos no deseados
L_main15:
;cerradura_electronica.c,126 :: 		i++;
	INCF       _i+0, 1
;cerradura_electronica.c,127 :: 		cnt++;
	INCF       _cnt+0, 1
;cerradura_electronica.c,130 :: 		if((kp==37)||(kp==38)||(valida>3)||((kp>=97)&&(kp<=100))){
	MOVF       _kp+0, 0
	XORLW      37
	BTFSC      STATUS+0, 2
	GOTO       L__main89
	MOVF       _kp+0, 0
	XORLW      38
	BTFSC      STATUS+0, 2
	GOTO       L__main89
	MOVF       _valida+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L__main89
	MOVLW      97
	SUBWF      _kp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main90
	MOVF       _kp+0, 0
	SUBLW      100
	BTFSS      STATUS+0, 0
	GOTO       L__main90
	GOTO       L__main89
L__main90:
	GOTO       L_main21
L__main89:
;cerradura_electronica.c,131 :: 		valida++;
	INCF       _valida+0, 1
;cerradura_electronica.c,132 :: 		if((cnt==5)&&(valida>3)){ //
	MOVF       _cnt+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main24
	MOVF       _valida+0, 0
	SUBLW      3
	BTFSC      STATUS+0, 0
	GOTO       L_main24
L__main88:
;cerradura_electronica.c,133 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,134 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,135 :: 		Lcd_Out(1,6,"Repita");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,137 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
;cerradura_electronica.c,138 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,139 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,140 :: 		i=0;
	CLRF       _i+0
;cerradura_electronica.c,141 :: 		valida=0;
	CLRF       _valida+0
;cerradura_electronica.c,142 :: 		cnt=0;
	CLRF       _cnt+0
;cerradura_electronica.c,143 :: 		goto validez;
	GOTO       ___main_validez
;cerradura_electronica.c,144 :: 		}
L_main24:
;cerradura_electronica.c,145 :: 		}
L_main21:
;cerradura_electronica.c,147 :: 		if(cnt==5){
	MOVF       _cnt+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main26
;cerradura_electronica.c,148 :: 		Lcd_Chr(2, 7,EEPROM_Read(0));
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,149 :: 		Lcd_Chr(2, 8,EEPROM_Read(1));
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,150 :: 		Lcd_Chr(2, 9,EEPROM_Read(2));
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,151 :: 		Lcd_Chr(2,10,EEPROM_Read(3));
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,152 :: 		Lcd_Chr(2,11,EEPROM_Read(4));
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,153 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
;cerradura_electronica.c,154 :: 		b=0;
	CLRF       _b+0
;cerradura_electronica.c,155 :: 		}
L_main26:
;cerradura_electronica.c,156 :: 		}while(b);
	MOVF       _b+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;cerradura_electronica.c,157 :: 		repita:
___main_repita:
;cerradura_electronica.c,158 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,159 :: 		i=0;
	CLRF       _i+0
;cerradura_electronica.c,161 :: 		p2=EEPROM_Read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p2+0
;cerradura_electronica.c,162 :: 		p3=EEPROM_Read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p3+0
;cerradura_electronica.c,163 :: 		p4=EEPROM_Read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p4+0
;cerradura_electronica.c,164 :: 		p5=EEPROM_Read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p5+0
;cerradura_electronica.c,165 :: 		p6=EEPROM_Read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _p6+0
;cerradura_electronica.c,167 :: 		while(rep){
L_main28:
	MOVF       _rep+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main29
;cerradura_electronica.c,168 :: 		Lcd_Out(1,1,"Ingrese:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,169 :: 		do{
L_main30:
;cerradura_electronica.c,170 :: 		kp=teclado();
	CALL       _teclado+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;cerradura_electronica.c,171 :: 		delay_ms(75);//750
	MOVLW      195
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
;cerradura_electronica.c,172 :: 		}while(!kp);
	MOVF       _kp+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main30
;cerradura_electronica.c,173 :: 		kp=elect(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_elect_pres+0
	CALL       _elect+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;cerradura_electronica.c,174 :: 		Lcd_Chr(1,9+i,kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _i+0, 0
	ADDLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,175 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
;cerradura_electronica.c,177 :: 		oportunidad++;//variable sensor, para determinar la longitud de la clave
	INCF       _oportunidad+0, 1
;cerradura_electronica.c,178 :: 		if(oportunidad==5){
	MOVF       _oportunidad+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main35
;cerradura_electronica.c,179 :: 		Lcd_Chr(2,8,252);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      252
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;cerradura_electronica.c,180 :: 		rep=0;  //culmino el programa
	CLRF       _rep+0
;cerradura_electronica.c,181 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
;cerradura_electronica.c,182 :: 		goto final;
	GOTO       ___main_final
;cerradura_electronica.c,183 :: 		}
L_main35:
;cerradura_electronica.c,185 :: 		if(i==0){
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main37
;cerradura_electronica.c,186 :: 		if(kp!=p2){
	MOVF       _kp+0, 0
	XORWF      _p2+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main38
;cerradura_electronica.c,187 :: 		obs++;   //verifica si hay al menos uncaracter mal
	INCF       _obs+0, 1
;cerradura_electronica.c,188 :: 		}
L_main38:
;cerradura_electronica.c,189 :: 		x++;
	INCF       _x+0, 1
;cerradura_electronica.c,190 :: 		}
L_main37:
;cerradura_electronica.c,191 :: 		if(i==1){
	MOVF       _i+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main39
;cerradura_electronica.c,192 :: 		if(kp!=p3){
	MOVF       _kp+0, 0
	XORWF      _p3+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main40
;cerradura_electronica.c,193 :: 		obs++;
	INCF       _obs+0, 1
;cerradura_electronica.c,194 :: 		}
L_main40:
;cerradura_electronica.c,195 :: 		x++;
	INCF       _x+0, 1
;cerradura_electronica.c,196 :: 		}
L_main39:
;cerradura_electronica.c,197 :: 		if(i==2){
	MOVF       _i+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main41
;cerradura_electronica.c,198 :: 		if(kp!=p4){
	MOVF       _kp+0, 0
	XORWF      _p4+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main42
;cerradura_electronica.c,199 :: 		obs++;
	INCF       _obs+0, 1
;cerradura_electronica.c,200 :: 		}
L_main42:
;cerradura_electronica.c,201 :: 		x++;
	INCF       _x+0, 1
;cerradura_electronica.c,202 :: 		}
L_main41:
;cerradura_electronica.c,203 :: 		if(i==3){
	MOVF       _i+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main43
;cerradura_electronica.c,204 :: 		if(kp!=p5){
	MOVF       _kp+0, 0
	XORWF      _p5+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main44
;cerradura_electronica.c,205 :: 		obs++;
	INCF       _obs+0, 1
;cerradura_electronica.c,206 :: 		}
L_main44:
;cerradura_electronica.c,207 :: 		x++;
	INCF       _x+0, 1
;cerradura_electronica.c,208 :: 		}
L_main43:
;cerradura_electronica.c,210 :: 		if((i==4)){
	MOVF       _i+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main45
;cerradura_electronica.c,212 :: 		if(kp!=p6){
	MOVF       _kp+0, 0
	XORWF      _p6+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main46
;cerradura_electronica.c,213 :: 		obs++;
	INCF       _obs+0, 1
;cerradura_electronica.c,214 :: 		}
L_main46:
;cerradura_electronica.c,215 :: 		}
L_main45:
;cerradura_electronica.c,216 :: 		++i;
	INCF       _i+0, 1
;cerradura_electronica.c,218 :: 		if(obs>0){
	MOVF       _obs+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_main47
;cerradura_electronica.c,219 :: 		Lcd_Out(2,6,"MAL");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,220 :: 		PORTD=15;
	MOVLW      15
	MOVWF      PORTD+0
;cerradura_electronica.c,221 :: 		delay_ms(1500);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	DECFSZ     R11+0, 1
	GOTO       L_main48
	NOP
	NOP
;cerradura_electronica.c,222 :: 		PORTD.RD0=0;
	BCF        PORTD+0, 0
;cerradura_electronica.c,223 :: 		PORTD.RD1=0;
	BCF        PORTD+0, 1
;cerradura_electronica.c,224 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;cerradura_electronica.c,225 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;cerradura_electronica.c,226 :: 		error++;
	INCF       _error+0, 1
;cerradura_electronica.c,227 :: 		obs=0;
	CLRF       _obs+0
;cerradura_electronica.c,228 :: 		oportunidad=0;
	CLRF       _oportunidad+0
;cerradura_electronica.c,229 :: 		if(error==3)
	MOVF       _error+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main49
;cerradura_electronica.c,230 :: 		goto reset;
	GOTO       ___main_reset
L_main49:
;cerradura_electronica.c,232 :: 		goto repita;
	GOTO       ___main_repita
;cerradura_electronica.c,233 :: 		}
L_main47:
;cerradura_electronica.c,236 :: 		}
	GOTO       L_main28
L_main29:
;cerradura_electronica.c,237 :: 		reset:
___main_reset:
;cerradura_electronica.c,238 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,239 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;cerradura_electronica.c,240 :: 		Lcd_Out(1,3,"Resetee uC");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_cerradura_electronica+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;cerradura_electronica.c,241 :: 		final:
___main_final:
;cerradura_electronica.c,243 :: 		nop;
	NOP
;cerradura_electronica.c,246 :: 		}
	GOTO       $+0
; end of _main

_teclado:

;cerradura_electronica.c,250 :: 		char teclado(){     //elige la tecla para enviar su posicion
;cerradura_electronica.c,251 :: 		presiona=0;
	CLRF       _presiona+0
;cerradura_electronica.c,252 :: 		PORTB=0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;cerradura_electronica.c,253 :: 		RB0_bit=0;
	BCF        RB0_bit+0, 0
;cerradura_electronica.c,254 :: 		if(!RB4_bit)
	BTFSC      RB4_bit+0, 4
	GOTO       L_teclado50
;cerradura_electronica.c,255 :: 		presiona=1;//49;
	MOVLW      1
	MOVWF      _presiona+0
L_teclado50:
;cerradura_electronica.c,256 :: 		if(!RB5_bit)
	BTFSC      RB5_bit+0, 5
	GOTO       L_teclado51
;cerradura_electronica.c,257 :: 		presiona=2;//50;
	MOVLW      2
	MOVWF      _presiona+0
L_teclado51:
;cerradura_electronica.c,258 :: 		if(!RB6_bit)
	BTFSC      RB6_bit+0, 6
	GOTO       L_teclado52
;cerradura_electronica.c,259 :: 		presiona=3;//51;
	MOVLW      3
	MOVWF      _presiona+0
L_teclado52:
;cerradura_electronica.c,260 :: 		if(!RB7_bit)
	BTFSC      RB7_bit+0, 7
	GOTO       L_teclado53
;cerradura_electronica.c,261 :: 		presiona=4;//52;
	MOVLW      4
	MOVWF      _presiona+0
L_teclado53:
;cerradura_electronica.c,262 :: 		Delay_ms(5);//5ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_teclado54:
	DECFSZ     R13+0, 1
	GOTO       L_teclado54
	DECFSZ     R12+0, 1
	GOTO       L_teclado54
	NOP
	NOP
;cerradura_electronica.c,263 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;cerradura_electronica.c,266 :: 		RB1_bit=0;
	BCF        RB1_bit+0, 1
;cerradura_electronica.c,267 :: 		if(!RB4_bit){
	BTFSC      RB4_bit+0, 4
	GOTO       L_teclado55
;cerradura_electronica.c,268 :: 		presiona=5;//53;
	MOVLW      5
	MOVWF      _presiona+0
;cerradura_electronica.c,269 :: 		}
L_teclado55:
;cerradura_electronica.c,270 :: 		if(!RB5_bit){
	BTFSC      RB5_bit+0, 5
	GOTO       L_teclado56
;cerradura_electronica.c,271 :: 		presiona=6;//54;
	MOVLW      6
	MOVWF      _presiona+0
;cerradura_electronica.c,272 :: 		}
L_teclado56:
;cerradura_electronica.c,273 :: 		if(!RB6_bit)
	BTFSC      RB6_bit+0, 6
	GOTO       L_teclado57
;cerradura_electronica.c,274 :: 		presiona=7;//55;
	MOVLW      7
	MOVWF      _presiona+0
L_teclado57:
;cerradura_electronica.c,275 :: 		if(!RB7_bit)
	BTFSC      RB7_bit+0, 7
	GOTO       L_teclado58
;cerradura_electronica.c,276 :: 		presiona=8;//56;
	MOVLW      8
	MOVWF      _presiona+0
L_teclado58:
;cerradura_electronica.c,277 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_teclado59:
	DECFSZ     R13+0, 1
	GOTO       L_teclado59
	DECFSZ     R12+0, 1
	GOTO       L_teclado59
	NOP
	NOP
;cerradura_electronica.c,279 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;cerradura_electronica.c,280 :: 		RB2_bit=0;
	BCF        RB2_bit+0, 2
;cerradura_electronica.c,282 :: 		if(!RB4_bit)
	BTFSC      RB4_bit+0, 4
	GOTO       L_teclado60
;cerradura_electronica.c,283 :: 		presiona=9;//42;
	MOVLW      9
	MOVWF      _presiona+0
L_teclado60:
;cerradura_electronica.c,284 :: 		if(!RB5_bit)
	BTFSC      RB5_bit+0, 5
	GOTO       L_teclado61
;cerradura_electronica.c,285 :: 		presiona=10;//48;
	MOVLW      10
	MOVWF      _presiona+0
L_teclado61:
;cerradura_electronica.c,286 :: 		if(!RB6_bit)
	BTFSC      RB6_bit+0, 6
	GOTO       L_teclado62
;cerradura_electronica.c,287 :: 		presiona=11;//57;
	MOVLW      11
	MOVWF      _presiona+0
L_teclado62:
;cerradura_electronica.c,288 :: 		if(!RB7_bit)
	BTFSC      RB7_bit+0, 7
	GOTO       L_teclado63
;cerradura_electronica.c,289 :: 		presiona=12;//35;
	MOVLW      12
	MOVWF      _presiona+0
L_teclado63:
;cerradura_electronica.c,290 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_teclado64:
	DECFSZ     R13+0, 1
	GOTO       L_teclado64
	DECFSZ     R12+0, 1
	GOTO       L_teclado64
	NOP
	NOP
;cerradura_electronica.c,292 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;cerradura_electronica.c,293 :: 		RB3_bit=0;
	BCF        RB3_bit+0, 3
;cerradura_electronica.c,294 :: 		if(!RB4_bit)
	BTFSC      RB4_bit+0, 4
	GOTO       L_teclado65
;cerradura_electronica.c,295 :: 		presiona=13;//97;
	MOVLW      13
	MOVWF      _presiona+0
L_teclado65:
;cerradura_electronica.c,296 :: 		if(!RB5_bit)
	BTFSC      RB5_bit+0, 5
	GOTO       L_teclado66
;cerradura_electronica.c,297 :: 		presiona=14;//98;
	MOVLW      14
	MOVWF      _presiona+0
L_teclado66:
;cerradura_electronica.c,298 :: 		if(!RB6_bit)
	BTFSC      RB6_bit+0, 6
	GOTO       L_teclado67
;cerradura_electronica.c,299 :: 		presiona=15;//99;
	MOVLW      15
	MOVWF      _presiona+0
L_teclado67:
;cerradura_electronica.c,300 :: 		if(!RB7_bit)
	BTFSC      RB7_bit+0, 7
	GOTO       L_teclado68
;cerradura_electronica.c,301 :: 		presiona=16;//100;
	MOVLW      16
	MOVWF      _presiona+0
L_teclado68:
;cerradura_electronica.c,302 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_teclado69:
	DECFSZ     R13+0, 1
	GOTO       L_teclado69
	DECFSZ     R12+0, 1
	GOTO       L_teclado69
	NOP
	NOP
;cerradura_electronica.c,303 :: 		return presiona;
	MOVF       _presiona+0, 0
	MOVWF      R0+0
;cerradura_electronica.c,304 :: 		}
	RETURN
; end of _teclado

_elect:

;cerradura_electronica.c,306 :: 		char elect(char pres){
;cerradura_electronica.c,307 :: 		switch (pres) {
	GOTO       L_elect70
;cerradura_electronica.c,308 :: 		case  1: pres = 49; return pres; // 1
L_elect72:
	MOVLW      49
	MOVWF      FARG_elect_pres+0
	MOVLW      49
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,309 :: 		case  2: pres = 50; return pres; // 2
L_elect73:
	MOVLW      50
	MOVWF      FARG_elect_pres+0
	MOVLW      50
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,310 :: 		case  3: pres = 51; return pres; // 3
L_elect74:
	MOVLW      51
	MOVWF      FARG_elect_pres+0
	MOVLW      51
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,311 :: 		case  4: pres = 52; return pres; // 4
L_elect75:
	MOVLW      52
	MOVWF      FARG_elect_pres+0
	MOVLW      52
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,312 :: 		case  5: pres = 53; return pres; // 5
L_elect76:
	MOVLW      53
	MOVWF      FARG_elect_pres+0
	MOVLW      53
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,313 :: 		case  6: pres = 54; return pres; // 6
L_elect77:
	MOVLW      54
	MOVWF      FARG_elect_pres+0
	MOVLW      54
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,314 :: 		case  7: pres = 55; return pres; // 7
L_elect78:
	MOVLW      55
	MOVWF      FARG_elect_pres+0
	MOVLW      55
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,315 :: 		case  8: pres = 56; return pres; // 8
L_elect79:
	MOVLW      56
	MOVWF      FARG_elect_pres+0
	MOVLW      56
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,316 :: 		case  9: pres = 37; return pres; // %
L_elect80:
	MOVLW      37
	MOVWF      FARG_elect_pres+0
	MOVLW      37
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,317 :: 		case 10: pres = 57; return pres; // 9
L_elect81:
	MOVLW      57
	MOVWF      FARG_elect_pres+0
	MOVLW      57
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,318 :: 		case 11: pres = 48; return pres; // 0
L_elect82:
	MOVLW      48
	MOVWF      FARG_elect_pres+0
	MOVLW      48
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,319 :: 		case 12: pres = 38; return pres; // &
L_elect83:
	MOVLW      38
	MOVWF      FARG_elect_pres+0
	MOVLW      38
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,320 :: 		case 13: pres = 97; return pres; // a
L_elect84:
	MOVLW      97
	MOVWF      FARG_elect_pres+0
	MOVLW      97
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,321 :: 		case 14: pres = 98; return pres; // b
L_elect85:
	MOVLW      98
	MOVWF      FARG_elect_pres+0
	MOVLW      98
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,322 :: 		case 15: pres = 99; return pres; // c
L_elect86:
	MOVLW      99
	MOVWF      FARG_elect_pres+0
	MOVLW      99
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,323 :: 		case 16: pres =100; return pres; // d
L_elect87:
	MOVLW      100
	MOVWF      FARG_elect_pres+0
	MOVLW      100
	MOVWF      R0+0
	RETURN
;cerradura_electronica.c,324 :: 		}
L_elect70:
	MOVF       FARG_elect_pres+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_elect72
	MOVF       FARG_elect_pres+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_elect73
	MOVF       FARG_elect_pres+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_elect74
	MOVF       FARG_elect_pres+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_elect75
	MOVF       FARG_elect_pres+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_elect76
	MOVF       FARG_elect_pres+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_elect77
	MOVF       FARG_elect_pres+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_elect78
	MOVF       FARG_elect_pres+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_elect79
	MOVF       FARG_elect_pres+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_elect80
	MOVF       FARG_elect_pres+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_elect81
	MOVF       FARG_elect_pres+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_elect82
	MOVF       FARG_elect_pres+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_elect83
	MOVF       FARG_elect_pres+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_elect84
	MOVF       FARG_elect_pres+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_elect85
	MOVF       FARG_elect_pres+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_elect86
	MOVF       FARG_elect_pres+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_elect87
;cerradura_electronica.c,326 :: 		}
	RETURN
; end of _elect
