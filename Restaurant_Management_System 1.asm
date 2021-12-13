.model small
.stack 100h
.data

welcome         db 10,13,'--------Welcome to ABHHM--------',10,13,10,13

mainMenu        db 10,13,'        MAIN',10,13
                db 'Press 1 for Menu',10,13
                db 'Press 2 for Staff',10,13
                db 'Press 3 for Inventory',10,13
                db 'Press 4 for Sales',10,13
                db 'Press 5 to  Update Menu',10,13
                db 'Press 6 to return to Exit',10,13,'$'


;           MENU
; welcome message and options               
menuMenu        db 10,13,'        MENU',10,13
                db 'Press 1 for Starters',10,13
                db 'Press 2 for Main Course',10,13
                db 'Press 3 for Desert',10,13
                db 'Press 4 to return to Main',10,13,'$'

; Staff
staffMenu       db 10,13,'        Staff',10,13
                db 'Press 1 for Current Staff',10,13
                db 'Press 2 for Staff Salary',10,13
                db 'Press 3 for Staf Schedule',10,13
                db 'Press 4 to return to Main',10,13,'$'


; Inventory
inventoryMenu   db 10,13,'        INVENTORY',10,13
                db 'Press 1 for Current Inventory',10,13
                db 'Press 2 for Order Inventory',10,13
                db 'Press 3 for Add New Inventory',10,13
                db 'Press 4 to return to Main',10,13,'$'



; Sales
salesMenu       db 10,13,'        SALES',10,13
                db 'Press 1 for Current Sales',10,13
                db 'Press 2 for Last Months Sales',10,13
                db 'Press 3 for Profit',10,13
                db 'Press 4 to return to Main',10,13,'$'
                 


; Update Menu
updateMenu      db 10,13,'        UPDATE MENU',10,13
                db 'Press 1 for Add to Menu',10,13
                db 'Press 2 for Delete from Menu',10,13
                db 'Press 3 to return to Main',10,13,'$'

.code

main proc
    mov ax, @data
    mov ds,ax
    ; DataSegment Init Done!!
    
Main1:
    
    lea dx, welcome
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je Menu
    
    cmp bl,'2'
    je Staff
    
    cmp bl,'3'
    je Inventory
    
    cmp bl,'4'
    je Sales
    
    cmp bl,'5'
    je Update
    
    cmp bl,'6'
    je Exit
    
    jmp Menu
    
; FIRST LAYER INTO MAIN    

Menu:
    
    lea dx, menuMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je Starters
    
    cmp bl,'2'
    je MainCourse
    
    cmp bl,'3'
    je Deserts
    
    cmp bl,'4'
    je Main1
    
    ;jmp Main1
    
    

Staff:

    lea dx, staffMenu
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentStaff
    
    cmp bl,'2'
    je Salary
    
    cmp bl,'3'
    je Schedule
    
    cmp bl,'4'
    je Main1       
   

Inventory:

    lea dx, inventoryMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentInventory
    
    cmp bl,'2'
    je OrderInventory
    
    cmp bl,'3'
    je AddInventory
    
    cmp bl,'4'
    je Main1 

Sales:

    lea dx, salesMenu
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentSales
    
    cmp bl,'2'
    je LastMonthsSale
    
    cmp bl,'3'
    je Profit
    
    cmp bl,'4'
    je Main1 
    
    ;jmp Main1
    
Update:

    lea dx, updateMenu 
    mov ah, 9
    int 21h
    
     
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je AddToMenu
    
    cmp bl,'2'
    je DeleteFromMenu
    
    cmp bl,'3'
    je Main1 
    
    ;jmp Main1
    
; SECOND LAYER INTO EACH SUB-MENU

; 1. menu Menu Options

Starters:

MainCourse:

Deserts:


; 2. Staff Menu Options

CurrentStaff:

Salary:

Schedule:


; 3. Inverntory Menu Options

CurrentInventory:

OrderInventory:

AddInventory:


; 4. Sales Menu Options

CurrentSales:

LastMonthsSale:
    
Profit:


; 5. Update Menu Options

AddToMenu:

DeleteFromMenu:
    


;---------------------------------
    
Exit:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main